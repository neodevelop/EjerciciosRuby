module Math
  CASI_PI = 22.0/7 # Definición de constantes en PI
  attr_accessor :variable
  def is_even?(num) #Definición de un método en el módulo
     @variable = 0
     (num & 1) == 0
  end
  class Calculadora
  end
end

class Calculadora
    include Math
end

puts Math::CASI_PI
#puts Math::is_even? 1
#puts Math::is_even? 2

calculadora = Calculadora.new # Todavia no se crea la variable de instancia
puts calculadora.variable
puts calculadora.is_even? 3 # Ya existe la variable en el momento de la ejecuión
puts calculadora.variable
