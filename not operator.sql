USE Tedu
select * from Products
--null không thể đi với toán tử '=' được mà phải đi với 'is'
select * from Products where Unit  is null
--toán tử phủ định not, sẽ ra những cái not null
select * from Products where Unit  is not null
--null không thể áp dụng với những toán tử so sánh
