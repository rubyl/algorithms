require '../link_list/link_list'

describe LinkedList do

  context
  it "creates a new link list" do
    linked_list = LinkedList.new()
    expect(linked_list.size).to eq 0
  end

  it "append to the list" do
    linked_list = LinkedList.new()
    linked_list.append(10)
    linked_list.append(1)
    linked_list.append(2)
    expect(linked_list.size).to eq 3
    expect(linked_list.last).to eq 2
  end

  it "prepend to the list" do
    linked_list = LinkedList.new()
    linked_list.append(2)
    linked_list.prepend(4)
    expect(linked_list.size).to eq 2
    expect(linked_list.get(0)).to eq 4
  end

  it "remove from the list" do
  linked_list = LinkedList.new()
  linked_list.append(2)
  linked_list.append(5)
  linked_list.append(8)
  linked_list.remove(0)
  expect(linked_list.size).to eq 2
  expect(linked_list.get(0)).to eq 5
  expect(linked_list.get(1)).to eq 8
  end

  it "pop from the list" do
    linked_list = LinkedList.new()
    linked_list.append(8)
    linked_list.append(7)
    linked_list.append(6)
    linked_list.pop
    expect(linked_list.size).to eq 2
    # TODO: Tail issue
    # expect(linked_list.last).to eq 7
  end

  it "remove from the list" do
    linked_list = LinkedList.new()
    linked_list.append(8)
    linked_list.append(7)
    linked_list.append(6)
    linked_list.remove(1)
    expect(linked_list.size).to eq 2
    expect(linked_list.get(1)).to eq 6
  end

end