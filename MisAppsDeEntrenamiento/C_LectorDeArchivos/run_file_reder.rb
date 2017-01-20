require_relative 'file_reader'

=begin
x = FileReader.new(ARGV[0])
x.read 
=end

FileReader.new(ARGV[0]).read
FileReader.new(ARGV[1]).read