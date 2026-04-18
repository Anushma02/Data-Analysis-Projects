SELECT * FROM borrower_profiles_staging;


-- Create staging table

CREATE TABLE borrower_profiles_staging
LIKE borrower_profiles;

INSERT borrower_profiles_staging
SELECT *
FROM borrower_profiles;


-- Find and delete duplicate rows

WITH duplicate_cte AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY borrower_id, age, state, education_level, employment_status, years_employed, annual_income, credit_score, home_ownership, dependents, existing_monthly_debt) AS row_num
FROM borrower_profiles_staging
)
SELECT *
FROM duplicate_cte
WHERE row_num > 1;

	-- No duplicate rows here to delete
	-- No null values