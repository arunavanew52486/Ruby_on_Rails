# Ruby: Array

Ruby arrays are ordered, integer-indexed collections of any object. Each element in an array is associated with and referred to by an index.

A negative index that is, an index of -1 indicates the last element of the array, -2 is the next to last element in the array, and so on.

Arrays can hold objects such as String, Integer, Fixnum, Hash, Symbol, even other Array objects. uby arrays grow automatically while adding elements to them.

## Creating Ruby Arrays
- Using literal constructor []
- Using new class method

## Using literal construct []
A Ruby array is constructed using literal constructor []. A single array can contain different type of objects.
```ruby
usr = [4, 4.0, "Jose", 4/2, 'yes', 4+5]
puts usr

usr = Array.[](1, '4', 5.25, "hello", 3*2, 10-6)
puts usr
```


## Using new class method
A Ruby array is constructed by calling ::new method with zero, one or more than one arguments.
```ruby
name1 = Array.new

name2 = Array.new(20)
puts name2.size  # 20
puts name2.length # 20
```
You can assign a value to each element in the array as follows −
```ruby
names = Array.new(4, "mac")
puts names
```
You can also use a block with new, populating each element with what the block evaluates to −
```ruby
nums = Array.new(10) { |e| e = e * 2 }
puts "#{nums}"
```

The Kernel module available in core Ruby has an Array method, it takes a range as an argument to create an array of digits −
```ruby
digits = Array(0..10)
puts "#{digits}"
puts digits.size

digits = Array(0...10)
puts "#{digits}"
puts digits.length

digits = Array('a'..'z')
puts "#{digits}"

digits = Array("a"..."z")
puts "#{digits}"
```

## Accessing Array Elements
Using the #[] method
```ruby
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
puts "#{days}"
puts "#{days[0]}"    # mon
puts " - #{days[10]}"   #nil
puts "#{days[-2]}"   #sat
puts "#{days[2, 3]}" # "Wed", "Thu"
puts "#{days[1..7]}"
```
To access a particular element, **at** method can also be used.
```ruby
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]   
puts days.at(0) # mon
puts days.at(-1)# sun
puts days.at(5) # sat
```

## Common Array methods

### slice method
The slice method works similar to #[] method.

### fetch method
The fetch method is used to provide a default value error for out of array range indices.
```ruby
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]

# puts days.fetch(10)   #Throws error

puts days.fetch(10, "oops")
```

### first and last method
The first and last method will return first and last element of an array respectively.
```ruby
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]   
puts days.first # mon
puts days.last()# sun
```

### take method
The take method returns the first n elements of an array.
```ruby
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]   
puts days.take(1)   # mon
puts days.take(3)   # mon, tue, wed
```

### drop method
The drop method is the opposite of take method. It returns elements after n elements have been dropped.
```ruby
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]   
puts "#{days.drop(5)}"  # "Sat", "Sun"
puts "#{days.drop(2)}"  # ""Wed", Thu", "Fri", "Sat", "Sun"    
```
[Other methods](https://www.tutorialspoint.com/ruby/ruby_arrays.htm)

## Adding Items to Array

Ruby array elements can be added in different ways.

    push or <<
    unshift
    insert


## Removing Items from Array

Ruby array elements can be removed in different ways.

    pop
    shift
    delete
    uniq


