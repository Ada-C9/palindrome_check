# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  # reverse my_phrase,
  # use index, looping, swapping to reverse string
  # if the reverse my_phrase is equal to normal my_phrase, return true
  # if there isn't exact match, return false
  index = 0
  start_phrase = 0

  end_phrase = my_phrase.length - 1

  while index < my_phrase.length

    while start_phrase < end_phrase
      temp = start_phrase
      my_phrase[start_phrase] = my_phrase[end_phrase]
      end_phrase = temp
    end # inside while

    index += 1

  end # outside while

  return my_phrase

end # palindrome
