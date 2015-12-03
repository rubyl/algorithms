
def fib(n)
  if n == 0
    return 0
  end
  if n == 1 or n == 2
    return 1
  end
  fib(n-1) + fib(n-2)
end

#recursive function, definition of fib is fib

puts fib(0)
puts fib(1)
puts fib(2)
puts fib(3)
puts fib(4)
puts fib(5)
puts fib(6)

def fibIterative(finalN)
  answers = Array.new(finalN, 0)
  n = 1
  finalN.times do
    if n == 0
      answers[n] = 0
    elsif n == 1 or n == 2
      answers[n] = 1
    else
      answers[n] = answers[n-1] + answers[n-2]
    end
    n = n + 1
  end
  answers[finalN]
end
puts "Iterative"
puts fibIterative(5)
puts fibIterative(6)