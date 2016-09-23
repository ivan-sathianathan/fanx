class FileParser
  def open_file(file_path)
    File.open(file_path, "r")
  end

  def read(file)
    file.read
  end

  def parse(file)
    string = read(file)
    string.split
  end

end
