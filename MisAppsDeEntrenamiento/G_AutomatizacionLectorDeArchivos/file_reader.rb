
class FileReader
  attr_accessor :file 
  def initialize(file)
    @file = file
  end
  
  def read
    puts 'reading file'
    content = File.read(@file)
    puts content
  end
end

