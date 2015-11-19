#Pesudo static array data structure
class BananaArray
  # write test, what if length >= max.length, do not throw an error, but double the size of the array
  def append(value)
    #  calls the array and finds the length of the array and it is set to the value
    # In english we added a value to the end
    @array[@array_length] = value
    # we want the array length to increase by 1 and set it to array length
    @array_length = @array_length + 1
  end

  # pop: remove the last item of the array and return it
  def pop
    if @array_length - 1 < 0
      raise "Cannot pop an empty"
    end
    last_value = @array[@array_length - 1]
    @array[@array_length - 1 ] = nil
    @array_length = @array_length - 1
    return last_value
  end

  def initialize(size = 0, value = nil )
    #raise not a number size

    #If size exist create an array with that size
    if size == 0
      @max_size = 50
    else
      #Max size is the amount of memory we preloaded, we double the size to take advantage of amortized performance
      @max_size = size * 2
    end

    @array = Array.new(@max_size, value)
    #The outside world only knows about the 0... array_length values of the array
    @array_length = size

  end

  def length
    return @array_length
  end

  def find(value)
    # find the size of the array
    @array.slice(0, @array_length).include?(value)
  end

  def to_s
    @array.slice(0, @array_length).to_s
  end
end

ba = BananaArray.new()
puts ba

ba = BananaArray.new(10)
puts ba

ba = BananaArray.new(10, 7)
puts ba

# ba = BananaArray.new(nil, nil)
# puts ba

# ba = BananaArray.new("10")
# puts ba

ba = BananaArray.new(10, "a")
puts ba


puts ba.append("d")
puts ba
puts ba.find("d")

puts ba.pop()
ba.pop()
puts ba.length()
