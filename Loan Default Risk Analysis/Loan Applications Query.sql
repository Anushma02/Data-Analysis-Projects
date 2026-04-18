SELECT * FROM loan_applications_staging;

-- Create staging table

CREATE TABLE loan_applications_staging
LIKE loan_applications;

INSERT loan_applications_staging
SELECT *
FROM loan_applications;


-- Find and delete duplicate rows

WITH duplicate_cte AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY loan_id, borrower_id, application_date, loan_purpose, loan_amount, term_months, interest_rate, monthly_payment, dti_ratio, loan_status, days_delinquent, defaulted) AS row_num
FROM loan_applications_staging
)
SELECT *
FROM duplicate_cte
WHERE row_num > 1;

	-- No duplicate rows to delete
    -- No null values
    
    
-- application_date column is a text data type, need to convert to date type

SELECT application_date,
	str_to_date(application_date, '%Y-%m-%d')
FROM loan_applications_staging;

UPDATE loan_applications_staging
SET application_date = str_to_date(application_date, '%Y-%m-%d');

ALTER TABLE loan_applications_staging
MODIFY COLUMN application_date DATE;
