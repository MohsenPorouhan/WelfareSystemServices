use welfareServices

select p.*,
u.UserName
,r.RoleName
,m.Email
,m.Password
,m.IsApproved
,m.LastLoginDate
,m.LastPasswordChangedDate
from dbo.People p,dbo.aspnet_Users u,dbo.aspnet_Membership m,dbo.aspnet_Roles r,aspnet_UsersInRoles ur
where p.EmployeeNumber=cast(u.UserName as int)
and m.UserId=u.UserId
and r.RoleId=ur.RoleId
and u.UserId=ur.UserId