# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)

  return false if my_phrase.nil?

  front = 0
  back = my_phrase.length - 1

  until front >= back

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

end
