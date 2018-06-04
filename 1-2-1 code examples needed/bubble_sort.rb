def bubble_sort(array)
  n = array.length
  swapped = true
  while swapped do
    swapped = false
    (n - 1).times do |i|
      if array[i] > array[i + 1]
         array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
  end
  array
end

arr = [15, 3, 800, 5, 11, 6, 66, 44]
puts bubble_sort(arr)
