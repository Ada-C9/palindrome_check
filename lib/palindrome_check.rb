require 'pry'
# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase == nil
  reversed_phrase = string_reverse(my_phrase)
  is_palindrome(my_phrase, reversed_phrase)
end

def is_palindrome(some_phrase, reversed_phrase)
  i = 0
  some_phrase.length.times do |x|
    if some_phrase[x] != " " && some_phrase[x] != reversed_phrase[i]
      return false
    elsif some_phrase[x] == reversed_phrase[i]
      i += 1
    end
  end
  return true
end

def string_reverse(my_string)
  return my_string if my_string == nil
  k = my_string.length - 1
  reversed_string = ""
  while k >= 0
    reversed_string << my_string[k] if my_string[k] != " "
    k -= 1
  end
  reversed_string
end
