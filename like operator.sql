--toán tử like chỉ tìm kiếm giá trị tương đối
select * from Customers
where CustomerName like 'a%'

select * from Customers
where CustomerName like '%a'
--Tìm kiếm từ nào có chứa ký tự 'or' ở giữa
select * from Customers
where CustomerName like '%or%'
--tìm kiếm r là ký tự thứ 2, còn dấu '_' là ký tự đầu tiên
select * from Customers
where CustomerName like '_r%'
--ký tự '%' có nghĩa là một chuỗi ký tự bất kỳ
select * from Customers
where CustomerName like 'a_%_%'
--bắt đầu bắt a và kết thúc bằng e
select * from Customers
where CustomerName like 'a%%e'
