SELECT
	CustomerID,
	count(*) AS TotalTransactions,
	SUM(TotalDue) AS TotalSales,
	MIN(TotalDue) AS MinSales,
	MAX(TotalDue) AS MaxSales,
	AVG(TotalDue) AS AvgSale
FROM
	Sales.SalesOrderHeader
GROUP BY
	CustomerID
HAVING
	SUM(TotalDue) >= 2500 AND count(*) > 1
ORDER BY
	CustomerID

