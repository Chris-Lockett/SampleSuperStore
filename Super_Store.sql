CREATE DATABASE superstore;

USE superstore;

SELECT *
FROM store;

-- Checking the sales total by the ship mode
-- 
SELECT Ship_Mode, SUM(Sales) AS Ship_Mode_Totals
FROM store
GROUP BY Ship_Mode
ORDER BY Ship_Mode_Totals DESC;

-- Checking the Profit total by the ship mode
-- 
SELECT Ship_Mode, SUM(Profit) AS Ship_Mode_Profits
FROM store
GROUP BY Ship_Mode
ORDER BY Ship_Mode_Totals DESC;

-- Checking total sales number by state
-- 
SELECT State, SUM(Sales) AS State_Totals
FROM store
GROUP BY State
ORDER BY State_Totals DESC;

-- Checking average sales number by state

SELECT State, AVG(Sales) AS State_Average_Sales
FROM store
GROUP BY State
ORDER BY State_Average_Sales DESC;

-- Getting the top 5 total sales number by state

SELECT State, SUM(Sales) AS State_Totals
FROM store
GROUP BY State
ORDER BY State_Totals DESC
LIMIT 5;

-- Getting the top 5 average sales number by state

SELECT State, AVG(Sales) AS State_Average_Sales
FROM store
GROUP BY State
ORDER BY State_Average_Sales DESC
LIMIT 5;

-- Checking the segment total by the ship mode
-- 
SELECT Segment, SUM(Sales) AS Segment_Totals
FROM store
GROUP BY Segment
ORDER BY Segment_Totals DESC;

-- Checking the segment profit total by the ship mode
-- 
SELECT Segment, SUM(Profit) AS Segment_Profits
FROM store
GROUP BY Segment
ORDER BY Segment_Profits DESC;

-- Checking the Category total by the ship mode
-- 
SELECT Category, SUM(Sales) AS Category_Totals
FROM store
GROUP BY Category
ORDER BY Category_Totals DESC;

-- Checking the Category profit total by the ship mode
 
SELECT Category, SUM(Profit) AS Category_Profits
FROM store
GROUP BY Category
ORDER BY Category_Profits DESC;

-- Checking the Category total by the ship mode
-- 
SELECT Category, Sub_Category, SUM(Sales) AS Category_Totals
FROM store
GROUP BY Category, Sub_Category
ORDER BY Category, Category_Totals DESC;