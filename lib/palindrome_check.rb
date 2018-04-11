# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n) where n is the length of my_phrase.
# Space complexity: O(1) - auxiliary storage takes constant space as input size changes.
def palindrome_check(my_phrase)
  # return false if nil - not a string
  return false if my_phrase == nil

  # return true if empty - reads the same forwards and backwards
  return true if my_phrase.length == 0

  i = 0 # index of the first character in my_phrase
  j = my_phrase.length - 1 # index of the last character in my_phrase
  while i < j
    # account for ignoring white spaces
    while my_phrase[i] == ' ' && i < j
      i += 1
    end
    while my_phrase[j] == ' ' && i < j
      j -= 1
    end

    if i >= j # check if there is more characters after accounting for white spaces
      break # accounted for all characters in my_phrase
    end

    if my_phrase[i] != my_phrase[j] # palindrome check
      return false
    end
    i += 1
    j -= 1
  end

  return true # assumes that a string with one character is a palindrome.
end
