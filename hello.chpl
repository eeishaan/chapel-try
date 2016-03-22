proc f():string{
	var s = "hello-world";
    return s;
}
proc main(){
	var temp$ :single string;
	begin temp$ = f();
	var aFuture = temp$;
	writeln("Printing...");
	writeln(aFuture);
}