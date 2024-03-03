-- 1. Read Car data
SELECT *
  FROM [dbo].[Car dekho];

-- 2. Total Cars: To get a count of total records
SELECT COUNT (*) AS "Total Cars"
  FROM [dbo].[Car dekho];

-- 3. The manager asked the employee How many cars wwil be available in 2023?
SELECT COUNT (*) AS "Total Cars In 2023"
  FROM [dbo].[Car dekho] c
 WHERE c.year = 2023;

-- 4. The manager asked the employee How many cars is available in 2020, 2021, 2022?
SELECT  c.year,
		COUNT (*) AS "total cars"
  FROM [dbo].[Car dekho] c
 WHERE c.year IN (2020, 2021, 2022)
 GROUP BY c.year
 ORDER BY c.year;

-- 5. Clint asked me to print the total of all cars by year. I don't see all the detials
SELECT c.year,
	   COUNT (*) AS "Total cars by year"
  FROM [dbo].[Car dekho] c
 GROUP BY c.year
 ORDER BY "Total cars by year";

-- 6. Clint asked to car dealer agent How many diesel cars will there be in 2020?
SELECT COUNT (*) AS " Quanlity of Cars "
  FROM [dbo].[Car dekho] c
 WHERE c.year = 2020 AND c.fuel = 'diesel';

-- 7. Clint requested a car deadler agent How many petrol cars will there be in 2020?
SELECT COUNT (*) AS "Total petrol cars"
  FROM [dbo].[Car dekho] c
 WHERE c.year = 2020 AND c.fuel = 'petrol';

-- 8. The manager told the employee to give a print all the fuel cars (petrol, diesel, and CNG) come by all year.
SELECT c.year,
	   COUNT (*)
  FROM [dbo].[Car dekho] c
 WHERE c.fuel IN ('petrol', 'diesel', 'CNG') 
 GROUP BY c.year ;

-- 9. Manager said there were more than 100 cars in a given year, which year had more than 100 cars?
SELECT c.year
  FROM [dbo].[Car dekho] C
 GROUP BY c.year
HAVING COUNT (*) > 100;

-- 10. The manager said to the employee All cars count details between 2015 and 2023; we need a complete list
SELECT COUNT (*)
  FROM [dbo].[Car dekho] c
 WHERE c.year BETWEEN 2015 AND 2023;

-- 11. The manager said to the employee All cars details between 2015 and 2023; we need a complete list
SELECT *
  FROM [dbo].[Car dekho] c
 WHERE c.year BETWEEN 2015 AND 2023;
