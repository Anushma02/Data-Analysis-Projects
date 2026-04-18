Project from: https://www.analystbuilder.com/projects/loan-default-risk-analysis-Vjfdl?tab=overview
Only done in SQL.

You are a data analyst at a mid-size consumer lending company. Management is concerned about the rising default rate on personal loans and wants data-driven insights to improve the underwriting process. In this project you will explore borrower demographics, loan characteristics, and repayment outcomes to identify the key risk factors that predict loan defaults. This is a foundational credit risk analysis project that mirrors real work done at banks, fintech lenders, and credit unions.

Horizon Financial Group has issued over 600 personal loans across 2024 and 2025. The company has noticed that roughly 1 in 4 loans are defaulting, which is well above their target of 12%. The VP of Risk has asked your team to analyze the existing loan book and borrower data to answer key questions about what is driving defaults. Your analysis will directly inform changes to their credit scoring model and loan approval thresholds. You have been provided two datasets: one containing borrower profiles (demographics, income, credit score, employment) and one containing loan application details (amount, term, interest rate, repayment status).


Questions to Answer:
1. What is the overall default rate, and how does it break down by credit score range (e.g., 520–599, 600–649, 650–699, 700–749, 750+)? Which credit score bucket has the highest default rate?

    Overall default rate is 24.29%

    Default rate break down by credit score ranges:
    520-599 - 49.14%
    600-649 - 29.03%
    650-699 - 28%
    700-749 - 16.28%
    750+ - 11.69%

    520-599 credit score range has the highest default rate. 

2. Is there a relationship between a borrower’s debt-to-income (DTI) ratio and the likelihood of defaulting? What DTI threshold would you recommend as a cutoff for loan approval?

    DTI ratio calculation = (Total monthly debt payments / Gross monthly income) x 100 
    There is a relationship between DTI ratio and likelihood of defaulting. The higher the DTI ratio, the higher the likelihood of defaulting.
    If the company has a target of keeping default rate at 12% or below, they should only approve loans for borrowers with DTI ratio less than 35%. 20-34 is the only bucket, where default ratio is less than 12%.
    But, smaller DTI ranges should be fine too, as they're low risk.
    A bigger range could be found by creating smaller buckets, but these are industry conventions.

    Default rate break down by DTI ratio:
    0-19 - 16.28%
    20-34 - 11.2%
    35-44 - 20.48%
    45-59 - 24.50%
    60+ - 35.68%

3. Which loan purposes have the highest default rates, and does the average loan amount differ significantly between defaulted and non-defaulted loans?

    Weddings have the highest default rates with 32.14%
    Average loan amount differs by £557.80 (defaulted higher).

4. How do employment status and years employed affect default risk? Are borrowers with less than 2 years of employment significantly more likely to default?
    
    Default risk is highest amongst borrowers who are self-employed / on contract / retired / part-time. Rather than people with full-time jobs. Although the difference isn't significant. The number of years                  borrowers were employed doesn't significantly correlate with default risk. Therefore, financial information (e.g credit score & DTI) should be used to determine loan approvals, rather than borrower demographics (e.g.     years of employment, type of employment, loan purposes).
   
    Average default rate is 24.29% and default rate for borrowers with less than 2 years of employment is 34.52%. So, borrowers with less than 2 years of experience are 10.23% more likely to default, which is pretty          significant.
