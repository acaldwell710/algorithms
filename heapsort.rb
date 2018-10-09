def heapsort(arr)
  build_max_heap(arr)
    for i = arr.length..2
      swap(arr[1], arr[i])
      n = n - 1
      heapify(arr,i)
      end
end

def build_max_heap(arr)
  n = arr.length
  for i = arr.length/2..1
    heapify(arr,i)
  end
end


def heapify(arr, i)
  l = 2i
  r = 2i + 1
  if (l <= n) && (arr[l] > arr[i])
    largest = l
  else
    largest = i
  end
  if (r <= n) && (arr[r] && > arr[largest])
    largest = r
  end
  if largest != i
    swap(arr[i], arr[largest])
    heapify(arr,largest)
  end
end
