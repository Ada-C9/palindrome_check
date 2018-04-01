# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
require "pry"

def palindrome_check(my_phrase)
  phrase_copy = my_phrase.downcase

  i = 0
  start_phrase = 0

  end_phrase = my_phrase.length - 1

  while i < my_phrase.length
    # binding.pry
    while start_phrase < end_phrase

      temp = my_phrase[start_phrase]
      my_phrase[start_phrase] = my_phrase[end_phrase]
      my_phrase[end_phrase] = temp

      start_phrase += 1
      end_phrase -= 1

    end # inside while

    i += 1

  end # outside while

  puts "ORIGINAL PHRASE:#{my_phrase.object_id}"
  puts "PHRASE COPY: #{phrase_copy.object_id}"

  if phrase_copy == my_phrase.downcase
    return true
  elsif phrase_copy != my_phrase.downcase || my_phrase == nil
    return false
  end


end # palindrome
