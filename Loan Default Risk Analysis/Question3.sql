/* Which loan purposes have the highest default rates, 
and does the average loan amount differ significantly between defaulted and non-defaulted loans? */

SELECT * FROM joined_table;

-- Which loan purposes have the highest default rates? - Answer: Wedding (32.1429%)
	-- Columns needed: loan_purpose, defaulted

-- Group together loan purposes and calculate default rate for each

SELECT loan_purpose,
	AVG(defaulted) * 100 AS default_rate
FROM joined_table
GROUP BY loan_purpose
ORDER BY default_rate DESC;


-- Does the average loan amount differ significantly between defaulted and non-defaulted loans? - Answer: Differs by 557.80 (defaulted higher)
	-- Columns needed: loan_amount, defaulted
    
-- Calculate average loan amount when defaulted = 1/0

SELECT ROUND(MAX(CASE WHEN defaulted = 1 THEN avg_loan END) - MAX(CASE WHEN defaulted = 0 THEN avg_loan END), 2) AS avg_difference
FROM (SELECT defaulted,
	AVG(loan_amount) AS avg_loan
	FROM joined_table
	GROUP BY defaulted) AS temp;