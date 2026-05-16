SELECT * FROM patient_visits;

SELECT * FROM patient_visits_staging;


-- Create staging table

CREATE TABLE patient_visits_staging
LIKE patient_visits;

INSERT patient_visits_staging
SELECT *
FROM patient_visits;


-- Find any duplicate rows -> no duplicates found

WITH duplicate_cte AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY visit_id, patient_id, visit_date, date_of_birth, patient_age, patient_sex, icd_code, cpt_code) AS row_num
FROM patient_visits_staging
)
SELECT *
FROM duplicate_cte
WHERE row_num > 1;


-- Convert visit_date data type from text to date

UPDATE patient_visits_staging
SET visit_date = STR_TO_DATE(visit_date, '%m/%d/%Y');

ALTER TABLE patient_visits_staging
MODIFY visit_date DATE;


-- Convert date_of_birth data type from text to date

UPDATE patient_visits_staging
SET date_of_birth = STR_TO_DATE(date_of_birth, '%m/%d/%Y');

ALTER TABLE patient_visits_staging
MODIFY date_of_birth DATE;


-- 1. Patient population overview
-- Group patients into age bands (0-17, 18039, 40-64, 65+) in a new column called age_band

ALTER TABLE patient_visits_staging
ADD COLUMN age_band VARCHAR(10);

UPDATE patient_visits_staging
SET age_band = CASE 
    WHEN patient_age < 18 THEN '0-17'
    WHEN patient_age < 40 THEN '18-39'
    WHEN patient_age < 65 THEN '40-64'
    ELSE '65+'
END;

-- Count of every age band -> 0-17 (0), 18-39 (66), 40-64 (104), 65+ (30)

SELECT age_band, COUNT(age_band)
FROM patient_visits_staging
GROUP BY age_band;


-- 2. Diagnosis Analysis
-- Join patients to diagnoses using patient_id

SELECT patient_id, icd_code
FROM patient_visits_staging
GROUP BY patient_id, icd_code
ORDER BY patient_id;

-- Count how many times each ICD code appears

SELECT icd_code, COUNT(icd_code)
FROM patient_visits_staging
GROUP BY icd_code;

-- Identify the top 10 diagnoses overall

SELECT icd_code, COUNT(icd_code)
FROM patient_visits_staging
GROUP BY icd_code
ORDER BY COUNT(icd_code) DESC
LIMIT 10;

-- Break down top diagnoses by: age band and sex (separately and together)

SELECT icd_code, COUNT(icd_code), age_band
FROM patient_visits_staging
GROUP BY icd_code, age_band
ORDER BY COUNT(icd_code) DESC
LIMIT 10;

SELECT icd_code, COUNT(icd_code), patient_sex
FROM patient_visits_staging
GROUP BY icd_code, patient_sex
ORDER BY COUNT(icd_code) DESC
LIMIT 10;

SELECT icd_code, COUNT(icd_code), age_band, patient_sex
FROM patient_visits_staging
GROUP BY icd_code, age_band, patient_sex
ORDER BY COUNT(icd_code) DESC
LIMIT 10;


-- 3. Visit utilisation
-- Count total diagnosis events per patient

SELECT patient_id, COUNT(patient_id)
FROM patient_visits_staging
GROUP BY patient_id
ORDER BY patient_id;

-- Find the average number of visits per patient - total visits/total patients - 4.76 visits per patient

SELECT ROUND(COUNT(visit_id) / COUNT(DISTINCT patient_id), 2)
FROM patient_visits_staging;

-- Identify "high utilisers" (patients with 4+ visits) - put them in a table so the team can easily see them in the dashboard

SELECT patient_id, total_visits
FROM(
	SELECT patient_id, COUNT(patient_id) AS total_visits
	FROM patient_visits_staging
    GROUP BY patient_id) t
WHERE total_visits >= 4;


-- 4. Procedure (CPT) insights
-- Rank CPT codes by frequency to see which procedures are performed most often

SELECT cpt_code, COUNT(cpt_code)
FROM patient_visits_staging
GROUP BY cpt_code
ORDER BY COUNT(cpt_code) DESC;