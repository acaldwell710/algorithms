require 'benchmark'
require 'quick_sort'
require 'heapsort'
require 'bucket_sort'

n = 50000
#calculate quick_sort with an Array
Benchmark.bm do |quick_sort|
  quick_sort.report {1.upto(n) do; a = 1; end}
end

#calculate heapsort with an Array
Benchmark.bm do |heapsort|
  heapsort.report {1.upto(n) do; a = 1; end}
end

#calculate bucket_sort with an Array
Benchmark.bm do |bucket_sort|
  bucket_sort.report {1.upto(n) do; a = 1; end}
end
