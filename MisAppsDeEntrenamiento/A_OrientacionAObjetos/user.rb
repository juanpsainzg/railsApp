
#Creamos la clase
class User
  #el método initialize es equivalente a un contructor en java
  #la @ (@name) significa que es una variable de instancia 
  #si uso attr_accessor :name me crea el setter y getter
  
  attr_accessor :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end
  
  
  
=begin
# PRUEBA SETTERS Y GETTERS
  def get_name()
    # Puedo usar o no return 
    @name
  end
  
  def set_name(name)
    @name = name
  end
=end
  
end

# PRUEBA attr_accessor :name
juan = User.new('juan', 'juan@here.note')


puts "#{juan.name} email #{juan.email}"
juan.email = 'juan@nowere.note'
puts "#{juan.name} email #{juan.email}"


=begin
# PRUEBA SETTERS Y GETTERS

pedro = User.new('pedro') // No se habia agregado el email
pablo = User.new('pablo') // No se habia agregado el email

puts juan
puts pablo.run
puts pedro.get_name

pedro.set_name('pedro_luis')
puts pedro.get_name

pedro.set_name  'pedro_pablo'
puts pedro.get_name
=end

# juan.name -- Da error
# juan.@name -- Da error





#######################



## Creamos un objeto de la clase, es decir, instaciamos la clase
#user = User.new('pipa')

## Al imprimirlo vemos el objeto
#puts user

## vemos de quien hereda
# puts User.ancestors


