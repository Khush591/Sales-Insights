--Cleansed dimCustomer Table--
SELECT 
  c.CustomerKey AS customerKey, 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.FirstName AS [First Name], 
  --,[MiddleName]
  c.LastName AS [Last Name], 
  c.FirstName + ' ' + c.LastName AS [full Name], 
  --COMBINED FIRST AND LAST NAME--
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.Gender WHEN 'M' THEN 'MALE' WHEN 'F' THEN 'FEMALE' END AS gender, 
  --,[EmailAddress]
  -- ,[YearlyIncome]
  -- ,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  -- ,[EnglishOccupation]
  -- ,[SpanishOccupation]
  --,[FrenchOccupation]
  -- ,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  -- ,[AddressLine1]
  --,[AddressLine2]
  --  ,[Phone]
  c.DateFirstPurchase AS DateFirstPurchase, 
  -- ,[CommuteDistance]
  g.City AS [CustomerCity] --Joined in Customer City from Geography table
FROM 
  dbo.DimCustomer AS c 
  LEFT JOIN dbo.DimGeography as g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC --Ordered list by CusotmerKey
