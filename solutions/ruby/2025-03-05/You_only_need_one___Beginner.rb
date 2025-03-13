Kata: You only need one - Beginner
Language: ruby
Completed At: 2025-03-05 11:30:52
https://www.codewars.com/kata/you-only-need-one---beginner

=begin
You will be given an array a and a value x. All you need to do is check whether the provided array contains the value.

a can contain numbers or strings. x can be either.

Return true if the array contains the value, false if not.
=end

def check(arr,element)
    arr.include?(element)
end