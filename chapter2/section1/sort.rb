#!/usr/bin/env ruby

module Sort
  def self.insertion(list)
    list.inject([]) { |sorted_list, a| insert(a, sorted_list) }
  end

  def self.insertion_reverse(list)
    list.inject([]) { |sorted_list, a| insert_reverse(a, sorted_list) }
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

  def self.insert_reverse(a, list)
    return [] if a.nil?
    return [a] if list.empty?
    b = list.shift
    if a > b
      [a, b].concat list
    else
      [b].concat insert_reverse(a, list)
    end
  end
end
