#Herenciai
class Padre
  def saluda
    puts "Hola desde #{self}"
  end
end

class Hijo < Padre
end

instanciaPadre = Padre.new
instanciaPadre.saluda

instanciaHijo = Hijo.new
instanciaHijo.saluda
