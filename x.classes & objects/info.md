# Ruby: Classes & Objects
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
```ruby
class Customer
end
```

## Variables in a Ruby Class
Ruby provides **four** types of variables −
- **Local Variables** − Local variables are the variables that are defined in a method. Local variables are not available outside the method. Local variables ***begin with a lowercase letter or _***.
- **Instance Variables** − Instance variables are available across methods for any particular instance or object. That means that instance variables change from object to object. Instance variables are ***preceded by the at sign (@)*** followed by the variable name.
- **Class Variables** − Class variables are available across different objects. A class variable belongs to the class and is a characteristic of a class. They are ***preceded by the sign @@*** and are followed by the variable name.
- **Global Variables** − Class variables are not available across classes. If you want to have a single variable, which is available across classes, you need to define a global variable. The global variables are always **preceded by the dollar sign ($)**.

## Creating Objects in Ruby using new Method
    The method new is a unique type of method, which is predefined in the Ruby library.
    The new method belongs to the class methods.
***Example***
```ruby
cust1 = Customer. new
cust2 = Customer. new
```
Here, cust1 and cust2 are the names of two objects. You write the object name followed by the equal to sign (=) after which the class name will follow. Then, the dot operator and the keyword new will follow.

## Custom Method to Create Ruby Objects
- You can pass parameters to method new and those parameters can be used to initialize class variables.
- When you plan to declare the new method with parameters, you need to declare the method initialize at the time of the class creation.
- The initialize method is a special type of method, which will be executed when the new method of the class is called with parameters.
***Example***
```ruby
class Customer
   @@no_of_customers = 0
   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
end
```
- def and end are used to define a Ruby method initialize.
- In the initialize method, you pass on the values of these local variables to the instance variables

We can create objects of this class,
```ruby
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")
```

## Member Functions in Ruby Class
```ruby
class Sample
   def function
      statement 1
      statement 2
   end
end
```
- Each method in a class starts with the keyword **def** followed by the method name.
- The method name always preferred in **lowercase** letters. You end a method in Ruby by using the keyword **end**.

**Example**

```ruby
class Sample
   def hello
      puts "Hello Ruby!"
   end
end
```

**Example 2**
```ruby
#!/usr/bin/ruby

class Sample
   def hello
      puts "Hello Ruby!"
   end
end

# Now using above class to create objects
object = Sample. new
object.hello
```










