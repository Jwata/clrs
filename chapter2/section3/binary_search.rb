module BinarySeach

  def self.conmbination_search(x, set)
    a, b = nil
    for i in 0..set.size - 1
      a = set[i]
      return false if a > x
      b = x - a
      return [a, b] if search(b, set[i+1..-1])
    end
  end

  def self.search(item, list)
    return if list.size == 0
    return if item < list.first
    return if item > list.last
    center_index = list.size / 2
    center = list[center_index]
    if center == item
      item
    elsif item < center
      search(item, list[0..center_index - 1])
    elsif center < item
      search(item, list[center_index + 1..-1])
    end
  end
end
