# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.

def palindrome_check(my_phrase)


  return false if my_phrase == nil
  return true if my_phrase.length == 1
  return true if my_phrase == ''

  j = my_phrase.length - 1
  i = 0
  # my_phrase = remove_spaces(my_phrase)

  while i < j
    while my_phrase[i] == ' '
      i += 1
    end
    while my_phrase[j] == ' '
      j -= 1
    end
    if my_phrase[i] != my_phrase[j]
      return false
    else
      i+=1
      j-=1
    end
  end

  return true
end

# def phrase_length(my_phrase)
#   j = 0
#   while my_phrase[j] != ' ' && my_phrase[j] != nil
#     j += 1
#   end
#   return j
# end

# def remove_spaces(my_phrase)
#   i = 0
#   non_space = 0
#
#   #  length = phrase_length(my_phrase)
#   # puts length
#   #
#   while my_phrase[i+1] != nil
#     if my_phrase[i] != ' '
#       i+=1
#       non_space +=1
#     elsif my_phrase[i] == ' '
#       my_phrase[i] = my_phrase[i+1]
#       my_phrase[i+1] = ' '
#       i += 1
#     end
#   end
#
# return my_phrase
#
#
# end
