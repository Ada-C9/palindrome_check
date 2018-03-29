# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase == nil

  return true if my_phrase == ""

  return true if my_phrase.length == 1

  head = 0
  tail = my_phrase.length - 1

  while head < tail
    until my_phrase[head] != " "
      head += 1
    end

    until my_phrase[tail] != " "
      tail -= 1
    end

    if my_phrase[head] != my_phrase[tail]
      return false
    else
      head += 1
      tail -= 1
    end
  end
  return true
end

# word = "redder"
# puts palindrome_check(word)
