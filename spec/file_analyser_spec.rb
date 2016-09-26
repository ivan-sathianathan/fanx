require 'file_analyser'

describe FileAnalyser do
  subject(:file_analyser) { described_class.new }
  let(:file_contents) { "this is a test string. another test string test" }

  context '#string_to_array' do
    it 'splits contents of file into an array of words' do
      expect(file_analyser.string_to_array(file_contents)).to eq ["this", "is", "a", "test", "string.", "another", "test", "string", "test"]
    end
  end

  context '#number_of_words' do
    it 'outputs number of words in a file' do
      string_array = ["this", "is", "a", "test", "string.", "another", "test", "string", "test", "test"]
      expect(file_analyser.number_of_words(string_array)).to eq 10
    end
  end

  context "#print_ten_most_frequent_words" do
    it 'prints ten most frequent words and their frequencies' do
      string_array = ["a1",
                      "a2", "a2",
                      "a3", "a3", "a3",
                      "a4", "a4", "a4", "a4",
                      "a5", "a5", "a5", "a5", "a5",
                      "a6", "a6", "a6", "a6", "a6", "a6",
                      "a7", "a7", "a7", "a7", "a7", "a7", "a7",
                      "a8", "a8", "a8", "a8", "a8", "a8", "a8", "a8",
                      "a9", "a9", "a9", "a9", "a9", "a9", "a9", "a9", "a9",
                      "a10", "a10", "a10", "a10", "a10", "a10", "a10", "a10", "a10", "a10",
                      "a11", "a11", "a11", "a11", "a11", "a11", "a11", "a11", "a11", "a11", "a11",
                      "a12", "a12", "a12", "a12", "a12", "a12", "a12", "a12", "a12", "a12", "a12", "a12"
                    ]
      expect(file_analyser.print_ten_most_frequent_words(string_array)).to eq "a12 => 12, a11 => 11, a10 => 10, a9 => 9, a8 => 8, a7 => 7, a6 => 6, a5 => 5, a4 => 4, a3 => 3"
    end
  end
end
