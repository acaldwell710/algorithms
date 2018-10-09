def quick_sort (arr, lo, hi)
  if lo < hi
    p = partition(arr, lo, hi)
    quick_sort(arr, lo, p - 1)
    quick_sort(arr, p + 1, hi)
  end
end

def partition(arr, lo, hi)
  pivot = arr[hi]
  i = lo
  for j = lo..hi - 1
    if arr[j] < pivot
      swap(arr[i],arr[j])
      i = i + 1
    end
  swap(arr[i],arr[hi])
  end
  return i
end
