SELECT
	GETDATE() AS SystemTime,
	DATEPART(YEAR, GETDATE()) AS SystemYear,
	YEAR(GETDATE()) AS SystemYear2,
	MONTH(GETDATE()) AS SystemMonth,
	FirstName
FROM 
	[Person].[Person]
