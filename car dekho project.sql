create database cars;
use cars;
-- to read the data 
SELECT * FROM cars.`car dekho`;
-- total cars: to get  a count of toatl records.
SELECT count(*) FROM cars.`car dekho`;

-- the manager asked the employee how many cars wiil be available in 2023
 SELECT count(*) FROM cars.`car dekho` where year = 2023;
 -- the manager asked the employee. How many cars is available in 2020,2021,2022. 
 
 SELECT count(*) FROM cars.`car dekho` where year = 2020;
 SELECT count(*) FROM cars.`car dekho` where year = 2021;
 SELECT count(*) FROM cars.`car dekho` where year = 2022;
 
 -- or can be solve the query group by. 
SELECT count(*) FROM cars.`car dekho` where year in (2020,2021,2022);
SELECT count(*) FROM cars.`car dekho` where year in (2020,2021,2022) group by year;

-- the manager said to the employee all cars count details between 2015 to 2023. we need
-- a complete list. 
-- only count. 
select year, count(*) FROM cars.`car dekho` group by year;
-- clint asked to car dealer agent how many diesel cars will be there in 2020. 
SELECT count(*) FROM cars.`car dekho` where year =2020 and fuel = 'diesel';

-- clint asked to car dealer agent how many petrol cars will be there in 2020.
SELECT count(*) FROM cars.`car dekho` where year =2020 and fuel = 'petrol';
-- the manager told the employee to give a print all the fuel cars by all the years. 
select year, count(*) FROM cars.`car dekho` where fuel = 'petrol' group by year;
select year, count(*) FROM cars.`car dekho` where fuel = 'diesel' group by year;
select year, count(*) FROM cars.`car dekho` where fuel = 'cng' group by year;
-- the manager said there were more than 100 cars in a given year, which year had more than 100 cars. 

select year, count(*) FROM cars.`car dekho`  group by year having count(*) > 100;
-- same can be applied for less than. 
-- the manager said to the employee all cars count details between 2015 $ 2023. we need a complete list. 
select  count(*) FROM cars.`car dekho` where year between 2015 and 2023;

-- the manager said to the employee all cars details between 2015 to 2023 we need a complete list. 
select* from cars.`car dekho` where year between 2015 and 2023;

-- completed. 









