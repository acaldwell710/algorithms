# This method takes n arrays as input and combine them in sorted ascending  order
 def poorly_written_ruby(*arrays)
   combined_array = []
   cal = combined_array.length
   #for each n arrays, each array will be iterated through
   arrays.each do |array|
     array.each do |value|
       combined_array << value
     end
   end

   sorted_array = [combined_array.delete_at(cal - 1)]

   for val in combined_array
     i = 0
     temp = sorted_array.length
     while i < temp
       if val <= sorted_array[i]
         sorted_array.insert(i, val)
         break
       elsif i == temp - 1
         sorted_array << val
         break
       end
       i+=1
     end
   end

   # Return the sorted array
   sorted_array
 end
