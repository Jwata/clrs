#!/usr/bin/env ruby

module SelectionSort
  def self.sort(list)
    for i in (0..list.size-1)
      num, index = find_min_with_index(list.slice(i, list.size - i))
      list[index + i] = list[i]
      list[i] = num
    end
    list
  end

  private

  def self.find_min_with_index(list)
    min = nil
    min_index = nil
    list.each_with_index do |item, index|
      if min.nil? || item < min
        min = item
        min_index = index
      end
    end
    [min, min_index]
  end
end
