#!/usr/bin/ruby -w

puts "-------- Unary operator ---------"
puts(~5)    #-6
puts(~-5)   #4
puts(!true) #false
puts(!false)#true

puts "-------- Airthmetic operator ---------"
puts(2+5)   #-7
puts(7-3)   #4
puts(3*6)   #18
puts(64/16) #4
puts(21%5)  #1
puts(2**5)  #32

puts "-------- Bitwise operator ---------"
puts(2&5)   #0
puts(2|5)   #7
puts(5<<1)  #10
puts(10>>1) #5
puts(5^3)   #6
puts(~3)    #-4

puts "-------- Logical operator ---------"
puts((5>2) && (20>12))  #true
puts((5>2) && (20<12))  #false
puts((5<2) && (20<12))  #false

puts((5>2) || (20>12))  #true
puts((5>2) || (20<12))  #true
puts((5<2) || (20<12))  #false

puts "-------- Ternary operator ---------"
puts(2<5 ? 5:2) #5
puts(5<2 ? 5:2) #2

puts "-------- Assignment operator ---------"
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

puts "-------- Comparison operator ---------"
puts(2 == 5)    # false
puts(2 != 5)    # true
puts(2 > 5)     # false
puts(2 < 5)     # true
puts(2 >= 2)    # true
puts(2 <= 3)    # true

