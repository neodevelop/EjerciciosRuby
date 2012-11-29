class Prueba1 
    #Ejemplos pattern =~
	def expresiones1
		/cat/ =~ "dog and cat"
	end
	def expresiones2
		"catch" =~ /cat/
	end
	def expresiones3
		/cat/ =~ "Cat"
	end
	#Ejemplo condicional
	def usoCondicional(cadena)
		if  cadena =~ /cat/
			puts "Existe 'cat' en la palabra"
		else 
			puts "No existe 'cat' en la palabra"
		end
	end
	#Ejemplo con manejo de archivo y pattern =~
	def pruebaArchivo(archivo)
		File.foreach(archivo).with_index do |line, index|
		puts "#{index}: #{line}" if line =~ /on/
		end
	end
	#Ejemplo con manejo de archivo y pattern !~
	def pruebaArchivoNegado(archivo)
		File.foreach(archivo).with_index do |line, index|
		puts "#{index}: #{line}" if line !~ /on/
		end
	end
	#Ejemplo cambio de cadenas con patterns retorna una nueva cadena
	def pruebaSubGsub(cadena)
		new_str1 = cadena.sub(/a/, "*")
		new_str2 = cadena.gsub(/a/, "*")
		puts "Usando sub: #{new_str1}"
		puts "Usando gsub: #{new_str2}"
	end
	#Ejemplo cambio de cadenas con patterns cadena original
	def pruebaSubGsubOriginal(cadena)
		cadena.sub!(/a/, "*")
		cadena.gsub!(/a/, "*")
		puts "Usando sub: #{cadena}"
		puts "Usando gsub: #{cadena}"
	end
end

p1 = Prueba1.new()
=begin
puts p1.expresiones1
puts p1.expresiones2
puts p1.expresiones3
=end
#puts p1.usoCondicional("existe cat")
#puts p1.pruebaArchivo("test.txt")
#puts p1.pruebaArchivoNegado("test.txt")
#puts p1.pruebaSubGsub("Dog and Cat")
puts p1.pruebaSubGsubOriginal("Dog and Cat")