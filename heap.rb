Class Heap

# create array
  def initialize
  #   pass in array and construct full heap from the array
    @array = Array.new
    @array.unshift(nil)
  end

# get size
  def size
    @array.length - 1
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
# get max
  #pop: remove the maximum and take account nil
  def pop
    pop_value = peek
    @array[1] = @array.pop
    downheap[1]
    return pop_value
  end
  #peek: only return the value at the maximum with removing it
  def peek
    return @array[1]
  end

# add element
  def insert(value)
    @array << value
    upheap[@array.length - 1]
  end

# upheap
  def upheap(current_index)
    current_value = @array[current_index] # 8
    parent_index = get_parent_index(current_index)
    parent_value = @array[parent_index]
    if current_value > parent_value
      swap(parent_index, current_index)
      current_index = parent_index
      upheap(current_index)
    end
  end