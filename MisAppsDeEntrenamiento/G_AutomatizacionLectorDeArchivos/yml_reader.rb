
require 'yaml'
require_relative '../C_LectorDeArchivos/file_reader'


class YmlReader < FileReader
  def read
    puts 'Leyendo un Yaml'
    contents = YAML.load_file (@file)
    puts contents
  end
end
