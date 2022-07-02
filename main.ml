(* Problem 01 *)
let rec last (xs: 'a list): 'a option = 
	match xs with
		| [] -> None
		| [x] -> Some x
		| _ :: rest -> last rest

(* Problem 02 *)
let rec last_two (xs: 'a list): ('a * 'a) option =
	match xs with
		| [] -> None
		| [_] -> None
		| [x; y] -> Some (x, y)
		| _ :: rest -> last_two rest

(* Problem 03 *)
let rec at (k: int) (xs: 'a list): 'a option =
	match xs with
		| x :: rest when k == 1 -> Some x
		| _ :: rest when k > 1 -> at (k - 1) rest
		| _ -> None

let () = 
	print_endline "Hello world"
