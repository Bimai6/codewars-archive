Kata: How good are you really?
URL: https://www.codewars.com/kata/how-good-are-you-really
Language: ruby
Completed At: 2025-03-04

=begin
There was a test in your class and you passed it. Congratulations!

But you're an ambitious person. You want to know if you're better than the average student in your class.

You receive an array with your peers' test scores. Now calculate the average and compare your score!

Return true if you're better, else false!

Note:
Your points are not included in the array of your class's points. Do not forget them when calculating the average score!
=end


def better_than_average(arr, points)
    points > arr.inject{ |sum, el | sum + el }.to_f / arr.size
end