require_relative 'file_reader'
require_relative 'csv_reader'
require_relative 'yml_reader'
require_relative 'json_reader'


FILENAME = ARGV[0]

def file_extension(filename)
  filename.split('.').last
end


def reader_class
  ext = file_extension(FILENAME)
  return CsvReader if ext == 'csv'
  return YmlReader if ext == 'yml'
  return JsonReader if ext == 'json'
  FileReader  
end

reader_class.new(FILENAME).read