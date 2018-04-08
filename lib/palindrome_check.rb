# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  end

  if my_phrase.length == 1 || 0
    return true
  end

  left = 0
  right = my_phrase.length - 1

  while left < right
    if my_phrase[left]!= my_phrase[right - left]
      return false
    else
      left += 1
      return true
    end
  end
end
