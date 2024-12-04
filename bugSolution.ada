```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (others => 0); -- Initialize array

   function Get_Value (Index : Integer) return Integer is
      Result : Integer;
   begin
      if Index in 1..10 then
         Result := A(Index);
      else
         Result := -1; -- Or raise an exception, log an error, etc.
      end if;
      return Result;
   end Get_Value;

begin
   A(5) := 10;
   Put_Line("Value at index 5: " & Integer'Image(Get_Value(5)));

   --Corrected
   Put_Line("Value at index 15: " & Integer'Image(Get_Value(15)));
end Example;
```