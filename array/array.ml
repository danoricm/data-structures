(* array.ml *)
let () =
    let arr = [| 1; 2; 3; 4; 5 |] in
    Printf.printf "Array elements are: ";
    Array.iter (Printf.printf "%d ") arr;
    Printf.printf "\n"
