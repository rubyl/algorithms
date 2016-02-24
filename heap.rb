class Heap

# create array
  def initialize
  #   pass in array and construct full heap from the array
    @array = Array.new
    @array.unshift(nil)
  end

# get size
  def size
    puts @array.inspect
    @array.length - 1
  end

# get max
  #pop: remove the maximum and take account nil. 1 is the current_index
  def pop
    if size == 0
      raise "Can't pop from an empty heap"
    end
    pop_value = peek
    @array[1] = @array[@array.length-1]
    @array.pop
    puts @array.inspect
    downheap(1)
    return pop_value
  end

  #peek: only return the value at the maximum with removing it
  def peek
    return @array[1]
  end

# add element
  def insert(value)
    @array << value
    upheap(@array.length - 1)
  end

  def to_s()
    @array.to_s()
  end

  private
# upheap
  def upheap(current_index)

    if(current_index == 1)
      return
    end
    current_value = @array[current_index] # 8
    parent_index = get_parent_index(current_index)
    parent_value = @array[parent_index]
    if current_value > parent_value
      swap(parent_index, current_index)
      current_index = parent_index
      upheap(current_index)
    end
  end

# downheap
  def downheap(current_index)
    current_value = @array[current_index]
    left_index = get_left_child_index(current_index)
    left_value = @array[left_index]
    right_index = get_right_child_index(current_index)
    right_value = @array[right_index]
    if left_value == nil && right_value == nil
      return
    end
    if left_value != nil && right_value == nil
      if current_value <= left_value
        swap(left_index, current_index)
      end
      return
    end
    if left_value >= current_value && left_value >= right_value
      swap(left_index, current_index)
      current_index = left_index
      downheap(current_index)
    elsif right_value >= current_value && right_value >= left_value
      swap(right_index, current_index)
      current_index = right_index
      downheap(current_index)
    end
  end

  def swap(first_index, second_index)
    first_value = @array[first_index]
    second_value = @array[second_index]
    temp_value = first_value
    @array[first_index] = second_value
    @array[second_index] = temp_value
  end

# get left child
  def get_left_child_index(parent_index)
    return parent_index * 2
  end

# get right child
  def get_right_child_index(parent_index)
    return (parent_index * 2) + 1
  end
# get parent
  def get_parent_index(child_index)
    parent_index = (child_index / 2).floor
    if parent_index == 0
      raise "Cannot get parent of root!"
    end
    return parent_index
  end

end
