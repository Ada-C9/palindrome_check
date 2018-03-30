# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  if my_phrase == nil
   return false
 else

   s = 0
   e = my_phrase.length - 1

   while e > s do
     if my_phrase[s] != " " && my_phrase[e] != " "
       if !(my_phrase[s] == my_phrase[e])
         return false
       else
         s += 1
         e -= 1
       end
     elsif my_phrase[e] == " "
       e -= 1
     elsif my_phrase[s] == " "
       s += 1
     end

   end
   return true
 end
end
