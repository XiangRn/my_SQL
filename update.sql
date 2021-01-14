select * from Products
--nếu không có where nó sẽ update tất cả các dòng trong bảng
update Products set Price =17 where ProductId =1
--update nhiều cột
update Products set Price =18, CategoryId=2 where ProductId=1