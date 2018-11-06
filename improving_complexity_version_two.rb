def ruby_sort(*arrays)
  sorted_array = arrays.flatten
    if sorted_array.length <= 1
      sorted_array
    else
      mid = (sorted_array.length / 2).floor
      left = ruby_sort(sorted_array[0..mid - 1])
      right = ruby_sort(sorted_array[mid..sorted_array.length])

      combine(left, right)
    end
  end

def combine(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + combine(left[1..left.length], right)
  else
    [right.first] + combine(left, right[1..right.length])
  end
end
