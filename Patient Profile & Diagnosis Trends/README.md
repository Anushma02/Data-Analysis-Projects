You are a Data Analyst for a mid-sized healthcare clinic. You’ve been given a synthetic dataset containing two tables: basic patient demographics (age, sex, race, insurance, ZIP code) and a diagnosis history containing ICD and CPT codes for each visit. Your job is to help the clinic understand the makeup of its patient population and the most common conditions they treat. Doctors see patients one by one, but you get to see the big picture. Use this dataset to build simple insights about who your patients are and what health issues are most common.

Stack: SQL, Tableau

Questions:
1. What does the clinic’s patient population look like by Age?

   Group patients into simple age bands (0–17, 18–39, 40–64, 65+).
   Create a count for each age Range and visualize it (probably with a Bar Chart)

   | age_band | COUNT(age_band) |
   | --- | --- |
   | 65+ | 30 |
   | 18-39 | 66 |
   | 40-64 | 104 |

   - 0 patients aged 0-17
   - 66 patients aged 18-39
   - 104 patients aged 40-64
   - 30 patients aged 65+
   - Majority of patients in this clinic are 40-64. Most likely because that’s the age group when people start experiencing health problems, hence being diagnosed.
   
2. What are the top diagnoses overall?

   Join patients to diagnoses using patient_id.
   Count how many times each ICD code appears.
   Identify the top 10 diagnoses overall.
   Break down top diagnoses by:
   Age band
   Sex

   Top 10 diagnoses
   | icd_code | COUNT(icd_code) |
   | --- | --- |
   | I10 | 19 |
   | J45.909 | 11 |
   | N39.0 | 11 |
   | E11.9 | 10 |
   | M54.5 | 10 |
   | E78.5 | 10 |
   | F32.9 | 9 |
   | K21.9 | 9 |
   | I25.10 | 9 |
   | G43.909 | 8 |

   I10 is by far the most popular diagnosis.

   Top 10 diagnoses overall broken down by age band and sex:
   | icd_code | COUNT(icd_code) | age_band | patient_sex |
   | --- | --- | --- | --- |
   | I10 | 6 | 40-64 | Female |
   | E11.9 | 6 | 40-64 | Female |
   | I10 | 5 | 65+ | Female |
   | J45.909 | 5 | 40-64 | Male |
   | I10 | 5 | 65+ | Male |
   | E78.5 | 5 | 40-64 | Male |
   | E78.5 | 5 | 40-64 | Female |
   | F32.9 | 5 | 18-39 | Female |
   | N39.0 | 4 | 40-64 | Female |
   | K21.9 | 4 | 40-64 | Male |

   Majority of the top 10 diagnoses are given to patients 40-64 years old and female.

3. How many visits does the average patient have, and who are the high utilizers?

   Count total diagnosis events per patient.
   Find the average number of visits per patient.
   Identify “high utilizers” (patients with 4+ visits) - put them in a table so     the team can easily see them in the dashboard.

   The average patient has 4.76 (2dp) visits. The high utilisers (patients with 4 visits or over) are the 20 patients between PT00001 - PT00020.

4. Which CPT codes (procedures) are performed most often?

   Rank CPT codes by frequency to see which procedures are performed most often.

   | cpt_code | COUNT(cpt_code) |
   | --- | --- |
   | 99213 | 7 |
   | 99214 | 6 |
   | 99204 | 6 |
   | 12345 | 4 |
   | 23456 | 4 |
   | 34567 | 4 |
   | 45678 | 4 |
   | 56789 | 4 |
   | 67890 | 4 |
   | 78901 | 4 |
   | 89012 | 4 |
   | 90123 | 4 |
   | 99212 | 4 |
   | 99215 | 4 |
