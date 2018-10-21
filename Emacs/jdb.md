## JDB Basic commands

1. public class Test
2. {
3.    public static void main(String[] args) {
4.        double b = 5.5;
5.
6.        double result = b * 50;
7.        System.out.println("Result1: " + result);
8.        double newresult = result * b;
9.
10.        System.out.println(newresult);
11.    }
12. }

## Compilation
javac -g Test.java

## Load in emacs
M-x jdb
> jdb Test

## Commands

jdb> help   # Shows most commands
jdb> run # After starting jdb and setting break points, use this to start execution
jdb> cont # Continues executin of debugged application after a breakpoint, exception, or step
jdb> print # Displays java objects and primitive values
jdb> dump # Primitive + Object values
jdb> threads # List all threds
jdb> thread # Select one thread as active
jdb> where # Dumps stack of current thread

## Examples

> stop at Test:6
> stop in Test.main
> stop in Test.result
> run Test
> run # Stop at main() method, and shows that information in output
> cont # continues program execution

## JDB Stepping
1. public class Add
2. {
3.   public int addition( int x, int y)
4.   {
5.      int z = x+y;
6.      return z;
7.   }
8.   public static void main( String ar[ ] )
9.   {
10.      int a = 5, b = 6;
11.      Add ob = new Add();
12.      int c = ob.addition(a,b);
13.      System.out.println("Add: "+c);
14.   }
15. }

> stop in Add:11
> stop in Add:12
> cont
> locals
> list  # show source code
> step # Execute current line. Stop at method entry
> step out
> print ob
> print ob.addition(5,3)
> next  # Execute current line. Don't stop at method entry
> step up # Execute until current method returns to its caller
> set x = 50
> set z = x + y
> print z



http://pages.cs.wisc.edu/~horwitz/jdb/jdb.html
