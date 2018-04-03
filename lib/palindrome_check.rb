# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  end

  x = 0
  palindrome = true

  while x < my_phrase.length
    if my_phrase[x] != my_phrase[((my_phrase.length - 1) - x)]
      palindrome = false
    end
    x += 1
  end

  return palindrome
end
