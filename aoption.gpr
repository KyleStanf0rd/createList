with Ada.text_IO; use Ada.Text_IO;
with MakeList;
procedure Aoption is
   --Declarations
   type JobType is (Programmer, Software_Engineer, Sales, Inventory_Control, Customer, Manager);
   package MyStringIO is new Ada.Text_IO.Enumeration_IO(JobType);
   use MyStringIO;
   package MyIntegerIO is new Ada.Text_IO.Integer_IO(integer);
   use MyIntegerIO;
   package MyFloatIO is new Ada.Text_IO.Float_IO(Float);
   use MyFloatIO;


   --Custom 'Put' function. Sorry Dr.Burris, could not find a loophole around this.
   procedure FloatPut(x: float) is
   begin
      MyFloatIO.Put(x, 0, 0, 0);
   end FloatPut;

   procedure IntPut(x: integer) is
   begin
      MyIntegerIO.Put(x, 0);
   end IntPut;

   procedure StringPut(x: JobType) is
   begin
      MyStringIO.put(x);
   end StringPut;



   package Clist is new MakeList(4, integer, Intput, ">");
   package Blist is new MakeList(3, float, FloatPut, ">");
   package Alist is new MakeList(8, JobType, StringPut, ">");




begin

   Clist.AddToList(12);
   Clist.AddToList(432);
   Clist.PrintList;
   Clist.DeleteList(1);
   CList.PrintList;
   Clist.AddToList(234);
   Clist.AddToList(321);
   Clist.PrintList;
   Clist.AddToList(289);
   CList.AddToList(23);
   Clist.PrintList;
   Clist.AddToList(9);
   Clist.DeleteList(5);
   put(integer'image(CList.ListLength));
   New_Line;
   Clist.PrintList;
   Clist.PrintList(2);
   New_Line;
   Put("End Of Clist! Moving to BList");
   New_Line(2);
   --End of Clist


   --Start of Blist!!
   Blist.AddToList(24.5);
   Blist.AddToList(1.12);
   Blist.AddToList(9.233);
   Blist.DeleteList(2);
   Blist.AddToList(23.4);
   Blist.PrintList;
   Blist.DeleteList(2);
   Blist.PrintList;
   Blist.PrintList(2);
   Blist.AddToList(23.2);
   Blist.AddToList(32.3);
   Blist.AddToList(23.234);
   put(Integer'Image(Blist.ListLength));
   New_line;
   Blist.PrintList;
   Blist.AddToList(900.1);
   Blist.AddToList(232.123);
   --End of Blist !!



   Alist.LexAddtoL(Programmer);
   Alist.LexAddtoL(Manager);
   Alist.LexAddtoL(Software_Engineer);
   Alist.LexAddtoL(Programmer);
   Alist.PrintList;
   Alist.LexAddtoL(Sales);
   Alist.LexAddtoL(Software_Engineer);
   Alist.LexAddtoL(Sales);
   Alist.DeleteList(2);
   Alist.LexAddtoL(Customer);
   Alist.PrintList(3);
   Alist.PrintList;
   --End of Alist !!





   null;
end Aoption;
