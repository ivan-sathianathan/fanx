class FileReader
  def open_file(file_path)
    File.open(file_path, "r")
  end

  def read_file(file)
    file.read
  end
end
