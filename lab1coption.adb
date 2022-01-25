with Ada.Text_IO; use Ada.Text_IO;

procedure Coption is
   package IIO is new Ada.Text_IO.Integer_IO(integer);
   use IIO;
   type vector is array(integer range<>) of integer;
   i : integer := 0;
   count : integer := 0;
   capacity: constant := 5;
   arr:vector(1..capacity);
   top: integer range 0..capacity; -- start at 0 so there is always a free space in memory


   --AddToList()
   procedure AddToList(x: integer) is
   begin
      if top < capacity then
         top := top + 1; arr(top):= x;
      else
         New_Line;
         put("Error, stack is full!");
      end if;
   end AddToList;


    --ListLength
   function ListLength return Integer is
   begin
      count := 0;
      for k in 1..top  loop
          count := count+1;
      end loop;
      put("The length of the array is : ");
      return count;
   end ListLength;

   --PrintList
   procedure PrintList is
   begin
      put("[");
         for k in 1..top loop
         put(Integer'Image(arr(k)));
         if k /= top then
            put(", ");
         end if;
         end loop;
      put("]");
      New_Line;
   end PrintList;


  --DeleteList()
   procedure DeleteList(x : integer) is
      k : integer := x;
   begin
      if top = 0 then
         put("Error: Stack is empty!");
      else
         for k in x..top-1  loop
            arr(k) := arr(k+1);
         end loop;
         top := top-1;
      end if;
   end DeleteList;


   --PrintList()
   procedure PrintList(x : integer) is
   begin
      New_line(2);
      put("Your specified number in the array is : ");
      put(integer'image(arr(x)));
      New_Line(2);
   end PrintList;




--Begin Procedures
begin
   top:= 0;
   AddToList(12);
   AddToLIst(35);
   AddToList(21);
   AddToList(65);
   PrintList;
   PrintList(1);
   put(integer'image(ListLength));
   New_Line;
   DeleteList(2);
   PrintList;
   put(integer'image(ListLength));
   DeleteList(1);
   New_Line;
   printlist;
   put(integer'image(ListLength));
   PrintList(2);
end Coption;
