# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase == nil

  front = 0
  back = my_phrase.length-1

  while front < back

  if my_phrase[front] != " " && my_phrase[back] != " "

    if my_phrase[front] != my_phrase[back]
      return false
    else
      front += 1
      back -= 1
    end
  elsif my_phrase[front] == " "
    front += 1
  elsif my_phrase[back] == " "
    back -= 1
  end
end

  return true

end


palindrome_check("lion oil")
