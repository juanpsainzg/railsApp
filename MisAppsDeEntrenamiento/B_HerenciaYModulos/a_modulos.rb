# Modulo -- coleccion de comportamientos que otroas clases pueden usar por medio de mixings
# Se requiere incluir el módulo en la clase que lo quiere usar pero no se puede instanciar
# un módulo, es decir, no podemos crear un objeto del mísmo. Debe estar mezclado con clases
# para que de esta manera podamos ingresar a métodos dentro del mísmo.

# Por convencion los nombres de los modulos terminan en able 
module Destructable
  def destroy(any_object)
    puts 'voy a destruir el objeto'
  end
end


class User
  #Accedemos al módulo por medio de include
  include Destructable
  
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

user = User.new('juam', 'juan@x.com')

# Despues de incluir el módulo ya puedo usarlo en la clase.
user.destroy('juan')