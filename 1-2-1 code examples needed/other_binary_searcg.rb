
array = [1, 2, 3, 4, 5, 6, 7 ,8 ,9, 10]
value = 7


def binary_search(array, value)
  first = 0
  last = array.length - 1

  while first <= last
    i = (first + last) / 2

    if array[i] == value
      return "#{value} found at position #{i} "
    elsif array[i] > value
      last = i - 1
    elsif array[i] < value
      first = i + 1
    else
      return "#{value} not found in the array"
    end
  end
end

puts binary_search(array, value)


def binary_search(array value)
  first_index = 0
  last_index = array.length - 1

  while first_index <= last_index - 1
    index = (first_index + last_index) / 2

    if array[index] == value
      return "The value of #{value} is found at position #{index}"
    elsif array[index] > value
      last_index = index - 1
    elsif array[index] < value
      first_index = index + 1
    else
      return "#{value} is not found anywhere in this array"
    end
  end
end 
