use Tedu
alter table Student
add Address nvarchar(50)

--thêm 1 cột mới trong bảng
alter table Student
add Province nvarchar(50), District nvarchar(50)

--sửa kiểu dữ liệu
alter table Student
alter column DateOfBirth varchar(50)


--xóa cột trong bảng
alter table Student
drop column Address

--đổi tên cột cú pháp tên bảng.tên cột cũ
sp_rename 'Student.Province', 'Address','Column'

alter table Student
alter column Age varchar(50)
