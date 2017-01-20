arreglo = []

arreglo << 1
arreglo << 2
arreglo << "a"
arreglo << "b"
arreglo << true
arreglo << "a"
arreglo << 123
arreglo << 124.09

puts "1. Para el arreglo arreglo = #{arreglo} arreglo[0] = #{arreglo[0]} y 
arreglo[2] = #{arreglo[2]} ya que indice empieza en cero"

puts "2. arreglo.is_a?(Array) (¿Es un arreglo?) : #{arreglo.is_a?(Array)}"
puts "3. arreglo[1].is_a?(Integer) (¿Es un entero?) : #{arreglo[1].is_a?(Integer)}"
puts "4. arreglo[2].is_a?(String) (¿Es un string?) : #{arreglo[2].is_a?(String)}"
puts "5. arreglo.include?('a') (¿Incluye a?) : #{arreglo.include?('a')}"
puts "6. Ver el arreglo al revez es arreglo.reverse : #{arreglo.reverse}"
puts "7. Cambiar el sentido del arreglo arreglo.reverese! : #{arreglo.reverse!}"
puts "8. Quitar el ultimo elemento arreglo.pop : quitamos el  #{arreglo.pop} y queda #{arreglo}"
puts "9. Agregar un elemento al final arreglo << 'juan' : #{arreglo << 'Juan'}"
puts "10. Tamaño del arreglo arreglo.length : #{arreglo.length}"
puts "11. Modificar un elemento arreglo[4] = 'ana' : agregamo #{arreglo[4] = 'ana'} y queda #{arreglo}"
puts "12. Modificar un elemento arreglo[7] = 'anna' : agregamo #{arreglo[7] = 'a'} y queda #{arreglo}"
puts "13. Agregar al inicio arreglo.unshift('pedro') : #{arreglo.unshift('pedro')}"
puts "14. Ver sin repetidos arreglo.uniq : #{arreglo.uniq}..  quita una a y un nil"
puts "15. Eliminar repetiros arreglo.uniq! : #{arreglo.uniq}"
puts "16. Ver los elementos desordenados arreglo.shuffle : #{arreglo.shuffle}"
puts "17. Rango entre 0 y 9 (0..9).to_a : #{(0..9).to_a}"
puts "18. Rango entre 0 y 9 ver desordenado (0..9).to_a.shuffle : #{(0..9).to_a.shuffle}
..... Baraja #{(1..52).to_a.shuffle}"
puts "19. Poner un elemento al final arreglo.push('otro') : #{arreglo.push("otro")}"

################ Iteradores ####################
i = 0
puts "20. Itera por cada elemento arreglo.each{|i| print 'valor #{i} / '} : "
arreglo.each{|i| print "valor #{i} / "}
puts 

puts "21. Selecciona solo los elementos que son Integer arreglo.each { |i| print i if i.is_a?(Integer) }"
arreglo.each{|i| print "valor #{i} / " if i.is_a?(Integer)}
puts

puts "22. Usando for queda : \nfor i in arreglo\n  puts 'i' if i.is_a?(Float)\nend"
for i in arreglo
  print "valor #{i} /" if i.is_a?(String)
end
puts

nombre = ["juan", "ana", "pedro", "pablo"]

puts '23. Para capitalizar cada uno de los nombres de #{nombre} uso nombre.each{|nombre| print "nombre #{nombre.capitalize} " }'
nombre.each{|nombre| print "nombre #{nombre.capitalize} "}
puts

puts '24. Otra forma de hacerlo es : nombre.each do |nombre| \n puts "nombre #{nombre.capitalize} " \n end'
nombre.each do |nombre|
  print "nombre #{nombre.capitalize} "
end
puts

puts "25. Para juntar todos los elementos del el arreglo #{nombre} usamos nombre.join : #{nombre.join}"
puts "26. Para juntar todos los elementos del el arreglo #{nombre} con espacios usamos nombre.join(' ') : #{nombre.join(' ')}"
nombre2 = nombre.join(', ')
puts "27. Pueso separar el String -- #{nombre2} -- con nombre2.split (Separa por espacios) : #{nombre2.split}"
puts "28. Pueso separar el String -- #{nombre2} -- con nombre2.split(', ')  : #{nombre2.split(', ')}"

a = (1..100).to_a
print "29. Con a.select { |i| i.odd?  } seleccionamos solo las  nones : #{a.select { |i| i.odd?  }}"
puts " "

