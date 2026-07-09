CREATE DATABASE Online_sales;
USE Online_sales;
SELECT * FROM Sales;

ALTER TABLE Sales
MODIFY COLUMN Date DATE;

SELECT
MONTH(`Date`) AS Month,
SUM(`Total Revenue`) AS Revenue
FROM Sales
GROUP BY Month(`Date`);

SELECT
MONTH(`Date`) AS Month,
COUNT(`Transaction ID`) AS Total_Orders
FROM Sales
GROUP BY Month(`Date`);

SELECT
MONTH(`Date`) AS Month,
SUM(`Total revenue`) AS Revenue,
COUNT(DISTINCT `Transaction ID`) AS Order_Volume
FROM Sales
GROUP BY Month(`Date`)
ORDER BY Month(`Date`);

SELECT
MONTH(`Date`) AS Month
FROM Sales;

SELECT
MONTH(`Date`) AS Month,
SUM(`Total Revenue`) AS Revenue
FROM Sales
GROUP BY Month
ORDER BY Revenue DESC
LIMIT 3;
