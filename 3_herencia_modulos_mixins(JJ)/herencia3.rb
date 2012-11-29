rand = 0.6
puts "Antes de la definciion de la clase: #{self}"
#class Misa
class ClaseDinamica < (rand < 0.5 ? Array : Hash)
  def saluda
    puts "Soy una #{self.class} y soy hija de #{self.class.superclass}"
  end
end

o1 = ClaseDinamica.new()
o1.saluda

