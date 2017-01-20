############## if elsif else ##################

opp = ""
num_1 = 0
num_2 = 0

def calculadora(num_1, num_2, operacion)
  if(operacion == "+")
    num_1 = num_1.to_f + num_2.to_f
  end
  if(operacion == "-")
    num_1 = num_1.to_f - num_2.to_f
  end
  if(operacion == "*")
    num_1 = num_1.to_f * num_2.to_f
  end
  if(operacion == "/")
    num_1 = num_1.to_f / num_2.to_f
  end
  if(operacion == "+-")
    num_1 = num_1.to_f * -1
  end
  
  puts num_1
end

puts "Primer numero"
num_1 = gets.chomp
puts "operacion"
opp = gets.chomp
puts "Segundo numero"
num_2 = gets.chomp

calculadora(num_1, num_2, opp)

if(num_1.to_i < 6)
  puts "Menor a seis"
elsif(num_1.to_i > 5 && num_1.to_i < 12 )
  puts "Entre 6 y 11"
else
  puts "Es mayor a 11"
end
############## END if elsif else ##################

############## Juego de los dedos ##################
puts "\nHOW MANY FINGERS \n"

puts "How many fingers am I holding up"
player_response = gets.chomp
aleatorio = rand(6)

if player_response.to_i == aleatorio.to_i
  puts "Ganaste"
elsif(player_response.to_i > 5)
  puts "Maximo puede ser 5"
else
  puts "Perdiste tengo #{aleatorio}"
end
############## END Juego de los dedos ##################

############## case ##################

puts "Cual es tu calificacion"
respuesta = gets.chomp.to_i

resultado = case  respuesta
when 0..59 then "retrasado"
when 60..79 then "mediocre"
when 80..100 then "bien"
else "Enteros maximo 100"
end

puts resultado

############## END case ##################