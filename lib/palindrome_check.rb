# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)

  if my_phrase == nil
    return false
  elsif my_phrase.length == 1
    return true
  end


  front_index = 0
  back_index = my_phrase.length - 1

  while front_index < back_index

    if my_phrase[front_index] == " "
      front_index += 1

    elsif my_phrase[back_index] == " "
      back_index -= 1

    elsif my_phrase[front_index] != my_phrase[back_index]
      return false

    else
      front_index += 1
      back_index -= 1
    end
  end

  return true
end
