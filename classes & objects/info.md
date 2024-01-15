# Ruby: 2
Ruby is a perfect Object Oriented Programming Language, which include,
- Data Encapsulation
- Data Abstraction
- Polymorphism
- Inheritance

## Defining a Class in Ruby
- A class in Ruby always starts with the keyword **class** followed by the name of the class.
- The name should always be in *initial capitals*.
- You terminate a class by using the keyword end.
***Example***
```
class Customer
end
```

## Variables in a Ruby Class
Ruby provides **four** types of variables −
- **Local Variables** − Local variables are the variables that are defined in a method. Local variables are not available outside the method. You will see more details about method in subsequent chapter. Local variables begin with a lowercase letter or _.
- **Instance Variables** − Instance variables are available across methods for any particular instance or object. That means that instance variables change from object to object. Instance variables are preceded by the at sign (@) followed by the variable name.
- **Class Variables** − Class variables are available across different objects. A class variable belongs to the class and is a characteristic of a class. They are preceded by the sign @@ and are followed by the variable name.
- **Global Variables** − Class variables are not available across classes. If you want to have a single variable, which is available across classes, you need to define a global variable. The global variables are always preceded by the dollar sign ($).

