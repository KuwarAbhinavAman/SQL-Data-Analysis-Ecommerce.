SELECT * FROM sales_data LIMIT 10;
SELECT ProductNo, SUM(Quantity) AS TotalQuantity
FROM sales_data
GROUP BY ProductNo
ORDER BY TotalQuantity DESC;
SELECT ProductNo, SUM(Quantity) AS TotalQuantity
FROM sales_data
WHERE Date >= '01-01-2011'  
GROUP BY ProductNo
ORDER BY TotalQuantity DESC;

SELECT ProductNo, SUM(UnitPrice * Quantity) AS TotalRevenue
FROM sales_data
GROUP BY ProductNo
ORDER BY TotalRevenue DESC;


SELECT ProductNo, SUM(Quantity) AS TotalQuantity
FROM sales_data
GROUP BY ProductNo
ORDER BY TotalQuantity DESC;

SELECT CustomerID, AVG(UnitPrice * Quantity) AS AvgRevenue
FROM sales_data
GROUP BY CustomerID;


SELECT ProductNo, SUM(Quantity) AS TotalQuantity
FROM sales_data
WHERE STR_TO_DATE(Date, '%d-%m-%Y %H:%i') >= STR_TO_DATE('12-01-2010 00:00', '%d-%m-%Y %H:%i')
GROUP BY ProductNo
ORDER BY TotalQuantity DESC
LIMIT 1000;


SELECT ProductNo, SUM(Quantity) AS TotalQuantity
FROM sales_data
GROUP BY ProductNo
HAVING TotalQuantity > (
  SELECT AVG(Quantity) FROM sales_data
);


CREATE VIEW HighSellingProducts AS
SELECT ProductNo, SUM(Quantity) AS TotalQuantity
FROM sales_data
GROUP BY ProductNo
HAVING TotalQuantity > 1000;

SELECT * FROM HighSellingProducts;


SELECT *
FROM sales_data
WHERE ProductNo IS NULL OR UnitPrice IS NULL; -- There is no Null values
















