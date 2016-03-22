proc fib(n: int): int {
  if (n <= 1) {
    return n;
  }
  // either the begin block or the future variable must be annotated by type
  var temp$ : single int;
  var second_temp$ : single int;
  
  begin temp$ = fib(n-1);
  begin second_temp$ = fib(n-2);
  
  var n1 = temp$;
  var n2 = second_temp$;

  //var n1 = begin : int { fib(n - 1); };
  // var n2: future(int) = begin { fib(n - 2); };
  // return n1.get() + n2.get();
  return n1+n2;
}

config const n: int = 8;

proc main(){
  // either the begin block or the future variable must be annotated by type
  var temp$: single int;
  begin temp$ = fib(n);
  var actualFutureVariable = temp$;

  //var actualFutureVariable: future(int) = begin { fib(n); };
  begin{
    writeln("hey!!");
  }
  var res = actualFutureVariable;
  writeln("fib(", n, ") = ", res);
}