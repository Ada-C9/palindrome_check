# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase.nil?

  final_phrase = ''
  character_position = 0
  while character_position < my_phrase.length

    if my_phrase[character_position] != ' '
      final_phrase += my_phrase[character_position]
    end

    character_position += 1
  end

  bottom = 0
  top = final_phrase.length - 1
  while bottom <= top

    if final_phrase[bottom] != final_phrase[top]
      return false
    end

    bottom += 1
    top -= 1
  end

  return true
end
