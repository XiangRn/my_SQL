--declare<Tên con trỏ> cursor for <câu select>
--Open <Tên con trỏ>

--Fetch next from <Tên con trỏ> into <danh sách các biến tương ứng kết quả truy vấn>

--while @@Fetch_status
--begin
--câu lệnh thực hiện
--fetch next lại lần nữa
--Fetch next from <Tên con trỏ> into <danh sách các biến tương ứng kết quả truy vấn>
--end

--close <tên con trỏ>
--deallocate <tên con trỏ>
declare StudentCursor cursor for select Id, Year(GETDATE())-YEAR(DateOfBirth) from Student
open StudentCursor
   declare @Id int, @Age int, @Tuoi int
   
   fetch next from StudentCursor into @Id, @Age
  
   while @@FETCH_STATUS=0
   begin
   
    select @Tuoi=Age from Student where Id=@Id

   if (@Age<>@Tuoi)
   begin
   begin tran
   update Student set Age=@Age where Id=@Id
   end
    fetch next from StudentCursor into @Id, @Age
   end
close StudentCursor
deallocate StudentCursor
select * from Student
rollback