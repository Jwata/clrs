module MergeSort
  def self.sort_with_inversions_count(list)
    size = list.size
    return [list, 0] if size <= 1
    size_left = (size.to_f / 2).ceil
    left, inversions_count_left = sort_with_inversions_count(list.slice(0, size_left))
    right, inversions_count_right = sort_with_inversions_count(list.slice(size_left, size - size_left))
    merged_list, inversions_count = merge_with_inversions_count([], 0, left, right)
    [merged_list, inversions_count_left + inversions_count_right + inversions_count]
  end

  private

  def self.merge_with_inversions_count(merged_list, inversions_count, left, right)
    return [merged_list.concat(right), inversions_count] if left.size == 0
    return [merged_list.concat(left), inversions_count] if right.size == 0
    if left.first < right.first
      smaller = left.shift
    else
      smaller = right.shift
      inversions_count += left.size
    end
    merge(merged_list.push(smaller), inversions_count, left, right)
  end
end

