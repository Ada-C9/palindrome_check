require 'pry'
# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  end

  if my_phrase.length == 1 || my_phrase.empty?
    return true
  end

  start_index = 0
  end_index = my_phrase.length - 1


  while start_index < end_index
    while my_phrase[start_index] == " "
      start_index += 1
    end

    while my_phrase[end_index] == " "
      end_index -= 1
    end

    if my_phrase[start_index] == my_phrase[end_index]
      start_index += 1
      end_index -= 1

    elsif my_phrase[start_index] == " "
      start_index += 1

    elsif my_phrase[end_index] == " "
      end_index -= 1

    else
      return false
    end
  end
  return true
end
