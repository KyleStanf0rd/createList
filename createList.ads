generic 
   capacity : in natural := 6;
   type item is private;
   with procedure Put(x: item); --Made my own seperate 'put' functions 
   
package CreateList is
   procedure AddToList(x: in item);
   function ListLength return integer;
   procedure PrintList;
   procedure DeleteList(x: in integer);
   procedure PrintList(x: in integer);
end CreateList;
