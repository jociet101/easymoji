open Syntax

let codegen (_ : prog) : python list =
  [ `Var ("a","poo");
    `Print "hello";
  ]