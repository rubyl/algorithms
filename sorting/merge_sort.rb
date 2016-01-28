def merge_sort(list)
  if list.length == 1
    return list
  end
  index_mid_point = (list.length/2).ceil
  left_half = list[0, index_mid_point]
  sorted_left_half = merge_sort(left_half)
  right_half = list[index_mid_point, list.length]
  sorted_right_half = merge_sort(right_half)
  merge(sorted_left_half, sorted_right_half)
end

def merge(left_list, right_list)
  merged_list = []
  left_index = 0
  right_index = 0
  while left_index < left_list.length or right_index < right_list.length
    if left_index >= left_list.length
      right_value = right_list[right_index]
      merged_list << right_value
      right_index = right_index + 1
      next
    end
    if right_index >= right_list.length
      left_value = left_list[left_index]
      merged_list << left_value
      left_index = left_index + 1
      next
    end
    left_value = left_list[left_index]
    right_value = right_list[right_index]
    if left_value >= right_value
      merged_list << right_value
      right_index = right_index + 1
    else
      merged_list << left_value
      left_index = left_index + 1
    end
  end
  return merged_list
end

puts merge_sort([8, 9, 5, 7, 8, 7]).inspect
puts merge_sort([8, 9, 5, 7, 8]).inspect
# implicit loop/recursive loop, dividing problem into smaller