class User
  
  attr_accessor :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end
  
  def run()
    puts 'corriendo'
  end
  
  # Se puede acceder a estos sin instanciaros (static en java)
  def self.metodo_de_clase
    puts 'Este es el metodo de clase'
  end
  
end

# Extendemos la clase User
class Buyer < User
  # Sobreescribimos run
  def run
    puts 'Hola soy buyer corriendo'
  end
end

# Extendemos la clase User
class Seller < User
  
end

# Extendemos la clase User
class Admin < User
  
end

buyer1 = Buyer.new('buyer1', 'buyer1œexmple.com')
buyer1.run
seller1 = Seller.new('seller1', 'buyer1œexmple.com')
seller1.run
admin1 = Admin.new('seller1', 'buyer1œexmple.com')
admin1.run

# Metodo de clase
User.metodo_de_clase


puts ''
puts Buyer.ancestors

# Modulo -- coleccion de comportamientos que otroas clases pueden usar por medio de mixings
# Se requiere incluir el módulo en la clase que lo quiere usar pero no se puede instanciar
# un módulo, es decir, no podemos crear un objeto del mísmo. Debe estar mezclado con clases
# para que de esta manera podamos ingresar a métodos dentro del mísmo.