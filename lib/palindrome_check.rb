# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase == nil
  j = 0
  k = my_phrase.length - 1
  while j < k
    if my_phrase[j] == " "
      j += 1
    elsif my_phrase[k] == " "
      k -= 1
    elsif my_phrase[j] == my_phrase[k]
      j += 1
      k -= 1
    elsif my_phrase[k] != " " && my_phrase[k] != " " && my_phrase[j] != my_phrase[k]
      return false
    end
  end
  true
end
