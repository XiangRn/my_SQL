--nếu không trực tiếp thêm constraint not null vào lúc tạo bảng
--thì có thể sửa nó
alter table Person
alter column IdentityNo varchar(20) not null
