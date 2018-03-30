# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)

  if my_phrase.nil?
    return false
  elsif my_phrase.length == 1
    return true
  end

  forward = 0
  backward = my_phrase.length - 1

  while forward < backward

    while my_phrase[forward] == " " && forward < my_phrase.length
      forward += 1
    end

    while backward > 0 && my_phrase[backward] == " "
      backward -= 1
    end


    if my_phrase[forward] != my_phrase[backward]
      return false
    end

    forward += 1
    backward -= 1

  end

  return true

end
