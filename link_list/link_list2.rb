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

  def add(index, data)
    new_node = Node.new(data)
    if index == 0
      node_before =
          node_after = node_before.pointer
      @head = new_node
    else
      node_before = get(index - 1)
      node_after = node_before.pointer
      node_before.pointer = new_node
      #index = 3
      # [1,2,3,5]
    end
    new_node.pointer = node_after
    @size = @size + 1
    return self
  end

  #pop()
  #remove()
  #size()

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

  def get_node(index)
    if index >= @size or index < 0
      raise "Index out of bound"
    else
      current_node = @head
      index.times do
        current_node = current_node.pointer
      end
      return current_node
    end
  end
end

linked_list = LinkedList.new()
linked_list.append(10)
linked_list.append(15)
linked_list.append(6)
puts linked_list.to_s
puts linked_list.get(1)
# puts linked_list.add(2, 8)
# # puts linked_list.add(0, 9)

node_before = before_index(index)
node_after = node_before.pointer
node_before.pointer = new_node
new_node.pointer = node_after