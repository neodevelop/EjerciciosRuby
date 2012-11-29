#require 'modulo.rb'
#require_relative("otro_modulo.rb")
module Logger
  def log(msg) # Es un apuntador al método
    STDERR.puts msg
  end
end

class Truck
  extend Logger # Abre la clase fantasma de forma abreviada
    include Logger # Además se le puede incluir como metodos de instancia
end

un_camion = Truck.new
un_camion.log("Esto es un error") # No es una nueva referencia al metodo 
Truck.log("Truckeando...")

class Ship
  include Logger
end

una_nave = Ship.new
una_nave.log("Esto es un error 2") # Estamos apuntando al mismo metodo

module Logger
  def log(msg) # Es un apuntador a métodos
    STDERR.puts "Ya cambie el metodo"
  end
end 

una_nave2 = Ship.new
una_nave2.log("Esto es un error 2")
