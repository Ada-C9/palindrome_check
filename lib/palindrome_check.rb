# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  # raise NotImplementedError
  return false if my_phrase == nil
  return true if my_phrase == ""

  length = my_phrase.length
  start = 0
  last = length - 1

  # i = 0
  # length.times do |i|
    while start < last
      while my_phrase[start] == " "
        start += 1
      end
      while my_phrase[last] == " "
        last -= 1
      end

      if my_phrase[start] != my_phrase[last]
        return false
      else
        start += 1
        last -= 1
      end
    end
  # end
  return true
end
