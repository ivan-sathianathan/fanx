class FileAnalyser

  def number_of_words(string_array)
    string_array.length
  end

  def words_sorted_by_frequency(string_array)
    frequency_hash = Hash.new(0)
    string_array.each { |word| frequency_hash[word] +=1 }
    string_array_sorted = frequency_hash.sort_by {|key, value| value }
    words_by_frequency = string_array_sorted.reverse.map { |e| e[0] }
  end

  def words_sorted_with_freqency(string_array)
    frequency_hash = Hash.new(0)
    string_array.each { |word| frequency_hash[word] +=1 }
    string_array_sorted = frequency_hash.sort_by {|key, value| value }
    words_by_frequency = string_array_sorted.reverse.map { |e| e }
    str = ""
    words_by_frequency.each_with_index do |word, index|
      if index == words_by_frequency.size - 1
        str += word[0] + " => " + word[1].to_s
      else
        str += word[0] + " => " + word[1].to_s + ", "
      end
    end
    str
  end
end
