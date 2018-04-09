# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  is_palindrome = true
  if  my_phrase == nil
    return false
  elsif my_phrase.class != String
    raise ArgumentError.new("Input must be a string")
  elsif
    phrase_length = my_phrase.length
    (phrase_length/2).times do |i|
      if my_phrase[i] != my_phrase[phrase_length-(i+1)]
        is_palindrome = false
      end
      i += 1
    end
    return is_palindrome
  end

end
