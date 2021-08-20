--Cleansed Dimension Customer Table---------
SELECT c.CustomerKey AS CustomerKey
     -- ,[GeographyKey]
     -- ,[CustomerAlternateKey]
     -- ,[Title]
      ,c.firstname AS [First Name]
      --,[MiddleName]
      , c.lastname AS [Last Name]
	  , c.firstname + ' ' + lastname AS [Full Name]
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
	  , c.gender as Test
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      , c.datefirstpurchase AS DateFirstPurchase
      --,[CommuteDistance]
	  ,g.city AS [Customer City]     ------Joined in Customer City from geography table
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS g
  ON g.GeographyKey = c.GeographyKey
  ORDER BY 
    CustomerKey ASC        ---------Ordered List by customerkey
