SELECT
      FirstName,
	  LEFT(FirstName,3) AS First3,
	  RIGHT(FirstName,3) AS Last3,
	  UPPER(FirstName) AS UpperFirst,
	  LOWER(FirstName) AS LoweFirst,
	  REPLACE(FirstName, 'a', '*') AS ReplaceA,
	  LEN(FirstName) AS LengthofName
FROM 
	[Person].[Person]
