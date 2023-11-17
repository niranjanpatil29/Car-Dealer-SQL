USE cars;

-- READ DATA--
SELECT * FROM car_dekho;

-- Question(1) How many cars will be available in all years?  --
SELECT COUNT(*), year FROM car_dekho 
GROUP BY year;

-- Question(2) Average selling price by car model and year --
SELECT Name, year, AVG(selling_price) 
FROM car_dekho
GROUP BY Name, year;

-- Question(3) All the fuel cars(prtrol, diesel, electric and CNG) come by all year --
SELECT fuel,year,count(*) 
FROM car_Dekho
GROUP BY year,fuel;

-- Question(4) which year had more than 100 cars? --
SELECT year, COUNT(*) 
FROM car_dekho
GROUP BY year HAVING count(*) > 100
ORDER BY COUNT(*) DESC;

-- Question(5) All car details between year 2015 to 2023 --
SELECT * FROM car_Dekho
WHERE year BETWEEN 2015 AND 2023;

-- Question(6) What is the average selling price of cars--
SELECT AVG(selling_price) AS average_selling_price
FROM car_dekho;

-- Question(7) What is the average mileage of cars by all years --
SELECT year,AVG(mileage) AS avg_mileage
FROM car_dekho
GROUP BY year;

















































