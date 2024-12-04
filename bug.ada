```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (others => 0); -- Initialize array

   function Get_Value (Index : Integer) return Integer is
   begin
      if Index in 1..10 then
         return A(Index);
      else
         raise Constraint_Error; -- Handle out-of-bounds access
      end if;
   end Get_Value;

begin
   -- Correct usage
   A(5) := 10;
   Put_Line("Value at index 5: " & Integer'Image(Get_Value(5)));

   -- Incorrect usage: potential for Constraint_Error
   Put_Line("Value at index 15: " & Integer'Image(Get_Value(15)));
   -- Exception handling can mitigate it but doesn't prevent the error
end Example;
```