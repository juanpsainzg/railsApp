FILENAME = ARGV[0]
WORD_TO_CHANGE = ARGV[1]


def change_words
  contents = File.read(FILENAME)
  #Remove punctuation and convert all string to lower case (usamos regex)
  contents = contents.gsub(/[^a-z0-9\s]/i, ' ')
  contents = contents.gsub(/\n/, ' ')
  contents = contents.downcase!
  
  words = contents.split(' ')
  count = words.count(WORD_TO_CHANGE.downcase)
  puts "La palabra #{WORD_TO_CHANGE} aparece #{count} veces en el texto"
end

change_words