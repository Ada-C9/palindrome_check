# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase == nil
  return true if my_phrase == ""
  return true if my_phrase.length <= 1

  i = 0
  j = my_phrase.length - 1
  while i < j
    l = my_phrase[i]
    my_phrase[i] = my_phrase[j]
    my_phrase[j] = l
    i += 1
    j -= 1
    if my_phrase[i] == my_phrase[j]
      return true
    else
      return false
    end
  end
end
