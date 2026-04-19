You are a Data Analyst for a mid-sized healthcare clinic. You’ve been given a synthetic dataset containing two tables: basic patient demographics (age, sex, race, insurance, ZIP code) and a diagnosis history containing ICD and CPT codes for each visit. Your job is to help the clinic understand the makeup of its patient population and the most common conditions they treat. Doctors see patients one by one, but you get to see the big picture. Use this dataset to build simple insights about who your patients are and what health issues are most common.

Questions:
1. What does the clinic’s patient population look like by Age?

   Calculate patient age from DOB.
   Group patients into simple age bands (0–17, 18–39, 40–64, 65+).
   Create a count for each age Range and visualize it (probably with a Bar Chart)
   
2. What are the top diagnoses overall?

   Join patients to diagnoses using patient_id.
   Count how many times each ICD code appears.
   Identify the top 10 diagnoses overall.
   Break down top diagnoses by:
   Age band
   Sex

3. How many visits does the average patient have, and who are the high utilizers?

   Count total diagnosis events per patient.
   Find the average number of visits per patient.
   Identify “high utilizers” (patients with 4+ visits) - put them in a table so     the team can easily see them in the dashboard.

4. Which CPT codes (procedures) are performed most often?

   Rank CPT codes by frequency to see which procedures are performed most often.
