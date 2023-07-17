SELECT
	OrderDate,
	ShipDate,
	DATEADD(YEAR, -1, OrderDate) AS PreviousYear,
	DATEADD(Day, 3, OrderDate) AS DueDate,
	DATEDIFF(DAY, OrderDate, ShipDate) AS DaysToShip,
	DATEDIFF(MONTH, OrderDate, GETDATE()) AS MonthsSinceOrder
FROM 
	[Sales].[SalesOrderHeader]
ORDER BY
	DaysToShip asc