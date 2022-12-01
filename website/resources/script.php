<!-- # #!/bin/sh
# rm -rf _build
# dune build
# dune exec ./test.exe user_input.txt -->

<?php
if ($_GET['run']) {
  # This code will run if ?run=true is set.
  exec("test.sh");
}
?>