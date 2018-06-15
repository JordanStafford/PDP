
array = [1,2,3,4,5,6,7,8,9,10]
value = 4

def binary_search(array, value)
  while !@found do
    working_out_size_of_array_and_midpoint(array)
    midpoint_index = array.find_index(@midpoint)
    puts "Midpoint index is #{midpoint_index}"
    if @midpoint == value
      puts "#{value} found"
    elsif @midpoint < value
      puts "Midpoint is lower than value"
      array_n(array)
      #n = midpoint_index+1
      #array = array[n..array.size]
      if array.size == 2
        puts "Array size is 2"
        search_for_result(array, value)
      else
        midpoint = array.slice(size / 2)
        # deal with slicing the array further until it's size of 2
      end
    elsif @midpoint > value
      puts "Midpoint is higher than value"
      n = midpoint_index-1
      array = array[0..n]
      if array.size == 2
        search_for_result(array, value)
      end
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
    @found = true
  end
end

def working_out_size_of_array_and_midpoint(array)
  @size = array.length
  puts "Size is #{@size}"
  @midpoint = array.slice(@size / 2)
  puts "Midpoint is #{@midpoint}"
end

# while !binary_search(array, value)
  binary_search(array, value)
# end

def array_n(array)
  n = midpoint_index+1
  array = array[n..array.size]
end
