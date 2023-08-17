CLox is a dynamically typed scripting language compiled and interpreted via a bytecode virtual machine written in C. The bytecode interpreter allows CLox programs to be executed efficiently while providing a level of abstraction above direct machine code execution. Here's a brief overview of how CLox is compiled and interpreted

## Lexing and Parsing
The first step is lexing (tokenization) and parsing the source code. The source code is divided into tokens (individual language elements like keywords, identifiers, operators, etc.).

## Semantic Analysis and Compilation
During parsing (Pratt Parsing), semantic analysis is performed to detect and report errors in the code. As this phase is completing, bytes are continuously emitted as bytecode instructions. Bytecode instructions are low-level representations of the high-level code that the interpreter can understand.

## Bytecode interpretation
The bytecode interpreter is a loop that fetches bytecode instructions one by one and executes them. The interpreter's job is to execute these instructions in sequence, managing variables, memory, and control flow based on the bytecode. It maintains a stack to handle function calls, expressions, and other operations.

## Memory Management
The interpreter handles memory management, including allocating memory for objects (such as strings or arrays) and garbage collection to free memory that is no longer needed.

## RunTime Execution
As the interpreter runs through the bytecode, it performs operations such as arithmetic, function calls, and control flow (loops and conditionals) based on the instructions it encounters.

# CLox Grammar
Each statement in CLox is gracefully concluded with a semicolon for neat and organized code.
## Variable Declaration and Instantiation
In CLox, declaring variables is straightforward using the ```var``` keyword. Here's an example:
```
  Var printThree = 3;
  print(printThree);
```
Will output ```3```.

## Function Declarations
Functions are a fundamental cornerstone of CLox, and they're declared using the fun keyword. The return keyword is utilized to yield values from functions. Let's delve into an example:
```
  fun deductThree(n) {
    return n-3;
  }

  print(deductThree(5));
```
Will output ```2```

## ```For``` and ```While``` loops
CLox supports both for and while loops, adopting a familiar Java-like syntax. Let's take a look at examples of both:
```
  var s = "*";
  for(var i = 3; i > 0; i = i-1){
    print(s);
    s = s + "*";
  }
```
This will generate the output:
```
*
**
***
```


```
var i = 3;
var s = "*";
while(i>0){
    print(s);
    s = s + "*";
    i=i-1;
}
```
This will produce the same output:

```
*
**
***
```


## ```if``` and ```else``` statements
CLox allows you to assess the "truthiness" of statements using ```if``` and ```else``` constructs. Here's an example:
```
var n = 5;
var m = 4;
if (n < m) {
    print("5 is less than 4!");
}
else {
    print("4 is less than 5!");
}

```
The above output is:
```
4 is less than 5!
```



## Classes, Objects, and Inheritance
CLox supports object-oriented programming through classes, objects, and inheritance, similar to Java. Here's an example showcasing inheritance:
```
class A {
    method() {
        print("A method");
    }
}

class B < A {
    method() {
        print("B method");
    }
    test() {
        super.method();
    }
}
class C < B {}
C().test();
```
Will output:

```
A method
```

You can also create your own fields within an object:
```
class Cake {
    taste() {
        var adjective = "delicious";
        print("The " + this.flavor + " cake is " + adjective + "!");
    }
}
var cake = Cake();
cake.flavor = "German chocolate";
cake.taste();
```
Will output:

```
The German chocolate cake is delicious!
```
Furthermore, classes can define initializers using the ```init``` keyword:
```
class Foo {
    init() {
        print("Foo");
    }
}
var foo = Foo();
```
Will output:
```
Foo
```
## Error Handling
Error handling is an essential aspect of any programming language, including CLox. CLox employs a comprehensive error handling mechanism to provide clear and informative error messages, aiding developers in identifying and resolving issues in their code. Below is a simple example of calling an undefined variable.

![error tracing.png](images%2Ferror%20tracing.png)
## Setup
Setting up CLox is simple! Compile your ```main.c``` file, and then run the compiled executable, passing the path to your ```lox.txt``` file in /source/ as an argument. You're now ready to go with CLox scripting!

## Examples of more complex programs
![inheritance.png](images%2Finheritance.png)
![method references.png](images%2Fmethod%20references.png)