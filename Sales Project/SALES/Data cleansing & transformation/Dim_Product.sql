    --Cleansed DimProduct Table--
SELECT 
  p.[ProductKey],
  p.[ProductAlternateKey] AS ProductItemCode,
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      p.[EnglishProductName] AS ProductName,
	  ps.EnglishProductSubCategoryName AS [Sub Category],
	  pc.EnglishProductCategoryName AS [Product Category],
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      p.[Color] AS [Product Color],
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      P.[Size] AS [Product Size],
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      p.[ProductLine] AS [Product Line],
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      p.[ModelName] AS [Product Model Name],
      --,[LargePhoto]
      --,[EnglishDescription]
      --,[FrenchDescription]
     -- ,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
     -- ,[ThaiDescription]
     -- ,[GermanDescription]
     -- ,[JapaneseDescription]
     -- ,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
       ISNULL (p.Status,'outdated') AS [Product Status]
  FROM
   [dbo].[DimProduct] as p
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductCategory AS pc ON pc.ProductCategoryKey = ps.ProductCategoryKey
  ORDER BY 
  p.ProductKey ASC
