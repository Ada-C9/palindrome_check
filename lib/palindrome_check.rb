# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
require 'pry'
def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  end

  foward_index = 0
  backward_index = (my_phrase.length - 1)

  palindrome = true

  while backward_index > 0
    if my_phrase[foward_index] == " "
      while my_phrase[foward_index] == " "
        foward_index += 1
      end
    end

    if my_phrase[backward_index] == " "
      while my_phrase[backward_index] == " "
        backward_index -= 1
      end
    end

    if my_phrase[foward_index] != my_phrase[backward_index]
      palindrome = false
    end

    foward_index += 1
    backward_index -= 1
  end
  return palindrome
end

puts palindrome_check(" pull   up ")
