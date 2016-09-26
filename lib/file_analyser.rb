class FileAnalyser

  def string_to_array(file_contents)
    file_contents.split
  end

  def number_of_words(string_array)
    string_array.size
  end

  def print_ten_most_frequent_words(string_array)
    ten_most_frequent_words = ten_most_frequent_words(string_array)
    print_string_of_ten_most_frequent_words(ten_most_frequent_words)
  end

  private

  def print_string_of_ten_most_frequent_words(ten_most_frequent_words)
    string_output = ""
    ten_most_frequent_words.each_with_index do |word, index|
      if index != ten_most_frequent_words.size - 1
        string_output += word[0] + " => " + word[1].to_s + ", "
      else
        string_output += word[0] + " => " + word[1].to_s
      end
    end
    string_output
  end

  def words_sorted_by_frequency(string_array)
    frequency_hash = Hash.new(0)
    string_array.each { |word| frequency_hash[word] +=1 }
    string_array_sorted = frequency_hash.sort_by {|key, value| value }
    string_array_sorted.reverse.map { |e| e }
  end

  def ten_most_frequent_words(string_array)
    words_sorted_by_frequency = words_sorted_by_frequency(string_array)
    words_sorted_by_frequency[0..9]
  end

  def print_word_and_frequency(word)
    word[0] + " => " + word[1].to_s
  end
end
