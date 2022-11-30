let a:() => void = () => {};
let y:number = x;
let z:number = 1;
while (y > 1) {
  z = z * y;
  y = y - 1;
}

const answer:number = 42; // but what is the question?

let my_function: (bar:number) => number = (foo: number) => foo / foo;
let my_other_function: (a:number, b: boolean) => boolean = (x: boolean, y:number) => x || y;

function legit_function(lol:number, rofl:number): void {
  if (false === true) {
    return;
  } else if (pt) {
    return;
  } else if (1 || !2 && 3) {
    return;
  }
}

/*
const fake_code
  =
    much
      indent
        */

const $a1string:string = "Hello, world!\n";
const friendlyString: string = ":)";

do {
  x = x - -1;
} while (x < 10.74);

do console.log("yes"); while (false);

// of or pertaining to the points
interface Pointedly {
  x: number;
  y: number;
}

{
  const myObj : MyType = { /*x: { },*/ y: 7 };
  const myPoint: Pointedly = { x: 44.4, y: 73.7 };
  {
     const emptyObj : MyType= { };
     const emptyFunc: FuncType  = () => {};
     const emptyObjFunc: FuncType = () => ({ });
  }
}

let currying :FuncType = (x: number, z:boolean) => (y:number) => (x + y) * z;

let longOne :number = foo.zoo(you)(who).through;

const f:FType = (a:number, b:number, c:boolean) => {
  let a :number = b;
  let b :number = c;
  let c :number = a;
  let a :number = c;
  return a;
};

let trickyFn:FuncType = (trick:number) => y;
let otherThing :number = (longOne);

if (1) if (2) foo(); else bar.baz();

({ }).nonexistingMethod();

let x: boolean = 0;
while (x < 1) x = x + 1;
x = { };

{}

function emptyF():void {}

const object: {
  foo: string;
} = {
  foo: "bar",
  baz: "qwerty",
  age: 42
};

object.foo = 5 * 100.3;

function func(p: boolean):boolean {
  return { };
}

const arrow: (x:number) => boolean = (x:number) => x;

func({ });

interface Unconstrained {}

const orAssoc:boolean = a || b || c;
const andAssoc:boolean = a && b && c;
const plusMinusAssoc:number = 1 - 2 + 3;
const timesDivAssoc:number = 1 / 2 * 3;
const prec :boolean = 1 - 2 * 3 === 1 + 2 / 3 && x.a * y + z(7) === 1 / 2 - 3;
