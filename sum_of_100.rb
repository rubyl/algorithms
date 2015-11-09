# n = 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 + 11 + 12 + 13 + 14 + 15 + 16 + 17 + 18 + 19 + 20
# puts n

index = 1
sum = 0
n = 100
n.times do
  sum = sum + index
  index = index + 1
  puts "index: #{index}"
  puts "sum: #{sum}"
end
# O(n) ~ O(n)* 2
puts sum

# O(1) ~ O(3)
puts n*(n+1)/2