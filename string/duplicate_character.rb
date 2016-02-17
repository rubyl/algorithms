def duplicate(str)
  if !str.is_a?(String) # 1
    raise "Not a string"
  end
  current_index = 0 # 1
  duplicate_values = [] # 1
  while current_index < str.length do # n
    current_value = str[current_index] # 1
    next_index = current_index + 1 # 1
    while next_index < str.length do # n-1
      next_value = str[next_index] # 1
      if next_value == current_value # 1
        #if its already in here don't add it
        if !duplicate_values.include? current_value # N/2
          duplicate_values << current_value # 1
        end
      end
      next_index = next_index + 1 # 1
    end
    current_index = current_index + 1 # 1
  end
  return duplicate_values.join() # n/2
end

# Big O of 1 + 1 + 1 + n(1 + 1 + (n - 1) (1 +1 + n/2 + 1 + 1) + 1) + n/2
# 3+n(3+(n-1)(4+n/2))+n/2
# 3+n(3+4n+n^3/2-4-n/2)+n/2
# 3+(3n+4n^3/2-4n-n^2/2)+n/2
# 3+3.5n+2n^3-4n-n^2/2 => O(n)^3

def duplicate2(str)
  if !str.is_a?(String) # 1
    raise "Not a string"
  end
  current_index = 0 # 1
  visited_values = {} # 1
  answer = [] # 1
  while current_index < str.length do #n
    current_value = str[current_index] # 1
    if(!visited_values[current_value]) # 1
      visited_values[current_value] = 1 # 1
    else
      visited_values[current_value] = visited_values[current_value] + 1 # 1
      if(visited_values[current_value] == 2) # 1
        answer << current_value # 1
      end
    end
    current_index = current_index + 1 # 1
  end
  answer.join() #n/2
end
# 7.5O(n) + 3 => O(n)
puts duplicate("Java")
puts duplicate("Javabb")
puts duplicate("Java aaron")
puts duplicate("Java apple")
puts duplicate("")
# puts duplicate(123)
# puts duplicate(nil)

#Improved performance
# puts duplicate2("Java")
# puts duplicate2("Javabb")
# puts duplicate2("Java aaron")
# puts duplicate2("Java apple")
# puts duplicate2("")
# puts duplicate2(123)
# puts duplicate2(nil)
