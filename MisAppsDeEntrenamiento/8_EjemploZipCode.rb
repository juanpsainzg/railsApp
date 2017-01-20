#Ejemplo Zip code dictionary

ciudades = {df: 1000, monterrey: 2000, guadalajara: 3000, puebla: 4000, queretaro: 5000}

puts "Quieres buscar un codigo postal [si / no]"
si_o_no = gets.chomp

if si_o_no == "si"
  puts "\nDe que ciudad lo quieres : "
  ciudades.each { |k,v| puts "#{k}"  }
  
  ciudad = gets.chomp
  
  resultado = case ciudad
  when "df" then puts 1000
  when "monterrey" then puts 2000
  when "guadalajara" then puts 3000
  when "puebla" then puts 4000
  when "queretaro" then puts 5000
  else
    "Esa ciudad no esta en la lista"
  end
  
elsif si_o_no == "no"
  
else
  puts "Escribe si o no"
  
end
