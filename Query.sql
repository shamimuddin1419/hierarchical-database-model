with EmployeesWithDesi as 
(
  select employee.EmployeID,employee.Name,designation.Name as DesignaitonName,employee.ReportingTo 
  from [dbo].[tbl_Employee] as employee
  left join [dbo].[tbl_Designation] as designation 
  on designation.DesignationID= employee.DesgiantionID

)
select ED2.EmployeID,ED2.Name as Employee,ED2.DesignaitonName as Designation,ED1.Name as ReportingBoss,ED1.DesignaitonName as ReportingBossDesignaion  from EmployeesWithDesi as ED1
join EmployeesWithDesi as ED2
on ED1.EmployeID=ED2.ReportingTo