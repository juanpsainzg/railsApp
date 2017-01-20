card_details = [
  {ace_of_spades: {numeric_value: 1, value:14}},
  {two_of_spades: {numeric_value: 2, value: 2}},
  {three_of_spades: {numeric_value: 3, value: 3}},
  {four_of_spades: {numeric_value: 4, value: 4}},
  {five_of_spades: {numeric_value: 5, value: 5}},
  {six_of_spades: {numeric_value: 6, value: 6}},
  {seven_of_spades: {numeric_value: 7, value: 7}},
  {eight_of_spades: {numeric_value: 8, value: 8}},
  {nine_of_spades: {numeric_value: 9, value: 9}},
  {ten_of_spades: {numeric_value: 10, value: 10}},
  {jack_of_spades: {numeric_value: 11, value: 11}},
  {queen_of_spades: {numeric_value: 12, value: 12}},
  {king_of_spades: {numeric_value: 13, value: 13}},
  
  
] 

def get_card_value(card_details, card)
  card_details.each do |name|
    name.each do |key, value|
      num_value = value[:numeric_value]
      return value[:value] if num_value == card
    end
  end
end

def get_card_type(card_details, numeric_value)
  card_details.each do |name|
    name.each do |key, value|
      num_value = value[:numeric_value]
      return key if num_value == numeric_value
    end
  end
end

def hand_value(card_details, card_1, card_2)
  hand_value_1 = get_card_value(card_details, card_1) 
  hand_value_2 = get_card_value(card_details, card_2)
  
  return hand_value_1 + hand_value_2
end

deck = (1..13).to_a.shuffle!
#print deck
#puts ""
#puts card_details
puts ""

#puts get_card_value(card_details, 1)
#puts get_card_type(card_details, 1)

player_card_1 = deck.pop
computer_card_1 = deck.pop 
player_card_2 = deck.pop
computer_card_2 = deck.pop 

puts "El jugador tiene #{get_card_type(card_details, player_card_1)} y #{get_card_type(card_details, player_card_2)} y el valor es #{hand_value(card_details, player_card_1, player_card_2)}"
puts "El dealer tiene #{get_card_type(card_details, computer_card_1)} y #{get_card_type(card_details, computer_card_2)} y el valor es #{hand_value(card_details, computer_card_1, computer_card_2)}"

if hand_value(card_details, player_card_1, player_card_2) > hand_value(card_details, computer_card_1, computer_card_2)
  puts "!!!! GANA EL JUGADOR :)"  
end
if hand_value(card_details, player_card_1, player_card_2) < hand_value(card_details, computer_card_1, computer_card_2)
  puts "gana la casa :("  
end
if hand_value(card_details, player_card_1, player_card_2) == hand_value(card_details, computer_card_1, computer_card_2)
  puts "Empate :{)"  
end








