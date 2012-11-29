# Uh modulo es:  
#  - una colección nombrada de métodos y variables(como una Clase)
#  - Una forma de agrupar clases dentro de un 'namespace'
module MyModule
  REWARD = 1000
  def prize
    return "Has ganado #{REWARD} pancholares"
  end
  def MyModule.saluda
    return "Hola desdee el modulo"
  end
end

puts MyModule.saluda
#puts(prize) #Error!
#puts(MyModule.prize) #Error!


module Test # crea un 'namespace' "Test"
  module Unit # crea un 'namespace' "Unit"
    class TestCase # Para referir a esto desde cualquier parte es Test:::Unit::TestCase
    end
  end
end

