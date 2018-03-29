# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase == nil
  start = 0
  last = my_phrase.length - 1

  while start < last
    until my_phrase[start] != " "
      start += 1
    end

    until my_phrase[last] != " "
      last -= 1
    end

    return false if my_phrase[start] != my_phrase[last]
    start += 1
    last -= 1
  end
  return true
end
