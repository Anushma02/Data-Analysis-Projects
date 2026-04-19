Data cleaned in Microsoft Excel and visualisations created in Microsoft PowerBI.

Cleaning process:
- Deleted any columns that weren’t necessary. Narrowed down 24 columns to 12
- Deleted duplicates from data - none were found
- Cleaning each column:
    - Book ID - No missing values, trimmed column
    - Title - Removed white space around values, fixed errors with special characters (anytime there was an apostrophe, the same string of special characters (â€™) were added so replaced those), fixed another error with special characters (anythime there was an em dash, the same string of special characters (â€”) were added so replaced those)
    - Author - Fixed errors with special characters by replacing them with the actual characters, trimmed column
    - My Rating - Trimmed column, created new column called ‘My Rating NEW’ where the books with 0 were changed to ‘no rating’
    - Average Rating - Converted from general to number data type, trimmed column, rounded values to 1 decimal point
    - Publisher - Filled in some missing values by googling, grouped together values that were similar e.g., Penguin, Penguin Classics, etc
    - Number of Pages - Trimmed column, inputted correct number where there was 0 for one row. Created a new column called ‘Book Length’ that says whether the book is short, medium, long, or extra long.
    - Original Publication Year - Filled in some missing values by googling, trimmed column. Created a new column called ‘Publication Century’ where it says which century the book was published.
    - Data Read - Converted from general to short date data type, created a new column where the rows with missing values are replaced by ‘not read’. Created a new column called ‘Date Read (Month/Year)’ where the rows that have the dates are converted to the form MM/YYYY.
    - Date Added - Converted from general to short date data type
    - Exclusive Shelf - Added an extra category called ‘dnf’ by using a formula to see which books I rated 0 and said I read.

Use cases:

- What publication published my highest rated books? Is there a specific publication house I lean towards? What publication houses do I not like the books of?
- What length books do I read the most?
- What length books do I like the most?
