--Write and execute a SQL query to list the school names, community names and average attendance for communities with a hardship index of 98. 

select CPS.NAME_OF_SCHOOL, CD.COMMUNITY_AREA_NAME, CPS.AVERAGE_STUDENT_ATTENDANCE, CD.HARDSHIP_INDEX
from CHICAGO_PUBLIC_SCHOOLS as CPS
full join CENSUS_DATA as CD
on CPS.COMMUNITY_AREA_NUMBER = CD.COMMUNITY_AREA_NUMBER
where CD.HARDSHIP_INDEX = 98;

--Write and execute a SQL query to list all crimes that took place at a school. Include case number, crime type and community name.

select CCD.LOCATION_DESCRIPTION, CCD.CASE_NUMBER, CCD.CASE_NUMBER, CD.COMMUNITY_AREA_NAME, PRIMARY_TYPE
from CHICAGO_CRIME_DATA as CCD
left join CENSUS_DATA as CD
on CCD.COMMUNITY_AREA_NUMBER = CD.COMMUNITY_AREA_NUMBER
where CCD.LOCATION_DESCRIPTION like '%SCHOOL%' and CCD.COMMUNITY_AREA_NUMBER is not null;

