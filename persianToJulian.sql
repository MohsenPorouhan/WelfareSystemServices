Select dbo.[UDF_Julian_To_Gregorian](dbo.[UDF_Persian_To_Julian](1397,7,18))

Select dbo.[UDF_Gregorian_To_Persian](CONVERT(varchar, getdate(), 23)) as [Persian Date]

SELECT CONVERT(varchar, getdate(), 23)

select GETDATE()

Select dbo.[UDF_Gregorian_To_Persian](CONVERT(varchar, '2018-10-10 22:20:32.290', 23)) as [Persian Date]



select dbo.JalaliToGregorian('1395/06/11','/')

SELECT CONVERT(varchar, dbo.JalaliToGregorian('1397/10/24','/'), 23)vvv

select DATEDIFF(dd, CONVERT(varchar, dbo.JalaliToGregorian('1397/07/27','/'), 23), CONVERT(varchar, dbo.JalaliToGregorian('1397/06/31','/'), 23)) AS DaysDiff

SELECT CONVERT(date,dbo.JalaliToGregorian('95/06/11','/'))