require 'file_analyser'

describe FileAnalyser do
  subject(:file_analyser) { described_class.new }
  let(:file_contents) { "this is a test string. another test string" }

  context '#number_of_words' do
    it 'outputs number of words in a file' do
      string_array = ["this", "is", "a", "test", "string.", "another", "test", "string", "test"]
      expect(file_analyser.number_of_words(string_array)).to eq 9
    end
  end

  context '#words_sorted_by_frequency' do
    it 'outputs words in the order of frequency, highest to lowest' do
      string_array = ["a", "a", "a", "a", "a", "b", "b", "b", "b", "c", "c", "c", "d", "d", "e"]
      expect(file_analyser.words_sorted_by_frequency(string_array)).to eq ["a", "b", "c", "d", "e"]
    end
  end

  context '#words_sorted_with_freqency' do
    it 'outputs words in order of frequency with frequency' do
      string_array = ["a", "a", "a", "a", "a", "b", "b", "b", "b", "c", "c", "c", "d", "d", "e"]
      expect(file_analyser.words_sorted_with_freqency(string_array)).to eq "a => 5, b => 4, c => 3, d => 2, e => 1"
    end
  end
end
