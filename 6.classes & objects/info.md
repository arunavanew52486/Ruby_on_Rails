# Ruby: Classes & Objects
Ruby is a perfect Object Oriented Programming Language, which include,
- Data Encapsulation
- Data Abstraction
- Polymorphism
- Inheritance
## Ruby Object
**Object** is the **default root** of all Ruby objects. Ruby objects inherit from **BasicObject** (it is the **parent class of all classes** in Ruby) which allows creating alternate object hierarchies.

## Defining a Class in Ruby
- Each Ruby class is an instance of class Class.
- A class in Ruby always starts with the keyword **class** followed by the name of the class.
- Conventionally, for class name we use CamelCase, and should start with capital letter.
- Defining class is finished with end keyword.

**Example:**
```ruby
class Customer
    ....
    ....
end
```

## Variables in a Ruby Class
Ruby provides **four** types of variables −
- **Local Variables** − Local variables are the variables that are defined in a method. Local variables are not available outside the method. Local variables ***begin with a lowercase letter or _***.
- **Instance Variables** − Instance variables are available across methods for any particular instance or object. That means that instance variables change from object to object. Instance variables are ***preceded by the at sign (@)*** followed by the variable name.
- **Class Variables** − Class variables are available across different objects. A class variable belongs to the class and is a characteristic of a class. They are ***preceded by the sign @@*** and are followed by the variable name.
- **Global Variables** − Class variables are not available across classes. If you want to have a single variable, which is available across classes, you need to define a global variable. The global variables are always **preceded by the dollar sign ($)**.

## Creating Objects in Ruby using new Method
Objects in Ruby are created by calling new method of the class. It is a unique type of method and predefined in the Ruby library.
Ruby objects are instances of the class.

**Example:**

We have a class named Java. Now, let's create an object java and use it with following command,
```ruby
java = Java.new("John")  
```
The method new is a unique type of method, which is predefined in the Ruby library.

The new method belongs to the class methods.

***Example***
```ruby
class Sample
    def hello
        puts "Hello Ruby!"
    end
end

# Now using above class to create objects
object1 = Sample. new
object2 = Sample.new
object3 = Sample.new()
object1.hello
object2.hello()
object3.hello
```

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
- Ruby methods are similar to the functions in other lnguages.
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









