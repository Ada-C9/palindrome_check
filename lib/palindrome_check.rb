# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  fw_index = 0
  bw_index = -1
  is_a_palindrome = true

  if my_phrase == nil
    return false
  end

  while my_phrase[fw_index] != nil
    while my_phrase[fw_index] == ' ' && my_phrase[fw_index] != nil

      fw_index+=1
    end
      while my_phrase[bw_index] == ' ' && my_phrase[bw_index] != nil
      bw_index = bw_index - 1
    end

      if my_phrase[fw_index] != my_phrase[bw_index]
        is_a_palindrome = false
      end
    fw_index+=1
    bw_index-=1

  end

  return is_a_palindrome

end
