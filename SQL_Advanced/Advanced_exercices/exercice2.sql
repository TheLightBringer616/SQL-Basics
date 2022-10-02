--Write and execute a SQL statement that returns just the school name and leaders’ icon from the view. 

drop view SCHOOLS;

create view SCHOOLS(School_Name, Safety_Rating, Family_Rating, Environment_Rating, Instruction_Rating, Leaders_Rating, Teachers_Rating)
as select NAME_OF_SCHOOL, Safety_Icon, Family_Involvement_Icon, Environment_Icon, Instruction_Icon, Leaders_Icon, Teachers_Icon
from CHICAGO_PUBLIC_SCHOOLS;

select *
from SCHOOLS;

select School_Name, Leaders_Rating
from SCHOOLS;