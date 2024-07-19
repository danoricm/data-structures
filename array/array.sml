(* array.sml *)
val arr = [1, 2, 3, 4, 5]
val _ = print ("Array elements are: " ^ String.concatWith " " (List.map Int.toString arr) ^ "\n")
