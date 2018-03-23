# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  else

    i = 0
    b = my_phrase.length - 1

    while b > i do
      if my_phrase[i] != " " && my_phrase[b] != " "
        if !(my_phrase[i] == my_phrase[b])
          return false
        else
          i += 1
          b -= 1
        end
      elsif my_phrase[b] == " "
        b -= 1
      elsif my_phrase[i] == " "
        i += 1
      end

    end
    return true
  end
end
