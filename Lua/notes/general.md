# Lua Notes

## Day 1

* print <value>
* =<value>, same as ^^^
* Ctrl-D to exit REPL

### Formatting

* No semicolons
* No whitespace significance
* Can put multiple statements on same line

### Types

* Dynamically Typed
* numbers (64 float by default), boolean, string

## Strings

* `..` concatenation operator
* #<String Name> length of string

### Function

```
fuction myFunction()
...
end
```

* Functions are First-Class
* IIFE just like JS

**Lua optimizes tail-call recursion**

### Arguments

Add `...` to arguments list to make in variadic. Access with `{...}`

### Mult. Return Values

`return 'Hello', 'World'`
`string1, string2 = helloWorld()`

## Tables as arguments

```
function myFunc(table){
  print table.greeting
}

myFunc(greeting='Howdy')
```

### Control Flow

```
if condition
...
elseif otherCondition
...
else
...
end
```

```
for var=initial, final, step
...
end
```

```
while condition
...
end
```

### Variables

* global by default
* use `local` for fuction scoping

### Exercises

* `repeat` is do-while loop (test at end)
