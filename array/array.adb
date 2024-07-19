-- array.adb
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Array_Example is
    Arr : array (1 .. 5) of Integer := (1, 2, 3, 4, 5);
begin
    Put("Array elements are: ");
    for I in Arr'Range loop
        Put(Arr(I)'Img & " ");
    end loop;
    New_Line;
end Array_Example;
