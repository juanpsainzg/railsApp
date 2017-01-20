FILENAME = ARGV[0]
WORD_TO_CHANGE = ARGV[1]
NEW_WORD = ARGV[2]


def change_words
  contents = File.read(FILENAME)
  #Cambiamos word_to_change por new_word
  contents = contents.gsub(Regexp.new('\b'+WORD_TO_CHANGE+'\b') , NEW_WORD)
  #Lo escribimos en el texto
  File.open(FILENAME, "w") do |f|
    f << contents
  end 
end

change_words

