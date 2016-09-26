class FileParser
  def open_file(file_path)
    File.open(file_path, "r")
  end

  def read_file(file)
    file.read
  end

  def string_to_array(string)
    string.split
  end
end
