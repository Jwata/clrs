module InsertionSort
  def self.sort(list)
    list.inject([]) { |sorted_list, item| binary_search_insert(item, sorted_list) }
  end

  private

  def self.binary_search_insert(item, list)
    puts "#{item}, #{list}"
    return [item] if list.size == 0
    return list.unshift(item) if item <= list.first
    return list.push(item) if item >= list.last
    index = binary_search(item, list, 0, list.size - 1)
    list.insert(index, item)
  end

  def self.binary_search(item, list, from, to)
    return if from > to
    center_index = (from + to) / 2
    center = list[center_index]
    if center == item
      center_index
    elsif item < center && from <= center_index - 1
      binary_search(item, list, from, center_index - 1)
    elsif center < item && center_index + 1 <= to
      binary_search(item, list, center_index + 1, to)
    elsif item < list[from]
      from
    elsif list[from] < item
      from + 1
    end
  end
end
