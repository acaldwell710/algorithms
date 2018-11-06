def better_written_ruby(*arrays)
  sorted_array = arrays.flatten
  n = sorted_array.length
  begin
    swapped = false
    (n - 1).times do |i|
      if sorted_array[i] > sorted_array[i + 1]
        tmp = sorted_array[i]
        sorted_array[i] = sorted_array[i + 1]
        sorted_array[i + 1] = tmp
        swapped = true
      end
    end
  end until not swapped
    sorted_array
end
