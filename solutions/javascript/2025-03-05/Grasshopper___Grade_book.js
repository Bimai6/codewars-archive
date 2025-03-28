/*
Kata: Grasshopper - Grade book
Language: javascript
Completed At: 2025-03-05 12:24:56
https://www.codewars.com/kata/grasshopper---grade-book


Complete the function so that it finds the average of the three scores passed to it and returns the letter value associated with that grade.

Numerical Score	Letter Grade
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'
Tested values are all between 0 and 100. Theres is no need to check for negative values or values greater than 100.
*/

function getGrade (s1, s2, s3) {
  let scores = [s1, s2, s3]
  let scoreSum = scores.reduce((acc, num) => acc + num, 0);
  let score = scoreSum / scores.length
  return score < 60 ? 'F' : score < 70 ? 'D' : score < 80 ? 'C' : score < 90 ? 'B' : score <= 100 ? 'A' : undefined
}