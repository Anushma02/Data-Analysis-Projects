Data cleaned in Microsoft Excel and visualisations created in Microsoft PowerBI.

Cleaning process:

- Deleted any columns that weren’t necessary. Narrowed down 24 columns to 12
- Looked for any duplicate rows to delete - none were found
- Cleaning each column:
    - Book ID - No missing values, trimmed column
    - Title - Removed white space around values, fixed errors with special characters (anytime there was an apostrophe, the same string of special characters (â€™) were added so replaced those), fixed another error with special characters (anythime there was an em dash, the same string of special characters (â€”) were added so replaced those)
    - Author - Fixed errors with special characters by replacing them with the actual characters, trimmed column
    - My Rating - Trimmed column, created new column called ‘My Rating NEW’ where the books with 0 were changed to ‘no rating’
    - Average Rating - Converted from general to number data type, trimmed column, rounded values to 1 decimal point
    - Publisher - Filled in some missing values by googling, grouped together values that were similar e.g., Penguin, Penguin Classics, etc
    - Number of Pages - Trimmed column, inputted correct number where there was 0 for one row. Created a new column called ‘Book Length’ that says whether the book is Short, Medium, Long, or Very Long.
    - Original Publication Year - Filled in some missing values by googling, trimmed column. Created a new column called ‘Publication Century’ where it says which century the book was published.
    - Data Read - Converted from general to short date data type, created a new column where the rows with missing values are replaced by ‘not read’. Created a new column called ‘Date Read (Month/Year)’ where the rows that have the dates are converted to the form MM/YYYY.
    - Date Added - Converted from general to short date data type
    - Exclusive Shelf - Added an extra category called ‘dnf’ by using a formula to see which books I rated 0 and said I read.

Visualisations:

- KPI cards - Total Books Read, Total Pages Read, My Average Rating of Books Read, Average Rating of Books Read
    - Observation - I rate books lower than the general public.
- Average Books Read Per Month - Line chart, Only included months from the date read column, Filtered only on books read
    - Observation - I read more books in the first half of the year than I do in the second half. The average book count decreases drastically July onwards.
- Top Authors by Books in Shelf - Donut chart, Filtered only on authors with more than 2 books in shelf
    - Observation - The most popular authors in my shelves (to-read, read, dnf) are Franz Kafka, Malcolm Gladwell, Cal Newport, Stefan Zweig.
- Book Length Distribution by Shelf - Stacked column chart, Not filtered on anything
    - Observation - Most of the books in all of my shelves are short books, then medium, then long, then very long. I tend to prefer shorter books to read.
- Books Read Over Time - Stacked column chart, Filtered just on books read
    - Observation - I read the most in 2024 (total 23) as opposed to any other year.
- Books Read by Length - Funnel chart, Filtered only on books read
    - Observation - Majority of the books I’ve read have been short.
- Book Read & My Rating by Publication Century - Clustered column chart, Filtered only on books read
    - Observation - Majority of the books I’ve read have been published in the 21st and 20th century. I also rate modern books higher generally than older books.
- My Average Rating of Books Read by Publisher - Stacked column chart, Filtered only on books read and publishers with more than 1 rating
    - Observation - Random House, Doubleday, and Penguin are my top 3 favourite publishing houses. They’ve published the books I’ve most enjoyed reading.
