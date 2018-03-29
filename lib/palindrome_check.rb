# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase == nil
  length = my_phrase.length
  return true if length == 1
  front = 0
  back = length - 1

  while front < back
    while my_phrase[front] == " "
      front += 1
    end

    while my_phrase[back] == " "
      back -= 1
    end

    return false if my_phrase[front] != my_phrase[back]

    front += 1
    back -= 1
  end

  return true
  raise NotImplementedError
end
