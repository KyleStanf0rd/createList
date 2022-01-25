with Ada.Text_IO; use Ada.Text_IO;

package body CreateList is
   package MyIntegerIO is new Ada.Text_IO.Integer_IO(integer);
   use MyIntegerIO;
   package MyFloatIO is new Ada.Text_IO.Float_IO(Float);
   use MyFloatIO;
   
   --Declarations
   subtype index is integer range 1..capacity;
   front : integer := 0;
   count : integer;
   arr:array(index) of item; 
   k : integer;
   top: integer range 0..capacity; -- start at 0 so there is always a free space in memory

   
   --AddToList()
   procedure AddToList(x: item) is
   begin
      if top < capacity then
         top := top + 1; arr(top):= x;
      else
         New_Line;
         put("Error, stack is full!");
         New_Line;
      end if;
   end AddToList;
   
   
    --ListLength
   function ListLength return integer is
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
         put(arr(k));
         if k /= top then
            put(", ");
         end if;
         end loop;
      put("]");
      New_Line;
   end PrintList;

   
  --DeleteList()
   procedure DeleteList(x : in integer) is
      k: integer := x;
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
   procedure PrintList(x : in integer) is
   begin
      New_line(2);
      put("Your specified element in the array is : ");
      put(arr(x));
      New_Line(2);
   end PrintList;
   
 
begin
   top := 0;
   count := 0;
   
   --Do this so generic instantiation calls are always started back where they belong.
end CreateList;
