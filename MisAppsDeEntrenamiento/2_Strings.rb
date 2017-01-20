# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

nombre = "Juan"
apellido = "Sainz"

#Insercion en otro texto
puts nombre + " " + apellido
puts "1. Mi nombre es : " + nombre + ", y mi apellido es: " + apellido
puts "2. Mi nombre es #{nombre} y mi apellido es #{apellido}" # Con doble comilla funciona
puts '3. Mi nombre es #{nombre} y mi apellido es #{apellido}' # COn comillas senciallas no 

#Secuencias de escape
puts "4. Si cambiamos entre comillas simples y dobles 'Si aparecen' "
puts "5. Puedo escapar las comillas \" usando diagonales\""
puts "6. Este es \t tab"
puts "7. Este es \n salto de renglón"

# Con class obtengo la clase y con  name conviero el reultado en String
puts "8. La clase de nombre es nombre.class " + nombre.class.name
puts "9. la clase de 5.4 es 5.4.class " + 5.4.class.name
puts "10. Esto es string ju" + "10. Esto es string".class.name

#Atributos de la variable
puts "11. nombre.inspect da : " + nombre.inspect
puts "12. nombre.nil : " + nombre.nil?.to_s
puts "13. nombre.empty : " + nombre.empty?.to_s

#Tamaño del string
puts "14. nombre.length es : " + nombre.length.to_s
nombre = "Juan Pablo"
puts "15. Ahora nombre es " + nombre + " y nombre.length es " + nombre.length.to_s

#El string leido de derecha a izquierda
puts "16. nombre.reverse es : " + nombre.reverse

#El string vacio si esta vacio pero no es nulo
puts '17. "".nil? nos da : ' + "".nil?.to_s
puts '18. "".empty? nos da : ' + "".empty?.to_s

#Referencia a otro String
puts "19. Nombre es : " + nombre
nuevo_nombre = nombre
puts "20. Nuevo_nombre es igual a nombre es : " + nuevo_nombre
nombre = "Juan"
puts "21. Modificamos nombre a : " + nombre +" Pero nuevo_nombre sigue haciendo referencia a : " + nuevo_nombre
#Esto solo pasa con el String 

#Ingreso de datos desde consola
puts "22. Escribe tu nombre "
nombre = gets.chomp
puts "23. Hola : #{nombre}"

#Ingreso de datos desde consola mas de una nombre
puts "24. Escribe tu nombre "
nombre = gets.chomp
puts "25. Escribe tu apellido "
apellido = gets.chomp
puts "26. Bienvenido : #{nombre} #{apellido}"

stringDePrueba = 'El nombre es Juan'
print "En el testo #{stringDePrueba} voy a cambiar Juan por Pepe con stringDePrueba.gsub! 'Juan', 'Pepe'  : "
print "#{stringDePrueba.gsub! 'Juan', 'Pepe'}"; puts






