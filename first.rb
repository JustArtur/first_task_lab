class Query
  def generate_next_string(base_str=String)
    next_str = []
    base_str.each_char do |char|
      char == next_str.last&.last ? next_str.last[0] += 1 : next_str << ([1, char])
    end
    next_str.flatten.join
  end

  def generate_query(base_str, count_strings)
    count_strings.times do
      base_str = generate_next_string(base_str)
      puts base_str
    end
  end

end



Query.new.generate_query('1', 7)
