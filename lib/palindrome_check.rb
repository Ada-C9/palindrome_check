# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)

  if my_phrase == nil
    return false

  end

  index = 0
  word_end = my_phrase.length - 1

  while index <= word_end
    while my_phrase[index] == " "
      index += 1
    end

    while my_phrase[word_end] == " "
      word_end -= 1
    end

    if my_phrase[index] != my_phrase[word_end]
      return false
    elsif my_phrase[index] == my_phrase[word_end]
      index += 1
      word_end -= 1
    end

  end
  return true
  # raise NotImplementedError
end
