# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def reverse(my_words, left, right)
  while left < right
    temp = my_words[left]
    my_words[left] = my_words[right]
    my_words[right] = temp
    left += 1
    right -= 1
  end
end

def reverse_words(array)
  if array.nil?
    return array
  end

  hold = array.length
  left = 0

  while left < array.length
    right = left

    until array[right] == " " || right == array.length
      right += 1
    end

    reverse(array, left, (right-1))
    left = right + 1
  end
end

def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  end

  phrase1 = my_phrase.chars

  if phrase1.length == 0
    return true
  end

  phrase1.length.times do |i|
    if phrase1[i] == phrase1[-i]
      return true
    end
  end
  return false
end
