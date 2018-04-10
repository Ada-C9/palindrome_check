# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  palindrome = true

  if my_phrase == nil
    return false
  end

  letter_begin = 0
  letter_end = -1
  while letter_begin < (my_phrase.length + letter_end)

    while my_phrase[letter_begin] == " "
      letter_begin += 1
    end

    while my_phrase[letter_end] == " "
      letter_end -= 1
    end

    if my_phrase[letter_begin] == my_phrase[letter_end]
      letter_begin += 1
      letter_end -= 1
    else
      palindrome = false
      break
    end
  end
  return palindrome
end
