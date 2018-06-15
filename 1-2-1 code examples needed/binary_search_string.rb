books = ["book 1", "book 2", "book 3", "book 4", "book 5", "book 6", "book 7", "book 8",
  "book 9", "book 10", "book 11", "book 12", "book 13", "book 14", "book 15", "book 16", "book 17", "book 18", "book 19",
  "book 20", "book 21", "book 23", "book 24", "book 25", "book 26", "book 27", "book 28", "book 29", "book 30", "book 31",
  "book 32", "book 33", "book 34", "book 35", "book 36", "book 37", "book 38",
  "book 39", "book 40", "book 41",]

  looking_for = "book 22"

  def binary_search(books, looking_for)
    working_out_size_of_array_also_midpoint(books)
    midpoint_index = books.find_index(@midpoint)
    puts "Midpoint index is #{midpoint_index}"
    if @midpoint == looking_for
      puts "#{value} found"
    elsif @midpoint < looking_for
      puts "Midpoint is lower than value"
    end
  end


  def working_out_size_of_array_also_midpoint(books)
    @size = books.length
    puts "Size of bookshelf is #{@size} books "
    @midpoint = books.slice(@size / 2)
    puts "Midpoint is #{@midpoint}"
  end

  binary_search(books, looking_for)
