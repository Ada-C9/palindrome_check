# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  elsif my_phrase.length <= 1
    return true
  end

  first = 0
  last = my_phrase.length - 1

  while first < last
    if my_phrase[first] == " " || my_phrase[last] == " "
      first += 1
      last -= 1
    elsif my_phrase[first] == my_phrase[last]
      first += 1
      last -= 1
      return true
    else
      return false
    end
  end
end
