# load "../link_list/link_list.rb"
#
# def heapsort(list)
#   sorted_list = LinkedList.new
#   curr_min = list.get(0)
#   curr_min_index = 0
#   curr_index = 0
#   list.size().times do
#     new_number = list.get(curr_index)
#     if(new_number < curr_min )
#         curr_min = new_number
#         curr_min_index = curr_index
#     end
#     curr_index = curr_index + 1
#   end
#   list.remove(curr_min_index)
#   sorted_list.append(data)
# end
#
# # have a new array
# # select smallest number
# # add to new array
# list = LinkedList.new
# list.prepend(10)
# list.prepend(1)
# list.add(1,9)
# list.prepend(8)
# list.prepend(7)
# puts list


# # have a new array
# # select smallest number
# # add to new array
list = [10, 1, 9, 8, 7]

def heap_sort(list)
  sorted_list = []
  list.length.times do
    min = list.min
    list.find(min)

    sorted_list.append(min)
  end
end
heap_sort(list)

