require 'file_parser'

describe FileParser do
  subject(:file_parser) { described_class.new }
  let(:file) { double(:file, read: file_contents)  }
  let(:file_path) { double(:file_path) }
  let(:file_contents) { "this is a test string. another test string test" }

  context '#open_file' do
    it 'opens a file' do
      allow(File).to receive(:open).with(file_path, "r").and_return(file)
      expect(file_parser.open_file(file_path)).to eq file
    end
  end

  context '#read_file' do
    it 'reads file contents' do
      expect(file_parser.read_file(file)).to eq file_contents
    end
  end

  context '#string_to_array' do
    it 'splits contents of file into an array of words' do
      expect(file_parser.parse_file(file_contents)).to eq ["this", "is", "a", "test", "string.", "another", "test", "string", "test"]
    end
  end
end
