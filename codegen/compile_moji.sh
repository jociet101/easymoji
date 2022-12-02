#!/usr/bin/env bash
filename=$1
dune exec ./test.exe ../mojis/"$filename".moji > "$filename".py
python3 "$filename".py