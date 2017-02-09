#!/usr/bin/env ruby

module Sort
  def self.insertion(list)
    list.inject([]) { |sorted_list, a| insert(a, sorted_list) }
  end

  private

  def self.insert(a, list)
    return [] if a.nil?
    return [a] if list.empty?
    b = list.shift
    if a < b
      [a, b].concat list
    else
      [b].concat insert(a, list)
    end
  end
end
