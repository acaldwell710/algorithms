# This method takes n arrays as input and combine them in sorted ascending  order
 def ruby_sort(*arrays)
   arrays.each do |array|
     if array.length <= 1
       array
     else
       mid = (array.length / 2).floor
       left = ruby_sort(array[0..mid -1])
       right = ruby_sort(array[mid..array.length])

       combine(left, right)
     end
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
