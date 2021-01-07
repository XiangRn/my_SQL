--select ra những giá trị duy nhất, không trùng lặp, loại bỏ những giá trị trùng nhau
select distinct Country , City from Customers

--select top muốn lấy ra bao nhiêu giá trị
select top 3 CustomerName from Customers 

--select top lấy giá trị ra mà có contactName tăng dần theo bảng chữ cái
select top 2 CustomerName from Customers order by ContactName

--select top lấy giá trị ra mà có contactName giảm dần theo bảng chữ cái
select top 2 CustomerName, ContactName from Customers order by ContactName desc
--select top giá trị nơi mà có country là mexico
select top 2 CustomerName from Customers where Country='Mexico'
select * from Customers

select * from Products
--select lấy ra giá trị nhỏ nhất của giá
select min(price) from Products
--select lấy ra giá trị lớn nhất của giá
select max(price) from Products

--select count
select count (*)from Products where Price>20

--select tổng giá trị trung bình của toàn bộ 1 cột
--select tổng giá trị trung bình của giá
select avg(Price) from Products 

--select tổng giá trị của giá(as là đặt tên cho cột tính tổng)
select  sum(Price) as TongGia from Products 
--as keyword đưa cho table 1 cái tên tạm thời để sử dụng, chỉ tồn tại trong câu query, chỉ hiển thị ra 1 lần
select ProductId as STT from Products

--select union nối  2 bảng lại với nhau, loại bỏ những dòng trùng nhau, kiểu dữ liệu các cột phải tương đồng nhau mới nối được
select * from Products
union 
select * from Products1

update Products1 set Unit = null where ProductId=11
--select những giá trị null thì sẽ gán giá trị mặc định
select ProductId, ISNULL(Unit,'unit null') from Products1

--select into(sao chép sang 1 bảng khác)
select * into Products2 from Products 
select * from Products2

