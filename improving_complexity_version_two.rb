
      def better_written_ruby(array)
        sorted_array = [array.delete_at(0)]

        for val in array
          i = 0
          temp = sorted_array.length
          while i < temp
            if val <= sorted_array[i]
              sorted_array.insert(i, val)
              break
            elsif i == temp - 1
              sorted_array.insert(i + 1, v)
              break
            end
            i+=1
          end
        end
        sorted_array
      end
