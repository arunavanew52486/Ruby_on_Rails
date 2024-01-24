# Ruby: Excepion

Ruby **exception is an object**, an instance of the **class Exception** or descendent of that class.

It represents some exceptional condition. By default Ruby program terminates on throwing an exception.

We can declare some exception handlers within Ruby. An exception handler is a block of code which is executed when exception occurs in some other block of code.

Ruby provide a nice mechanism to handle exceptions. We enclose the code that could raise an exception in a begin/end block and use rescue clauses to tell Ruby the types of exceptions we want to handle.

**Syntax:**
```
begin  
    # -  
    rescue OneTypeOfException  
    # -  
    rescue AnotherTypeOfException  
    # -  
    else  
    # Other exceptions
    ensure
    # Always will be executed
end
```

## Ruby Class Exceptions
Built-in subclasses of exception are as follows:
- NoMemoryError
- ScriptError
- SecurityError
- SignalException
- StandardError
- SystenExit
- SystemStackError
- fatal - impossible to rescue

***Example***
```ruby
def raise_exception
    puts 'I am before the raise.'
    raise 'oops! An error has occured'
    puts 'I am after the raise'
end
raise_exception()
```

## Handling an Exception
```ruby
def raise_and_rescue
    begin
        puts 'Before the raise.'
        raise 'An error occured.'
        puts 'After the raise.'
    rescue
        puts 'Code rescued.'
    end
    puts 'After the begin block.'
end
raise_and_rescue
```
**Output**
```
Before the raise.
Code rescued.
After the begin block.
```
If **no argument** is defined in the rescue clause, the parameter defaults to **StandardError**.
```
begin  
    code..  
    rescue OneTypeOfException  
        code..  
    rescue AnotherTypeOfException  
        code..  
    else  
        # Other exceptions  
end  
```
In the begin block, each rescue clause with the raised exception will be **compared against each of parameters** in turn. It will be matched when the type of error thrown and exception named in the rescue clause is **either same or is a superclass** of that exception.

Exceptions if not handled by one rescue clause will br handled with the next one.

The **else clause** is executed if **body of begin statement is completed without exceptions**. If an **exception occurs, else clause will not be executed.**

**Example:**
```ruby
begin
    puts "first line"
    rescue ScriptError
        puts "second line"
    rescue NoMemoryError
        puts "Third line"
    else
        puts "Other lines...."
end
# first line
# Other lines....
```
```ruby
puts "\n\n"
begin
    puts "first line"
    raise "Oops"
    rescue ScriptError
        puts "second line"
    rescue NoMemoryError
        puts "Third line"
    else
        puts "Other lines...."
end
# first line
# 16.Exceptions/exception1.rb:25:in `<main>': Oops (RuntimeError)
```

## Exception Object
Exception objects are **normal objects**. A rescued exception can be hold to a variable within the rescue clause.
```ruby
begin
    raise 'an exception'
    rescue StandardError => e
    puts "Exception Class: #{ e.class.name }"   # RuntimeError
    puts "Exception Message: #{ e.message }"    # an exception
    puts "Exception Backtrace: #{ e.backtrace }"# ["16.Exceptions/exception1.rb:57:in `<main>'"]
end
```
The Exception class defines two methods that return details about the exception.

The **message method** returns a string that define the **explanation of error**.

The **backtrace method** returns an **array of string** that represent the **call stack at that point where exception was raised.**

## Using retry Statement
Usaually in a rescue clause, the exception is captured and code resumes after begin block.

Using **retry** statement, the **rescue block code** can be **resumed from begin** after capturing an exception.
```
    begin  
       code....  
    rescue  
        # capture exceptions  
        retry  # program will run from the begin block  
    end  
```
```ruby
y = "alreadyExist"
begin
    x = Dir.mkdir(y)
    if x
        puts "Directory created"
    end
rescue
    y = "newDir"
    retry
end
# First it will create 'alreadyExist' dir, but if we run it again, it will throw an exception, and go to rescue block, then it will retry from begin block, and this time it will create the folder 'newDir'
```



## Using raise Statement

## Using ensure Statement

## Using else Statement

## Ruby Catch and Throw

