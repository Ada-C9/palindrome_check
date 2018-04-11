# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
return false if my_phrase == nil
my_phrase == reverse_words(my_phrase) ? true : false

end


def reverse_words(my_words)
  return my_words if my_words.length < 2

  i = 0
  while i < my_words.length
    index = i

    while my_words[index] != " " && my_words[index] != nil
      index += 1
    end

    unless index == i
      a = i
      b = index - 1

      while a < b
        temp_letter = my_words[a]
        my_words[a] = my_words[b]
        my_words[b] = temp_letter
        a += 1
        b -= 1
      end

    end

    i = index + 1
  end
end
