proc helper(x: int): int {
  writeln("helper(", x, ")");
  return x;
}

proc f(): int {
    helper(1);
    helper(2);
    return helper(3);
}
proc main(){
  var temp$ : single int;
  begin temp$ = f();
  var actualFutureVariable = temp$;
  var res = actualFutureVariable;
  assert(res == 3);
  writeln("actualFutureVariable = ", res);
}