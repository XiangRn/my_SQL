--select order by
-- sẽ sắp xếp country trước rồi tới customername
--where trước rồi mới order by, thứ tự của nó nằm sau câu lệnh where
select * from Customers order by Country desc,CustomerName desc
--trừ khi cột thứ nhất có những giá trị bằng nhau thì nó sẽ so sánh cột thứ 2
select * From BenhNhan order by Tuoi desc, Ten asc
select * from BenhNhan2 order by Tuoi desc, Ten asc