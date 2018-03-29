# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase == nil
  length = my_phrase.length
  return true if length < 2

  half = length / 2

  back_counter = length - 1
  front_counter = 0

  half.times do
    if my_phrase[back_counter] == " "
      back_counter -= 1
    end

    if my_phrase[front_counter] == " "
      front_counter += 1
    end

    if my_phrase[back_counter] != my_phrase[front_counter]
      return false
    end
    back_counter -= 1
    front_counter += 1
    return true
  end

end
