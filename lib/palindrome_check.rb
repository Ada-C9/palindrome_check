require 'pry'
# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.

=begin

SPACE COMPLEXITY:  1 parameter and 2 variables, regardless of input, so complexity is constant, O(1)

TIME COMPLEXITY: 2 inner while loops, each of which can run a maximum of n/2 times, yields a factor of n. 1 outer while loop which will run a maximum of n/2 times, which also contributes a factor of n. These are additive, not multiplicative, so the overal time complexity is linear: 2n, or O(n).  

=end


def palindrome_check(my_phrase)
  if my_phrase.nil?
    return false
  elsif
    my_phrase == "" || my_phrase.length == 1
    return true
  else
    index_s = 0
    index_e = (my_phrase.length - 1)
    unless index_e <= index_s
      (my_phrase.length/2).times do
        while my_phrase[index_s] == " " && index_s < index_e - 1
          index_s += 1
        end
        while my_phrase[index_e] == " " && index_e > index_s + 1
          index_e -= 1
        end
        if my_phrase[index_e] != my_phrase[index_s]
          return false
        else
          if index_s >= index_e - 1
            return true
          else
            index_s += 1
            index_e -= 1
          end
        end
      end
    end
    return true
  end
end
