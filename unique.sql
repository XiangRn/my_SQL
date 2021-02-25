--unique đảm bảo tính duy nhất cho tất cả giá trị, mà không phải là khóa chính
drop table Person
create table Person
(
   PersonId int primary key,
   IdentityNo varchar(20) unique,
   Name nvarchar(50),
)
insert into Person values(1,'123','Heidy')
insert into Person values(2,'133','Heidy')
--hoặc nếu chưa thêm trực tiếp vào bảng thì có thể dùng câu lệnh này để thêm constraint unique
alter table Person
add constraint UC_PersonId unique(PersonId)