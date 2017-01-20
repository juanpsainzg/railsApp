require_relative 'csv_reader'


reader = CsvReader.new(ARGV[0])
reader.read

