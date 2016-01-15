class Node
  attr_accessor :pointer
  attr_accessor :value
  def initialize(value, pointer = nil)
    @value = value
    @pointer = pointer
  end

  def set_pointer(next_node)
    pointer = next_node
  end
  def set_value(value)
    value = value
  end

  def get_value()
    value
  end

  def get_pointer()
    pointer
  end
end

class LinkedList

  def initialize(first_data = nil)
    @size = 0
    if first_data
      @head = Node.new(first_data)
      @tail = @head
      @size = @size + 1
    else
      @head = nil
      @tail = nil
    end
  end

  def append(data)
    new_node = Node.new(data)
    if @size == 0
      @tail = new_node
      @head = new_node
    else
      @tail.pointer = new_node
      @tail = new_node
    end
    @size = @size + 1
  end

  # TODO: Update tails
  def add(index, data)
    new_node = Node.new(data)
    if index == 0
      node_after = @head
      @head = new_node
    else
      node_before = get_node(index - 1)
      node_after = node_before.pointer
      node_before.pointer = new_node
    end
    new_node.pointer = node_after
    @size = @size + 1
    return self
  end


  def size
    @size
  end

  # TODO: Update tails
  def remove(index)
    if index == 0
      current_node = @head
      @head = @head.pointer
    else
      node_before = get_node(index - 1)
      current_node = node_before.pointer
      node_after = current_node.pointer
      node_before.pointer = node_after
    end
    current_node.pointer = nil
    @size = size - 1
    return self
  end

  def pop
    remove(size - 1)
    # current_node_index = @size - 1
    # current_node = get_node(current_node_index)
    # node_before = get_node(current_node_index - 1)
    # node_before.pointer = nil
    # @size = size - 1
    # return self
  end

  def prepend(value)
    add(0, value)
  end

  def to_s()
    current_node = @head
    str = ""
    @size.times do
      str = str + "[#{current_node.value}] -> "
      current_node = current_node.pointer
    end
    str
  end

  # return value at given index
  def get(index)
    return get_node(index).value
  end

  private

  # TODO: catch exception in public and rethrow them, so they are not aware of nodes
  def get_node(index)
    if index >= @size or index < 0
      raise "Index out of bound index:#{index} size:#{@size}"
    else
      current_node = @head
      index.times do
        current_node = current_node.pointer
      end
      return current_node
    end
  end
end

# linked_list = LinkedList.new()
# linked_list.append(10)
# linked_list.append(15)
# linked_list.append(6)
# puts linked_list.to_s
# puts linked_list.get(1)
# puts linked_list.add(1, 8)
# puts linked_list.add(0, 9)
# puts linked_list.add(linked_list.size, 7)
# puts linked_list.remove(2)
# puts linked_list.remove(4)
# puts linked_list.remove(0)
# puts linked_list.pop
# puts linked_list.prepend(11)
