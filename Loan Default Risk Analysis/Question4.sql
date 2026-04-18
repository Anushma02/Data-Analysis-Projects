/* How do employment status and years employed affect default risk? 
Are borrowers with less than 2 years of employment significantly more likely to default? */

SELECT * FROM joined_table;


-- How do employment status and years employed affect default risk?
-- Answer: Default risk is highest amongst borrowers with lots of years of employment e.g. 15+ and people who are self-employed / on contract / retired / part-time
	-- Columns needed: employment_status, years_employed, defaulted
    
-- Group by employment_status

SELECT employment_status,
	AVG(defaulted) * 100 AS default_rate
FROM joined_table
GROUP BY employment_status
ORDER BY default_rate DESC;

-- Create buckets for years_employed (0-4, 5-9, 10-14, 15-19, 20-24, 25-29, 30+)
-- Alter and update table with the new years_employed_bucket column

SELECT years_employed,
	COUNT(years_employed)
FROM joined_table
GROUP BY years_employed
ORDER BY years_employed;

ALTER TABLE joined_table
ADD years_employed_bucket VARCHAR(10);

UPDATE joined_table
SET years_employed_bucket =
	CASE 
		WHEN years_employed >= 0 AND years_employed <= 4 THEN '0-4'
		WHEN years_employed >= 5 AND years_employed <= 9 THEN '5-9'
		WHEN years_employed >= 10 AND years_employed <= 14 THEN '10-14'
		WHEN years_employed >= 15 AND years_employed <= 19 THEN '15-19'
        WHEN years_employed >= 20 AND years_employed <= 24 THEN '20-24'
        WHEN years_employed >= 25 AND years_employed <= 29 THEN '25-29'
	ELSE '30+'
	END;
    
SELECT years_employed_bucket,
	AVG(defaulted) * 100 AS default_rate
FROM joined_table
GROUP BY years_employed_bucket
ORDER BY default_rate DESC;

SELECT employment_status, 
	years_employed_bucket,
	AVG(defaulted) * 100 AS default_rate
FROM joined_table
GROUP BY employment_status, years_employed_bucket
ORDER BY default_rate DESC;


-- Are borrowers with less than 2 years of employment significantly more likely to default? - Answer: 10.23% more likely to default

-- Find the average default rate - Answer: 24.29%
-- Compare the average with default rate of borrowers with less than 2 years employment - Answer: 34.52%

SELECT ROUND(AVG(defaulted) * 100, 2)
FROM joined_table
WHERE years_employed < 2;

SELECT ROUND(AVG(defaulted) * 100, 2)
FROM joined_table;

SELECT ROUND((early_rate - overall_rate) * 100, 2) AS difference
FROM (
	SELECT
		(SELECT AVG(defaulted) FROM joined_table WHERE years_employed < 2) AS early_rate,
		(SELECT AVG(defaulted) FROM joined_table) AS overall_rate
	) temp;