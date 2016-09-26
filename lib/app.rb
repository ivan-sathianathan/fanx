require_relative 'file_analyser'
require_relative 'file_reader'

file_reader = FileReader.new
file_analyser = FileAnalyser.new

if ARGV.length > 0
  ARGV.each do |filename|
    file = file_reader.open_file(filename)
    file_contents = file_reader.read_file(file)
    string_array = file_analyser.string_to_array(file_contents)
    puts file_analyser.number_of_words(string_array)
    puts file_analyser.print_ten_most_frequent_words(string_array)
  end
else
  puts STDIN.read
end
