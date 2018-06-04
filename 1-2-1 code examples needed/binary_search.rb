#find the mid point of the array
#compare the  mid point with the value being searched
#if the mid point is lower than the value, search the upper half of the array
#find the new mid point until there is only two values to compare
#if the mid point is higher than the value, search the lower half of the array
#find the new mid point until there is only two values to compare

array = [1,2,3,4,5,6,7,8,9,10]
value = 4

def binary_search(array, value)
  size = array.length
  puts "Size is #{size}"
  midpoint = array.slice(size / 2)
  puts "Midpoint is #{midpoint}"
  midpoint_index = array.find_index(midpoint)
  puts "Midpoint index is #{midpoint_index}"
  if midpoint == value
    puts "#{value} found"
  elsif midpoint < value
    puts "Midpoint is lower than value"
    n = midpoint_index+1
    higher_array = array[n..array.size]
    if higher_array.size == 2
      puts "Array size is 2"
      search_for_result(higher_array, value)
    else
      midpoint = higher_array.slice(size / 2)
      # deal with slicing the array further until it's size of 2
    end
  elsif midpoint > value
    puts "Midpoint is higher than value"
    n = midpoint_index-1
    lower_array = array[0..n]
    if lower_array.size == 2
      search_for_result(lower_array, value)
      # FOO
      fopihio
    end
  end
end

# When array is a size of 2, use select to find if the value is in the final array
def search_for_result(array, value)
  puts "In search for result which happens when size of 2"
  result = array.select {|number| number == value}
  if result.empty?
    puts "value not found"
  else
    puts "#{value} found"
  end
end

def get_midpoint_value(array)
end

def get_higher_array(array)
end

def get_lower_array(array)
end

binary_search(array, value)
