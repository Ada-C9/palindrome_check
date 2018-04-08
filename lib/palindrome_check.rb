require 'pry'
# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase == nil
  return true if my_phrase.length == 1 || my_phrase.length == 0

  left = 0
  right = my_phrase.length - 1

  while left < right
    while my_phrase[left] == " "
      left += 1
    end

    while my_phrase[right] == " "
      right -= 1
    end

    if my_phrase[left]!= my_phrase[right]
      return false
    else
      left += 1
      right -= 1
    end
  end
  return true
end
