# Ruby: loops

## while loop
```ruby
while i < num  do
    puts("while = #{i}")
    i +=1
end
x = 5
while x >= 0    
    puts("while = #{x}")  
    x -=1   
end
```

## do while loop
```ruby
ans = 0
loop do
    puts "Checking for a match"   
    if ans == 5
        break   
    end
    ans += 1
end
```

## while modifier
```ruby
i = 0
begin
    puts("Inside the loop i = #{i}" )
    i += 1
end while i < 5
```

## for loop
for loop is used if a program has fixed number of iterations.
```ruby
a = 10
for i in 1..a do   
    puts i   
end
```
## loop using array
```ruby
x = ["Blue", "Red", "Green", "Yellow", "White"]   
for i in x do   
    puts i   
end
```

## until loop
```ruby
i = 1
until i == 10
    puts i * 10
    i += 1
end
```

## until modifier
```ruby
i = 0
begin
    puts "#{i}"
    i += 1
end until i > 5
```







