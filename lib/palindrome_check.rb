# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase == nil
  # my_phrase == reverse_words(my_phrase) ? true : false

  return true if my_phrase.length == 0

  i = 0
  j = my_phrase.size - 1

  while i < j
    while my_phrase[i] == ' ' && i < j
      i += 1
    end
    while my_phrase[j] == ' ' && i < j
      j -= 1
    end

    break if i >= j

    return false  if my_phrase[i] != my_phrase[j] # palindrome check

    i += 1
    j -= 1
  end

  return true
end
