#!/usr/bin/env bash
filename=$1
dune exec ./test.exe ../mojis/"$filename".moji > scripts/"$filename".js
node scripts/"$filename".js