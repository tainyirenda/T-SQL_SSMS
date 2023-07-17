SELECT
	CustomerID,
	SalesOrderID,
	OrderDate
FROM 
	[Sales].[SalesOrderHeader]
WHERE
	CustomerID <> 11000 AND
	CustomerID BETWEEN 11015 AND 11040
ORDER BY
	CustomerID
