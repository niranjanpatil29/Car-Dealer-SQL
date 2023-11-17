# Second Hand Car Dealer Data Analysis <br>

## Project Overview<br>
This project focuses on conducting basic data analysis on a dataset from a second-hand car dealer. The dataset includes information about various cars, such as their name, year of manufacture, selling price, kilometers driven, fuel type, seller type, transmission, owner details, mileage, engine specifications, maximum power, torque, and seating capacity. The goal is to answer specific questions through SQL queries and gain insights into the trends and patterns in the second-hand car market.

## Dataset<br>
**The dataset used for this analysis contains the following columns:**

**Name:** Name of the car. <br>
**Year:** Year of manufacture.<br>
**Selling_Price:** Selling price of the car.<br>
**Km_Driven:** Number of kilometers the car has been driven.<br>
**Fuel:** Type of fuel used by the car.<br>
**Seller_Type:** Type of seller (e.g., dealer, individual).<br>
**Transmission:** Type of transmission (e.g., manual, automatic,electric,CNG).<br>
**Owner:** Number of previous owners.<br>
**Mileage:** Mileage of the car.<br>
**Engine:** Engine specifications.<br>
**Max_Power:** Maximum power of the engine.<br>
**Torque:** Torque produced by the engine.<br>
**Seats:** Seating capacity of the car.<br>

## Questions and SQL Queries

**1. How many cars are available in all years?** <br>
SELECT COUNT(*), year<br>
FROM car_dekho <br>
GROUP BY year;

![1](https://github.com/niranjanpatil29/Car-Dealer-SQL/assets/115970117/e169e7c5-24d6-4197-b0ba-e28a05cc32bb)
<br><br>

**2. Average selling price by car model and year.** <br>
SELECT Name, year, AVG(selling_price) <br>
FROM car_dekho <br>
GROUP BY Name, year;

![2](https://github.com/niranjanpatil29/Car-Dealer-SQL/assets/115970117/c7e48b9e-7456-4e95-91ea-0f1e9d2673c6)
<br><br>

**3. All the fuel cars (petrol, diesel, electric, and CNG) by all years.** <br>
SELECT fuel,year,count(*) <br>
FROM car_Dekho <br>
GROUP BY year,fuel;

![3](https://github.com/niranjanpatil29/Car-Dealer-SQL/assets/115970117/3d73ca77-9a16-434e-be47-89921c8e4e82)
<br><br>

**4. Which year had more than 100 cars?** <br>
SELECT year, COUNT(*) <br>
FROM car_dekho <br>
GROUP BY year HAVING count(*) > 100 <br>
ORDER BY COUNT(*) DESC;

![4](https://github.com/niranjanpatil29/Car-Dealer-SQL/assets/115970117/8ad29d2a-33c6-4154-9081-829c17b08d5c)
<br><br>

**5. All car details between the year 2015 to 2023.** <br>
SELECT * <br>
FROM car_Dekho <br>
WHERE year BETWEEN 2015 AND 2023;

![5](https://github.com/niranjanpatil29/Car-Dealer-SQL/assets/115970117/819da82e-6cef-403a-a316-3f94eb59dd45)
<br><br>

**6. What is the average selling price of cars?** <br>
SELECT AVG(selling_price) AS average_selling_price <br>
FROM car_dekho;

![6](https://github.com/niranjanpatil29/Car-Dealer-SQL/assets/115970117/5f1e5326-506a-4fe7-b3b3-67e81fb1f3e3)
<br><br>

**7. What is the average mileage of cars by all years?** <br>
SELECT year,AVG(mileage) AS avg_mileage <br>
FROM car_dekho <br>
GROUP BY year;

![7](https://github.com/niranjanpatil29/Car-Dealer-SQL/assets/115970117/397fad4c-2503-498d-8f71-2775ab87a33e)
<br><br>

## Conclusion
This basic data analysis project provides valuable insights into the second-hand car market. By leveraging SQL queries, we've been able to answer key questions related to the availability, pricing, and characteristics of cars in the dataset. Further analysis and visualization can be performed to gain more in-depth insights and make informed decisions in the second-hand car business.

