/* linked_list.re */
let arr = [|1, 2, 3, 4, 5|];
Js.log("Array elements are: " ++ (Array.to_list(arr) |> List.map(string_of_int) |> String.concat(" ")));
