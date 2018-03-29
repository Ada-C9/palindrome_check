require 'pry'
# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase == nil
  length = palindrome_length(my_phrase)
  reversed_phrase = string_reverse(my_phrase)
  move_spaces(my_phrase, length)
  move_spaces(reversed_phrase, length)
  is_palindrome(my_phrase, reversed_phrase)
end

def is_palindrome(some_phrase, reversed_phrase)
  some_phrase.length.times do |x|
    if some_phrase[x] != reversed_phrase[x]
      return false
    end
  end
  return true
end

def palindrome_length(some_phrase)
  length = some_phrase.length
  length.times do |x|
    length -= 1 if some_phrase[x] == " "
  end
  length
end

def move_spaces(some_string, length)
  k = 0
  j = some_string.length
  until k == j
    if some_string[k] == " "
      while some_string[k] == " " && k < length
        space_index = k
        until space_index == j - 1
          some_string[space_index] = some_string[space_index+1]
          space_index += 1
        end
        some_string[space_index] = " "
      end
    end
    k += 1
  end
end

def string_reverse(my_string)
  return my_string if my_string == nil
  k = my_string.length - 1
  reversed_string = ""
  while k >= 0
    reversed_string << my_string[k]
    k -= 1
  end
  reversed_string
end
