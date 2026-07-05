USE apexplanet;

-- 1. Category wise revenue
SELECT Category, SUM(Total_Sales) AS Total_Revenue
FROM cleaned_dataset
GROUP BY Category
ORDER BY Total_Revenue DESC;

-- 2. City wise revenue
SELECT City, SUM(Total_Sales) AS Total_Revenue
FROM cleaned_dataset
GROUP BY City
ORDER BY Total_Revenue DESC;

-- 3. Gender vs Revenue
SELECT Gender, SUM(Total_Sales) AS Total_Revenue
FROM cleaned_dataset
GROUP BY Gender;

-- 4. Product wise units sold
SELECT Product, SUM(Quantity) AS Total_Units_Sold
FROM cleaned_dataset
GROUP BY Product
ORDER BY Total_Units_Sold DESC;

-- 5. Average age by category
SELECT Category, ROUND(AVG(Age),2) AS Average_Age
FROM cleaned_dataset
GROUP BY Category;

-- 6. Top customers
SELECT Customer_ID, SUM(Total_Sales) AS Revenue
FROM cleaned_dataset
GROUP BY Customer_ID
ORDER BY Revenue DESC
LIMIT 5;

-- 7. Monthly revenue trend (FIXED)
SELECT SUBSTRING(Order_Date, 6, 2) AS Month,
SUM(Total_Sales) AS Revenue
FROM cleaned_dataset
GROUP BY SUBSTRING(Order_Date, 6, 2)
ORDER BY Month;