# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.

def palindrome_check(my_phrase)

  if my_phrase.class != String
    return false
  elsif my_phrase.length == 0
    return true
  elsif my_phrase.length == 1
    return true
  else
    i = 0
    j = my_phrase.length - 1
  end


  while i < j do

    until my_phrase[i] != " "
      i += 1
    end

    until my_phrase[j] != " "
      j -= 1
    end


    if my_phrase[i] == my_phrase[j]
       i += 1
       j -= 1
    else
      return false
    end

  end

  return true

end
