require 'csv'
require_relative '../C_LectorDeArchivos/file_reader'


class CsvReader < FileReader
  #No necesitamos initialize por que estamos eredando el de file_reader
  
  def read
    puts 'Leyendo un csv'
    contents = CSV.read(@file)
    puts contents
  end
  
end
