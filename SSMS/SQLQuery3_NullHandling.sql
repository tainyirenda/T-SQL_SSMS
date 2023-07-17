SELECT
	FirstName,
	MiddleName,
	LastName,
	FirstName + ' ' + ISNULL(MiddleName, ' ') + ' ' + LastName AS FullName,
	FirstName + ' ' + COALESCE(MiddleName, NULL, ' ') + ' ' + LastName AS FullName2
FROM 
	[Person].[Person]
WHERE
	LEFT(LastName, 1) = 'S'
