require 'file_reader'

describe FileReader do
  subject(:file_reader) { described_class.new }
  let(:file) { double(:file, read: file_contents)  }
  let(:file_path) { double(:file_path) }
  let(:file_contents) { "this is a test string. another test string test" }

  context '#open_file' do
    it 'opens a file' do
      allow(File).to receive(:open).with(file_path, "r").and_return(file)
      expect(file_reader.open_file(file_path)).to eq file
    end
  end

  context '#read_file' do
    it 'reads file contents' do
      expect(file_reader.read_file(file)).to eq file_contents
    end
  end
end
