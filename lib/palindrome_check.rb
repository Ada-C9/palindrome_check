# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase == nil

  starting = 0
  ending = my_phrase.length - 1

  while starting < ending

    while my_phrase[starting] == " "
      starting += 1
    end

    while my_phrase[ending] == " "
      ending -= 1
    end

    if my_phrase[starting] != my_phrase[ending]
      return false
    end

    starting += 1
    ending -= 1
  end
  return true
end
