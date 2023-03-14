--Cleansed FactInternetSales--
SELECT [ProductKey]
      ,[OrderDateKey]
      --,[DueDateKey]
      --,[ShipDateKey]
      ,[CustomerKey]
     -- ,[PromotionKey]
     -- ,[CurrencyKey]
      --,[SalesTerritoryKey]
      ,[SalesOrderNumber]
     -- ,[SalesOrderLineNumber]
     -- ,[RevisionNumber]
      --,[OrderQuantity]
      --,[UnitPrice]
      --,[ExtendedAmount]
     -- ,[UnitPriceDiscountPct]
     --,[DiscountAmount]
      --,[ProductStandardCost]
     -- ,[TotalProductCost]
      ,[SalesAmount]
      --,[TaxAmt]
     -- ,[Freight]
     -- ,[CarrierTrackingNumber]
     -- ,[CustomerPONumber]
     -- ,[OrderDate]
     -- ,[DueDate]
     -- ,[ShipDate]
  FROM
  [dbo].[FactInternetSales]
  WHERE 
  LEFT(OrderDateKey,4) >= YEAR('2021') -2
  ORDER BY 
  OrderDateKey ASC