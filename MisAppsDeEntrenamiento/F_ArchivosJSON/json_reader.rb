require_relative '../C_LectorDeArchivos/file_reader'
require 'json'

class JsonReader < FileReader
  def read
    puts 'Leyendo un JSON'
    contents = File.read(@file)
    json_parse = JSON.load(contents)
    puts json_parse
  end
end

JsonReader.new('ejemplo.json').read
