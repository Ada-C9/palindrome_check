# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.

def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  end

  phrase1 = my_phrase.chars

  if phrase1.length == 0
    return true
  end

  # left = 0
  # while left < phrase1.length
  #   right = -1
  #
  #   until array[right] == " " || right == array.length
  #     right += -1
  #   end
  i = 0
  j = phrase1.length - 1
  while i < j
    while phrase1[i] == " "
      i += 1
    end

    while phrase1[j] == " "
      j -= 1
    end

    if phrase1[i] != phrase1[j]
      # elsif phrase1[i] != phrase1[-i]
      return false
    end
    i += 1
    j -= 1
  end
  return true
end
