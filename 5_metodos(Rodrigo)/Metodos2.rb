class Metodos2

	#Ejemplo Llamada a un metodo
	def pruebaMetodos
		puts File.size("Metodos.rb")
		puts Math.sin(Math::PI/4)
	end
	#Ejemplo Llamada a un metodo con o sin parentesis
	def pruebaParentesis(*slap)
		"#{slap.inspect}"
	end
	#Ejemplo retorno de valor
	def methTwo(a1)
		case
		when a1 > 0 then "positive"
		when a1 < 0 then "negative"
		else 		     "Zero"
		end
	end
	#Ejemplo retorno de valorres
	def methThree
		100.times do |num|
			square = num*num
			return num,square if square > 1000
		end
	end
	

end

metodos = Metodos2.new()
=begin Prueba llamada a un metodo y argumentos con y sin parentesis
puts metodos.pruebaMetodos
puts metodos.pruebaParentesis(1,2,3)
puts metodos.pruebaParentesis 4,5,6
=end
#=begin Metodos retorno de valor
puts metodos.methTwo(0)
num,square = metodos.methThree
puts num
puts square
puts metodos.methThree
#=end









