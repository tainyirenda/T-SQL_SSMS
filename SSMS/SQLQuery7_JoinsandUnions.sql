SELECT E.BusinessEntityID, P.FirstName + ' ' +  P.LastName AS Name, 
	'Employee' AS Source
FROM HumanResources.Employee E 
JOIN Person.Person P ON e.BusinessEntityID = P.BusinessEntityID
UNION ALL 
SELECT V.BusinessEntityID, Name, 
	'Vendor' AS Source
FROM Purchasing.Vendor V 
UNION ALL 
SELECT P.BusinessEntityID, P.FirstName + ' ' + P.LastName, 
	'Customer' 
FROM Sales.Customer C 
JOIN Person.Person P ON P.BusinessEntityID =C.PersonID;