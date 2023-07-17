SELECT
	UnitPrice,
	UnitPrice + 10 AS Plus10,
	UnitPrice * 2 AS Doubled,
	Unitprice * OrderQty As LineTotalCalc
FROM 
	Sales.SalesOrderDetail;
