# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

uno = 7
dos = 3

uno_float = 7.0
dos_float = 3.0

# Funcion de operadores
puts "1. 1 mas 2 es = " +(1+2).to_s
puts "2. 1.class es = " + 1.class.name
puts '3. "1".class es : ' + "1".class.name
puts '4. "1" + "2" = ' + "1" + "2"

# Suma
puts "5. #{uno} mas #{dos} = #{uno + dos}" 

# Resta
puts "6. #{uno} menos #{dos} = #{uno - dos}"

# Multiplicacion
puts "7. #{uno} por #{dos} = #{uno * dos}" 
 
# Division
puts "8. #{uno} entre #{dos} = #{uno / dos}"
puts "9. #{uno} entre #{dos}  con decimales usa *.to_f (float) = #{uno/dos.to_f}" 
puts "10. #{uno_float} entre #{dos_float} = #{uno_float / dos_float}"
puts "11. #{uno_float} entre #{dos_float} sin decimales *.to_i (int) = #{(uno_float/dos_float).to_i}"

# Modulo
puts "12. #{uno_float} modulo #{dos_float} = #{uno_float % dos_float}"
puts "13. #{uno} modulo #{dos} = #{uno % dos}"

# Pares y Nones
puts "14. 2.odd? (es non?) = #{2.odd?}"
puts "15. 2.even? (es par?) = #{2.even?}"

# Pregunta si es un tipo de clase
puts "16. 2.0.is_a?(String) = #{2.0.is_a?(String)}" 
puts "17. 2.0.is_a?(Integer) = #{2.0.is_a?(Integer)}" 
puts "18. 2.0.is_a?(Fixnum) = #{2.0.is_a?(Fixnum)}" 
puts "19. 2.0.is_a?(Float) = #{2.0.is_a?(Float)}"

# Comparaciones
puts "20. 1 == 2 : #{1 == 2}"
puts "21. 2 == 2 : #{2 == 2}"
puts "22. \"2\" == 2 : #{"2" == 2}"
puts "23. \"2\" == \"2\" : #{"2" == "2"}"
puts "24. \"2\" == \"3\" : #{"2" == "3"}"
puts "25. \"2\" == 2.to_s : #{"2" == 2.to_s}"
puts "26. 5 < 2 : #{5 < 2}"
puts "26. 5 < 9 : #{5 < 9}"
puts "27. 5 != 2 : #{5 != 2}"

# Numero aleatorio
puts "28. rand (aleatorio) : #{rand}" 
puts "29. rand(10) (aleatorio del 0 al 9) : #{rand(10)}"

# Multiplicacion del Strings
puts "30. \"2\" * 4 : #{"2" * 4} ....   lo contrario no funciona 4 * \"2\""
print "31. 5.times {puts \"hola\"} :::"

# El metodo times
5.times { print " hola "  }
puts

# Exponencial con el metodo times
numero_1 = 11
numero_2 = 7
numero_2.times { numero_1 = (numero_1 * numero_2) }
puts "32. numero_2.times { numero_1 = (numero_1 * numero_2) } = #{numero_1}"

# Ingreso de datos desde consola
puts "33. Cual es el primer numero"
numero_1 = gets.chomp # No hay que hacer la conversion a float -- gets.chomp.to_f -- sino al final
puts "33. Cual es el segundo numero"
numero_2 = gets.chomp
puts "33. #{numero_1} por #{numero_2} = #{numero_1.to_f * numero_2.to_f}"

# Metodos
def suma(num_1, num_2)
  puts "La suma de los parametros es : #{num_1 + num_2}"  
end

suma(3,7)

suma(numero_1.to_f, numero_2.to_f)
