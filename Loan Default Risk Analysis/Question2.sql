/* Question 2: Is there a relationship between a borrower’s debt-to-income (DTI) ratio and the likelihood of defaulting? 
What DTI threshold would you recommend as a cutoff for loan approval? */

-- Columns needed: dti_ratio, defaulted

SELECT * FROM joined_table;

-- Is there a relationship between a borrower's DTI ratio and the likelihood of defaulting? 
/* Answer: 0-19 - 16.2791%
			20-34 - 11.2000%
            35-44 - 20.4819%
            45-59 - 24.5033%
            60+ - 35.6784%
There is a relationship between DTI ratio and likelihood of defaulting. The higher the DTI ratio, the higher the likelihood of defaulting.
If the company has a target of keeping defaulting rate at 12% or below, they should only approve loans for borrowers with 10-34% DTI ratio. This is the only bucket, where default ratio is less than 12%.
*/

-- Put dti_ratio into buckets - 0-19, 20-34, 35-44, 45-59, 60+
-- Alter and update the table with this new column

ALTER TABLE joined_table
ADD dti_ratio_bucket VARCHAR(10);

UPDATE joined_table
SET dti_ratio_bucket =
	CASE 
		WHEN dti_ratio >= 0 AND dti_ratio <= 19 THEN '0-19'
		WHEN dti_ratio >= 20 AND dti_ratio <= 34 THEN '20-34'
		WHEN dti_ratio >= 35 AND dti_ratio <= 44 THEN '35-44'
		WHEN dti_ratio >= 45 AND dti_ratio <= 59 THEN '45-59'
	ELSE '60+'
	END;
    
SELECT dti_ratio_bucket,
	AVG(defaulted) * 100 AS default_rate
FROM joined_table
GROUP BY dti_ratio_bucket
ORDER BY dti_ratio_bucket;