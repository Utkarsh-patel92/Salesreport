-- Cleansed DIM_Datetable --
SELECT 
  [DateKey], 
  [FullDateAlternateKey] As date, 
  -- ,[DayNumberOfWeek],
  [EnglishDayNameOfWeek] As Day, 
  --   ,[SpanishDayNameOfWeek]
  ---,[FrenchDayNameOfWeek]
  -- ,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  [WeekNumberOfYear] As WeekNr, 
  [EnglishMonthName] As Month, 
  Left([EnglishMonthName], 3) As MonthShort, 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  [MonthNumberOfYear] As MonthNo, 
  [CalendarQuarter]As Quarter, 
  [CalendarYear] As Year --   ,[CalendarSemester]
  -- ,[FiscalQuarter]
  -- ,[FiscalYear]
  -- ,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
WHERE 
  CalendarYear >= 2019
