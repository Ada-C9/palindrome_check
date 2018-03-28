# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return my_phrase != nil if my_phrase == nil || my_phrase.length == 0
  left_index = check_left_index(my_phrase, my_phrase.length - 1)
  right_index = check_right_index(my_phrase, 0)
  is_palindrome = my_phrase[right_index] == my_phrase[left_index]
  while right_index < left_index && is_palindrome
    right_index = check_right_index(my_phrase, right_index + 1)
    left_index = check_left_index(my_phrase, left_index - 1)
    is_palindrome = my_phrase[right_index] == my_phrase[left_index]
  end
  return is_palindrome
end

def check_right_index(my_phrase, index)
  index += 1 while my_phrase[index] == " " && index < my_phrase.length
  return index
end

def check_left_index(my_phrase, index)
  index -= 1 while my_phrase[index] == " "  && index >= 0
  return index
end
