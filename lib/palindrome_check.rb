# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase.class != String



  word_length = my_phrase.length
  return true if word_length == 1

  first_index = 0
  last_index = word_length - 1
  middle_index = word_length / 2

  if word_length.odd?
    until first_index >= middle_index
      return false if my_phrase[first_index] != my_phrase[last_index]
      first_index += 1
      last_index -= 1
      until my_phrase[first_index] != " "
        first_index += 1
      end
      until my_phrase[last_index] != " "
        last_index -= 1
      end
    end
  else
    until first_index >= middle_index
      return false if my_phrase[first_index] != my_phrase[last_index]
      first_index += 1
      last_index -= 1
      until my_phrase[first_index] != " "
        first_index += 1
      end
      until my_phrase[last_index] != " "
        last_index -= 1
      end
    end
  end
    return true
end
