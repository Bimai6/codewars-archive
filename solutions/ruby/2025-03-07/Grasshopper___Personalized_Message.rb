Kata: Grasshopper - Personalized Message
Language: ruby
Completed At: 2025-03-07 13:34:58
https://www.codewars.com/kata/grasshopper---personalized-message

=begin
Create a function that gives a personalized greeting. This function takes two parameters: name and owner.

Use conditionals to return the proper message:

case	return
name equals owner	'Hello boss'
otherwise	'Hello guest'
=end

def greet(name,owner) 
    return name == owner ? 'Hello boss' : 'Hello guest'
  end