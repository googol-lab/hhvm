(**
 * Copyright (c) 2015, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the "hack" directory of this source tree.
 *
 *)

open ServerCommandTypes.Find_refs

val to_json: result -> Hh_json.json

val get_refs :
  action -> bool -> ServerEnv.genv -> ServerEnv.env -> (string * Pos.t) list

val go : action -> bool -> ServerEnv.genv -> ServerEnv.env -> result

val go_from_file :
  (ServerCommandTypes.labelled_file * int * int * bool) -> ServerEnv.genv -> ServerEnv.env ->
    ide_result
