Link: https://www.w3schools.com/java/java_lambda.asp#:~:text=Lambda%20Expressions%20were%20added%20in,the%20body%20of%20a%20method.

Lambda Expressions were added in Java 8.

*A lambda expression is a short block of code which takes in parameters and returns a value. Lambda expressions are similar to methods, but they do not need a name and they can be implemented right in the body of a method.*

```java
 parameter -> expression 
(parameter1, parameter2) -> expression 
(parameter1, parameter2) -> { code block } 
() -> {code block} 
```
  

## Examples
### ArrayList class provides forEach method that supports lambda expression.

> public void forEach([Consumer](https://docs.oracle.com/javase/8/docs/api/java/util/function/Consumer.html "interface in java.util.function")<? super [E](https://docs.oracle.com/javase/8/docs/api/java/util/ArrayList.html "type parameter in ArrayList")> action)
> Description copied from interface: [Iterable](https://docs.oracle.com/javase/8/docs/api/java/lang/Iterable.html#forEach-java.util.function.Consumer-)

> Performs the given action for each element of the Iterable until all elements have been processed or the action throws an exception. Unless otherwise specified by the implementing class, actions are performed in the order of iteration (if an iteration order is specified). Exceptions thrown by the action are relayed to the caller.

```java
ArrayList<Integer> numbers = new ArrayList<Integer>();
numbers.add(5);
numbers.add(9);
numbers.add(8);
numbers.add(1);

numbers.forEach( (n) -> { System.out.println(n); } );
```
Lambda expressions can be stored in variables if the variable's type is an interface which has only one method. The lambda expression should have the same number of parameters and the same return type as that method. Java has many of these kinds of interfaces built in, such as the Consumer interface (found in the java.util package) used by lists.

### Using Consumer interface for above example.
```java
ArrayList<Integer> numbers = new ArrayList<Integer>();
numbers.add(5);
numbers.add(9);
numbers.add(8);
numbers.add(1);

Consumer<Integer> method = (n) -> { System.out.println(n); };
numbers.forEach( method );
```
```
5
9
8
1
```
  

> [@FunctionalInterface](https://docs.oracle.com/javase/8/docs/api/java/lang/FunctionalInterface.html)
> public interface Consumer<T>

> Represents an operation that accepts a single input argument and returns no result. Unlike most other functional interfaces, Consumer is expected to operate via side-effects.

> This is a [functional interface](https://docs.oracle.com/javase/8/docs/api/java/util/function/package-summary.html) whose functional method is [accept(Object)](https://docs.oracle.com/javase/8/docs/api/java/util/function/Consumer.html#accept-T-).

### Create a method which takes a lambda expression as a parameter:
```java
interface StringFunction {
   String run(String str);
}

public class Main {

  public static void main(String[] args) {
    StringFunction exclaim = (s) -> s + "!";
    StringFunction ask = (s) -> s + "?";

    printFormatted("Hello", exclaim);
    printFormatted("Hello", ask);
  }

  public static void printFormatted(String str, StringFunction format) {
    String result = format.run(str);
    System.out.println(result);
  }
}
```
```
Hello!
Hello?
```
###  Another example

HashMap  compute

> default [V](https://docs.oracle.com/javase/8/docs/api/java/util/Map.html) compute([K](https://docs.oracle.com/javase/8/docs/api/java/util/Map.html) key, [BiFunction](https://docs.oracle.com/javase/8/docs/api/java/util/function/BiFunction.html)<? super [K](https://docs.oracle.com/javase/8/docs/api/java/util/Map.html),? super [V](https://docs.oracle.com/javase/8/docs/api/java/util/Map.html),? extends [V](https://docs.oracle.com/javase/8/docs/api/java/util/Map.html)> remappingFunction)

> Attempts to compute a mapping for the specified key and its current mapped value (or null if there is no current mapping). For example, to either create or append a String msg to a value mapping:

> map.compute(key, (k, v) -> (v == null) ? msg : v.concat(msg))

There is Function<T,R> interface for single operation.

```java
addFieldCount("state", "CA")
addFieldCount("state", "CA")
addFieldCount("state", "VA")
addFieldCount("state", "va")
addFieldCount("state", "CA")
```
// {state={va=2, ca=3}}
```java
private void addFieldCount(String field, String fieldValue) {

	Map<String, Integer> fieldMap = fieldsMap.getOrDefault(field, new HashMap<>());

	if (StringUtils.isNotBlank(fieldValue)) {
		fieldMap.compute(fieldValue.toLowerCase(), (k, v) -> (v == null) ? 1 : v + 1);
	}

	fieldsMap.putIfAbsent(field, fieldMap);
}
```