let y = x;
let z = 1;
while (y > 1) {
  z = z * y;
  y = y - 1;
}

const answer = 42; // but what is the question?

interface Point {
  /* this... ****
  ... is copied from https://www.typescriptlang.org/docs/handbook/2/classes.html
  */
  x: number;
  y: number;
}

const pt = Point();
pt.x = 0;
pt.y = 0;

const these_are_all_valid_numbers = [
  3.14,
  .00000000006673,
  1.,
  3e8,
  6.62E-34,
  6.02e+23
];

for (const prop in pt) {
  console.log(prop[0] as string);
}

let my_function = (foo: any) => foo / foo;

function legit_function(lol: boolean): void {
  if (true && false === true || true) {
    return;
  } else if (pt instanceof Point) {
    return;
  }
}

/*
const fake_code
  =
    much
      indent
        */

const $a1string = "Hello, world!\n";

do {
  x = x - -1;
} while (x < 10.74);

// of or pertaining to the points
interface Pointedly {
  x: number;
  y: number;
}

import hello;