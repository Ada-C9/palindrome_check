# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  if my_phrase.nil?
    return false
  elsif
    my_phrase == "" || my_phrase.length == 1
    return true
  else
    index_s = 0
    index_e = (my_phrase.length - 1)
    unless index_e <= index_s
      (my_phrase.length/2).times do
        while index_s == " " && index_s < index_e - 1
          index_s += 1
        end
        while index_e == " " && index_e > index_s + 1
          index_e -= 1
        end
        if my_phrase[index_e] != my_phrase[index_s]
          return false
        else
          index_s += 1
          index_e -= 1
        end
      end
    end
    return true
  end
end
