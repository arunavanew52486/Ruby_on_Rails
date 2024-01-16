# Ruby: Operators

## Types of operators:
- Unary operator
- Airthmetic operator
- Bitwise operator
- Logical operator
- Ternary operator
- Assignment operator
- Comparison operator
- Range operator
  
## Unary operator
Unary operators expect a single operand to run on.
| Operator | Description |
| --------- | --------- |
| ! | Boolean NOT |
| ~ | Bitwise Complement |
| + | Unary Plus |
**Example**
```ruby
puts(~5)    #-6
puts(~-5)   #4
puts(!true) #false
puts(!false)#true
```

## Airthmetic operator
Airthmetic operators take numerical values as operands and return them in a single value.
| Operator | Description |
| --------- | --------- |
| + | Addition |
| - | Substraction |
| * | Multiplication |
| / | Division |
| % | Modulus |
| ** | Exponent |
```ruby
puts(2+5)   #-7
puts(7-3)   #4
puts(3*6)   #18
puts(64/16) #4
puts(21%5)  #1
puts(2**5)  #32
```

## Bitwise Operator
Bitwise operators work on bits operands.
| Operator | Description |
| --------- | --------- |
| & | AND |
| \| | OR |
| << | Left Shift |
| >> | Right Shift |
| ^ | XOR |
| ~ | Bitwise Complement |
```ruby
puts(2&5)   #0
puts(2|5)   #7
puts(5<<1)  #10
puts(10>>1) #5
puts(5^3)   #6
puts(~3)    #-4
```

## Logical Operator
Logical operators work on bits operands.
| Operator | Description |
| --------- | --------- |
| && | AND |
| \|\| | OR |
```ruby
puts((5>2) && (20>12))  #true
puts((5>2) && (20<12))  #false
puts((5<2) && (20<12))  #false

puts((5>2) || (20>12))  #true
puts((5>2) || (20<12))  #true
puts((5<2) || (20<12))  #false
```

## Ternary Operator
Ternary operators first check whether given conditions are true or false, then execute the condition.
| Operator | Description |
| --------- | --------- |
| ?: | Conditional Expression |
```ruby
puts(2<5 ? 5:2) #5
puts(5<2 ? 5:2) #2
```

## Assignment Operator
| Operator | Description |
| --------- | --------- |
| = | Normal Assignment |
| += | Add Assignment |
| -= | Substract Assignment |
| *= | Multiply Assignment |
| /= | Division Assignment |
| %= | Modulus Assignment |
| **= | Exponential Assignment |
```ruby
x = 5
puts (x)    #5
x+=1
puts (x)    #6
x-=2
puts (x)    #4
x*=2
puts (x)    #8
x/=4
puts (x)    #2
x=21
x%=5
puts (x)    #1
x=2
x**=5
puts (x)    #32
```

## Comparison Operator
| Operator | Description |
| --------- | --------- |
| == | Equal |
| != | Not Equal |
| > | Greater Than |
| < | Less Than |
| >= | Greater Than Equal |
| <= | Less Than Equal |
| <=> | Combined Comparison |
| .eql? | Equality & Type |
| equal? | Check Object ID |
```ruby
puts(2 == 5)    # false
puts(2 != 5)    # true
puts(2 > 5)     # false
puts(2 < 5)     # true
puts(2 >= 2)    # true
puts(2 <= 3)    # true
```

## Range Operator
| Operator | Description |
| --------- | --------- |
| .. | Range is inclusive of the last item |
| ... | Range is exclusive of the last item |


