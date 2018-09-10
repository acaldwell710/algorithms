def binarysearch(collection, value, low, high)
	if (high < low)
		return not_found
	  mid = (low + high) / 2
  	if (collection[mid] > value)
  		return binarysearch(collection, value, low, mid-1)
  	elsif (collection[mid] < value)
  		return binarysearch(collection, value, mid+1, high)
  	else
  		return mid
  	end
  end
end
