/* Question 1: What is the overall default rate, and how does it break down by credit score range 
(e.g., 520–599, 600–649, 650–699, 700–749, 750+)? Which credit score bucket has the highest default rate? */

-- Columns needed: defaulted (loan applications), credit_score (borrower_profiles)

SELECT * FROM borrower_profiles_staging;

SELECT * FROM loan_applications_staging;
    
    
-- Put credit_score into buckets: credit_score_bucket - 520–599, 600–649, 650–699, 700–749, 750+
-- Alter and update the table with this new column

ALTER TABLE borrower_profiles_staging
ADD credit_score_bucket VARCHAR(10);

UPDATE borrower_profiles_staging
SET credit_score_bucket =
	CASE 
		WHEN credit_score >= 520 AND credit_score <= 599 THEN '520-599'
		WHEN credit_score >= 600 AND credit_score <= 649 THEN '600-649'
		WHEN credit_score >= 650 AND credit_score <= 699 THEN '650-699'
		WHEN credit_score >= 700 AND credit_score <= 749 THEN '700-749'
	ELSE '750+'
	END;


-- Find overall default rate - Answer: 24.2928%

SELECT (SUM(defaulted = 1) / COUNT(defaulted)) * 100
FROM loan_applications_staging;


-- How does overall default rate break down by credit score range?
	/* Answer: 520-599 - 49.1379%
				600-649 - 29.0323%
                650-699 - 28.0000%
                700-749 - 16.2791%
                750+ - 11.6883% 
	*/

-- Join the two tables using borrower_id, some borrowers have multiple loans

CREATE TABLE loan_default_risk_analysis.joined_table
SELECT *
FROM borrower_profiles_staging bp
JOIN loan_applications_staging la
USING (borrower_id); 

SELECT credit_score_bucket,
	AVG(defaulted) * 100 AS default_rate
FROM joined_table
GROUP BY credit_score_bucket
ORDER BY credit_score_bucket;


-- Which credit score bucket has the highest default rate? - Answer: 520-599

SELECT credit_score_bucket,
	AVG(defaulted) * 100 AS default_rate
FROM joined_table
GROUP BY credit_score_bucket
ORDER BY default_rate DESC;