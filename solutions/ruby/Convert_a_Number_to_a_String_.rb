Kata: Convert a Number to a String!
URL: https://www.codewars.com/kata/convert-a-number-to-a-string
Language: ruby
Completed At: 2025-03-04

=begin
We need a function that can transform a number (integer) into a string.

What ways of achieving this do you know?
=end

=begin
Examples (input --> output):
123  --> "123"
999  --> "999"
-100 --> "-100"
=end

def number_to_string(num)
    num.to_s
end