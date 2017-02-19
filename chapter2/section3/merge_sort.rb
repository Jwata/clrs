module MergeSort
  def self.sort(list)
    size = list.size
    return list if size <= 1
    size_left = (size.to_f / 2).ceil
    left = sort(list.slice(0, size_left))
    right = sort(list.slice(size_left, size - size_left))
    merge([], left, right)
  end

  private

  def self.merge(merged_list, left, right)
    return merged_list.concat(right) if left.size == 0
    return merged_list.concat(left) if right.size == 0
    smaller = (left.first < right.first) ? left.shift : right.shift
    merge(merged_list.push(smaller), left, right)
  end
end
