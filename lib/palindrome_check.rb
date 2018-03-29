# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase.nil?
  i = 0
  j = my_phrase.length - 1
  while i < my_phrase.length / 2
    if my_phrase[i] == " "
      i += 1
    elsif my_phrase[j] == " "
      j -= 1
    elsif my_phrase[i] != my_phrase[j]
      return false
    else
      i += 1
      j -= 1
    end
  end
  return true
end
