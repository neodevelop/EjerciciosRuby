class Metodos

	#Ejemplo metodos con parametros usando = por default
	def testMetodo(a1 = "Pepe", a2 = "Pecas", a3 = "Pica Papas")
		"#{a1}, #{a2}, #{a3}"
	end
	#Ejemplo metodos con parametros usando = por default
	def surround(word, pad_width=word.length/2)
		"[" * pad_width + word + "]" * pad_width
	end
	#Ejemplo numero de parametros variable
	def varargs(a1, *rest)
		"a1=#{a1}, rest=#{rest.inspect}"
	end
	#Ejemplo numero de parametros variable Ruby 1.9
	def varargs1_9(a1, *splat, last)
		"a1=#{a1}, splat=#{splat.inspect}, last=#{last}"
	end
	#Ejemplo metodos y bloques
	def double(p1)
		yield(p1*2)
	end

end

metodos = Metodos.new()
#=begin Prueba metodos con parametros inicializa 
puts metodos.testMetodo
puts metodos.testMetodo("Miny Hulk")
puts metodos.surround("Holas")
#=end
#=begin Prueba metodos con parametros variables
puts metodos.varargs(1,2,"3")
puts metodos.varargs1_9(1,2,"3",5,6)
puts metodos.varargs1_9(1,4)
#=end
#=begin Prueba metodos y bloques yield
puts metodos.double(20){|val| "I got #{val}"}
puts metodos.double("tom"){|val| "Then I got #{val}"}
#=end










