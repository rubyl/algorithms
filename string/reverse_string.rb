# Reverse string
# copy this functionality
# "abc".reverse  => "cba"

def reverse(str)
  left_index = 0   # 1
  number_of_swaps  = str.length / 2 # 1
  number_of_swaps.times do  # number_of_swaps  N/2
    # swap the values of the left index and right index
    swap(left_index, str.length-1-left_index, str) # 4
    left_index = left_index + 1 #1
  end
  return str # 1
end

 # Big O of  3 + (N/2)4+1 = 3 + 2.5N => 3 + O(n)2.5 => O(n)
def swap(left_index, right_index, str)
  first_value = str[left_index]
  last_value = str[right_index]
  str[left_index] = last_value
  str[right_index] = first_value
end


  # Big O of 3 + 3N + n = 3 + 4n => Big O(n)
def reverse2(str)
  current_index = str.length-1 # 1
  array = [] # 1
  str.length.times do # number_of_index 4
    current_value = str[current_index]
    array << current_value
    current_index  = current_index - 1
  end
  array.join() # n
end

puts reverse2('abcd')

=begin
[ a, b , c, d] => [d,c,b,a]

1. swap first to last
2. repeat from inside, ie. 2 to 3
  . outside - in

.last similar to str.length-1

legnth/2

1. split into an array - now have index
2. swap
3. join

Big O notation magnitude
- effort to rewrite
- theta and omega notation
- Omega: best case secarnaio
- theta middle case sencario
=end


