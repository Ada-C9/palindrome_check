require 'pry'
# Time complexity is O(n/2), which reduces to O(n). The number of comparisons (ie, operations) is equivalent to the length of the string divided by 2.
# Space complexity is O(1) because no additional memory is required if the size of the string (ie, input) increases.
def palindrome_check(my_phrase)
  return false if my_phrase == nil
  return true if my_phrase.length == 1 || my_phrase.length == 0

  left = 0
  right = my_phrase.length - 1

  while left < right
    while my_phrase[left] == " "
      left += 1
    end

    while my_phrase[right] == " "
      right -= 1
    end

    if my_phrase[left]!= my_phrase[right]
      return false
    else
      left += 1
      right -= 1
    end
  end
  return true
end
