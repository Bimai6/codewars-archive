Kata: String repeat
Language: ruby
Completed At: 2025-03-05 08:12:29
https://www.codewars.com/kata/string-repeat

=begin
Write a function that accepts a non-negative integer n and a string s as parameters, and returns a string of s repeated exactly n times.

Examples (input -> output)
6, "I"     -> "IIIIII"
5, "Hello" -> "HelloHelloHelloHelloHello"
=end

def repeat_str (n, s)
    s * n
end