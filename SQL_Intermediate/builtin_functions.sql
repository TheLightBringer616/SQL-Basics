--Retrieve all records with all columns
SELECT * FROM PETSALE;
SELECT * FROM PET;

--Aggregate Functions

--Enter a function that calculates the total cost of all animal rescues in the PETRESCUE table.
select SUM(COST) from PETRESCUE;

--Enter a function that displays the total cost of all animal rescues in the PETRESCUE table in a column called SUM_OF_COST.
select SUM(COST) AS SUM_OF_COST from PETRESCUE;

--Enter a function that displays the maximum quantity of animals rescued.
select MAX(QUANTITY) from PETRESCUE;

--Enter a function that displays the average cost of animals rescued.
select AVG(COST) from PETRESCUE;

--Enter a function that displays the average cost of rescuing a dog. Hint - Bear in my the cost of rescuing one dog on day, is different from another day. So you will have to use and average of averages.
select AVG(COST/QUANTITY) from PETRESCUE where ANIMAL = 'Dog';

--Scalar and String Functions

--Enter a function that displays the rounded cost of each rescue.
select ROUND(COST) from PETRESCUE;

--Enter a function that displays the length of each animal name.
select LENGTH(ANIMAL) from PETRESCUE;

--Enter a function that displays the animal name in each rescue in uppercase.
select UCASE(ANIMAL) from PETRESCUE;

--Enter a function that displays the animal name in each rescue in uppercase without duplications.
select DISTINCT(UCASE(ANIMAL)) from PETRESCUE;

--Enter a query that displays all the columns from the PETRESCUE table, where the animal(s) rescued are cats. Use cat in lower case in the query.
select * from PETRESCUE where LCASE(ANIMAL) = 'cat';

--Date and Time Functions

--Enter a function that displays the day of the month when cats have been rescued.
select DAY(RESCUEDATE) from PETRESCUE where ANIMAL = 'Cat';

--Enter a function that displays the number of rescues on the 5th month.
select SUM(QUANTITY) from PETRESCUE where MONTH(RESCUEDATE)='05';

--Enter a function that displays the number of rescues on the 14th day of the month.
select SUM(QUANTITY) from PETRESCUE where DAY(RESCUEDATE)='14';

--Animals rescued should see the vet within three days of arrivals. Enter a function that displays the third day from each rescue.
select (RESCUEDATE + 3 DAYS) from PETRESCUE;

--Enter a function that displays the length of time the animals have been rescued; the difference between today’s date and the recue date.
select (CURRENT DATE - RESCUEDATE) from PETRESCUE;