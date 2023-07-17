SELECT
	top(10) percent *,
	SalesOrderID,
	SalesOrderDetailID
FROM 
	[Sales].[SalesOrderDetail]
