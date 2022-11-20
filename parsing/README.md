rm -rf _build
dune build
dune exec ./test.exe [filename]
