#!/usr/bin/env bash
filename=$1
dune exec ./test.exe ../mojis/"$filename".moji > scripts/"$filename".py
python3 scripts/"$filename".py