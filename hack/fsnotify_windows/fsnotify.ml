exception Error of string * int

type env = unit

type watch = unit

type event = {
  path : string;
  wpath : string;
}

let init roots = ()

let add_watch env path = None

type fd_select = Unix.file_descr * (unit -> unit)

let select env ?(read_fdl=[]) ?(write_fdl=[]) ~timeout callback = ()
