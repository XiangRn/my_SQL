select * from Students
create table Students
(
 StudentId varchar(30) primary key not null,
  Name nvarchar(50),
  Age int,
  JoinOfDate datetime,
)
--xóa quyền khóa chính(tên mặc định của hệ thống sinh ra)
alter table Students
drop constraint PK__Students__32C52B9907ED1DCF
-- thay đổi cột cho nó thành not null
alter table Students
alter column Name nvarchar(50) not null
-- thêm primary key cho 2 cột(VD:'1,A','2,A' 2 cặp này là duy nhất ko trùng nhau)
alter table Students
add constraint PK_Students_StudentID primary key(StudentId, Name)