class MergeSorting

  def sort(numbers)
    if numbers.size <= 1
      return numbers
    end

    size_of_array   = numbers.size
    half_of_size = (size_of_array / 2).round

    array_left  = numbers.take(half_of_size)
    array_right = numbers.drop(half_of_size)

    sorted_array_left = sort(array_left)
    sorted_array_right = sort(array_right)

    merge(sorted_array_left, sorted_array_right)
  end


  def merge(array_left, array_right)
    if array_right.empty?
      return array_left
    end

    if array_left.empty?
      return array_right
    end

    smallest = if array_left.first <= array_right.first
      array_left.shift
    else
      array_right.shift
    end


    recursive = merge(array_left, array_right)

    [smallest].concat(recursive)
  end
end

merge_sort = MergeSorting.new
puts merge_sort.sort([33, 90, 3, 44, 86, 22, 67, 101].shuffle)
