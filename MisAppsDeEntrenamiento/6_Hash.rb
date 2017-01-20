=begin
Hash es una estructura de almacenamiento de datos que tiene una llave y un valor asociados
=end

#Esta es la forma antigua de declarar hash
pares = {'name'=> 'Juan', 'color' => 'azul'}
puts "1. El hash es #{pares}"

#Esta es la nueva forma de declara hash
pares = {name: 'Juan', color: 'azul'}
puts "2. La nueva forma de hash es {name: 'Juan', color: 'azul'} ::: que se interpreta #{pares}"

#Accedemos a los valores
puts "3. #{pares[:name]}"

#Cambiamos un valor
pares[:name] = 'Pepe'
puts "4. #{pares}"

#Agregamos un valor
pares[:edad] = 21
puts "5. #{pares}"

#Agregamos un valor con la llave como String
pares['estatura'] = 182
puts "6. #{pares}"
#Que no es lo mismo que 
pares[:estatura] = 182
puts "7. #{pares}"
#Y lo llamamos asi
puts "8. #{pares['estatura']}"

#Eliminamos un valor
pares.delete("estatura")
puts "9. #{pares}"

#ITERACION EN EL HASH
pares.each { |key, value| print "10.  #{key}, #{value} /" }
puts ""
pares.each { |k,v| print "11. #{v} /"  }
puts ""

#CONDICIONALES EN EL HASH
numeros = {a:1, b:2, c:3, d:4}
puts "12. numeros = #{numeros}"
numeros.each { |k,v| numeros.delete(k) if  v.odd? }
puts "13. numeros = #{numeros}"

numeros = {a:1, b:2, c:3, d:4, e:5, f:6}
puts "14. numeros = #{numeros}"
numeros.each { |k,v| numeros.delete(k) if v >3 }
puts "15. numeros = #{numeros}"

#Length
puts "16. #{numeros.length} o #{numeros.size}"

#Los métodos son 
numeros.methods.each { |i|  print "17. #{i} /" }