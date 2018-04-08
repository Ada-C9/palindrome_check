# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase) #abba , radar
  if !valid_input(my_phrase)
    return false
  end

  return evaluate_phrase(my_phrase)

end

def valid_input(my_phrase)
  if my_phrase.nil? || my_phrase.class != String
    return false
  else
    return true
  end
end

def evaluate_phrase(my_phrase) #nurses run

  if my_phrase == nil || my_phrase.length == 1
    return true
  end

  i = 0
  n = my_phrase.length - 1

  my_phrase = check_spaces(my_phrase)
  # p "my_phrase[i]#{my_phrase[i]}"
  # p "my_phrase[n]#{my_phrase[n]} and n is #{n}"
  # p my_phrase
  if my_phrase[i] == my_phrase[n]
    new_str = my_phrase[i + 1...n]
    # p "printing new_str #{new_str}"
    evaluate_phrase_var = evaluate_phrase(new_str)
    # p evaluate_phrase_var
    return evaluate_phrase_var
  else
    # p "I'm in the flase return"
    return false
  end
end

def check_spaces(my_phrase)
  i = 0
  n = my_phrase.length - 1
  changed = false
  # p "entering check_spaces #{my_phrase}"
  if my_phrase[i] == " "
    i += 1
    changed = true
  end

  if my_phrase[n] == " "
    n -= 1
    changed = true
  end

  sub_str = my_phrase[i..n]
  # p "checking sub_str #{sub_str}"
  if changed
    # p "changed"
    return check_spaces(sub_str)
  else
    return my_phrase
  end
end

p palindrome_check("madam")
