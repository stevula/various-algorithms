def merge_sort(array)
  return array if array.length <= 1

  mid   = array.length / 2
  left  = array[0...mid]
  right = array[mid..-1]

  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  sorted = []

  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end

  sorted + left + right
end

require 'pry'
binding.pry