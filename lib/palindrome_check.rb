# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
require "pry"

def palindrome_check(my_phrase)
  phrase_cpy = my_phrase
  index = 0
  start_phrase = 0

  end_phrase = my_phrase.length - 1

  while index < my_phrase.length
    # binding.pry
    while start_phrase < end_phrase

      temp = my_phrase[start_phrase]
      my_phrase[start_phrase] = my_phrase[end_phrase]
      my_phrase[end_phrase] = temp

      start_phrase += 1
      end_phrase -= 1

    end # inside while

    index += 1
  end # outside while

  puts "RESULT:#{phrase_cpy.object_id}"
  puts "PHRASE: #{my_phrase.object_id}"

  return true if phrase_cpy == my_phrase

end # palindrome
