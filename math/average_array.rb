#
#
# def sum(array)
#   puts length = array.length
#   current_value = array[0]
#   until array.length do
#     puts current_value = current_value + array
#   end
#   # current_value = current_value + array[1]
#   # current_value = current_value + array[2]
#   puts total = current_value/length
# end

def average(array)
  sum = 0
  current_index = 0
  current_value = array[current_index]
  array.length.times do
    sum = sum + current_value
    current_index = current_index + 1
    current_value = array[current_index]
  end
  return sum / array.length
end


# puts first_value = array.last
# puts next_index = array
# puts next_value = array[next_index]

# def total(array)
#   array.inject(0) { |x, sum| sum += x } / array.length
# end
#
#
# def done(n)
#  puts n.inject { |result, element| result + element  }
# end
#
# def sum2(n)
#   puts n.join(", ").sum
# end

set1 = [8, 7, 5, 0]
puts average(set1)
puts average [3, 5, 7]
puts average [0, 0, 0, 0]
puts average ['l', 'l']

# Iterator
# Summing numbers would be a reason to use inject