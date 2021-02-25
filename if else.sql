--Lấy ra giá trung bình của sản phẩm
--select * from Products
--Ví dụ kiểm tra xem Gía mỗi sp có lớn hơn giá trung bình hay không
begin
declare @GiaTrungBinh float
select @GiaTrungBinh=avg(Price) from Products
print @GiaTrungBinh
declare @MaSP char(10)=5
--nếu mà Gía của Mã SP> Gía Trung Bình
-- Xuất ra lớn hơn
-- Ngược lại xuất ra nhỏ hơn
declare @GiaMaSP float
 select @GiaMaSP=Price from Products where ProductId= @MaSP
 print @GiaTrungBinh
 if(@GiaMaSP>@GiaTrungBinh)
   Begin-- muốn một lần chạy nhiều dòng lệnh thì thêm begin và end
   
      print N'Lớn hơn'
   End
   else
   begin
   print N'Nhỏ hơn'
   end
   end
--Ví dụ 2: Nếu mà Gia SP lon hon Gia TB thì thay đổi hết tất cả các giá
declare @GiaTrungBinh float
select @GiaTrungBinh=avg(Price) from Products
declare @Gia float=21
if(@Gia>@GiaTrungBinh)
 begin
   begin tran
   update Products set Price=@Gia where  ProductName like 'a%'
 end
else 
begin
 begin tran
   update Products set Price=@Gia
   end

   select * from Products
   rollback