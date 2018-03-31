# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  # raise NotImplementedError
  return false if my_phrase.nil?
  left = 0
  right = my_phrase.length - 1
  while left < right
    while my_phrase[left] == " " && left < my_phrase.length - 1
      left += 1
    end
    while my_phrase[right] == " " && right > 0
      right -= 1
    end

    if my_phrase[left] != my_phrase[right]
      return false
    end

    left += 1
    right -= 1
  end

  return true
end
