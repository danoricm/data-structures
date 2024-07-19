// array.pas
program ArrayExample;

var
    arr: array[1..5] of integer = (1, 2, 3, 4, 5);
    i: integer;

begin
    Write('Array elements are: ');
    for i := 1 to 5 do
        Write(arr[i], ' ');
    WriteLn;
end.
