class Prueba2

    #Asigna a un objeto la expresión regular
	def ejemploObjeto
		str = "Dog and Cat"
		pattern = /nd/
		puts pattern =~ str
		puts str =~ pattern
	end
	#Opciones para definir la expresión regular
	def ejemploOpcionesSintaxis
		str = "Dog and Cat"
		puts Regexp.new("nd") =~ str
		puts str =~ %r{nd}
	end
	#Introducción uso de exp#match(String)
	def introUsoMatch
		name = "Miny Hulk"
		puts name =~ /y/
		puts name =~ /z/
		puts /y/ =~ name
		puts /NY/i.match(name)
		Regexp.new("hulk","i").match(name)
	end
	def muestraUsoMatch(cadena,pattern)
	match = pattern.match(cadena)
		if match 
		"#{match.pre_match}-->#{match[0]}<--#{match.post_match}"
		else
		"no match"
		end
	end
	def mustraUsoDeMetaDataParentesis
		md = /((\d\d):(\d\d))(..)/.match("12:59am")
		puts "Time is #{md[1]}"
		puts "Hour is #{md[2]}, minute #{md[3]}"
		puts "AM/PM is #{md[4]}"
	end
	def mayusculasMinusculas(nombre)
		nombre.downcase.gsub(/\b\w/, &:upcase)
	end
	def manejoCadenas
		date = "12/15/2012"
		date =~ %r{(\d+)(/|:)(\d+)(/|:)(\d+)}
		[$1,$2,$3,$4,$5]
	end
end

p2 = Prueba2.new()
#puts p2.ejemploObjeto
#puts p2.ejemploOpcionesSintaxis
#puts p2.introUsoMatch
#puts p2.muestraUsoMatch("Miny Hulk",/NY/i)
#puts p2.muestraUsoMatch("Miny Hulk",Regexp.new("NY","i"))
#puts p2.muestraUsoMatch("Miny | Hulk",/\|/)
#puts p2.muestraUsoMatch("Miny (Hulk) Sic",/\(HULK\)/i)
#Ejemplos anclas
str = "this is\nthe time"
#Ejemplo busca al inicio de la linea
#puts p2.muestraUsoMatch(str,/^the/)
#Ejemplo busca al final de la linea
#puts p2.muestraUsoMatch(str,/is$/)
#Ejemplo busca al inicio de la cadena
#puts p2.muestraUsoMatch(str,/\Athis/)
#Ejemplo busca al inicio de la cadena
#puts p2.muestraUsoMatch(str,/\Athe/)
#Ejemplos caracteres de clase#
#str = "see [The PickAxe-page 123]"
#Ejemplo busca letra mayuscula de la A a la F
#puts p2.muestraUsoMatch(str,/[A-F]/)
#Ejemplo busca letra mayuscula o minuscula de la A(a) a la F(f)
#puts p2.muestraUsoMatch(str,/[A-Fa-f]/)
#Ejemplo busca numero
#puts p2.muestraUsoMatch(str,/[0-9]/)
#Ejemplo busca numero
#puts p2.muestraUsoMatch(str,/[0-9][0-9]/)
=begin Ejemplos negaciones ^
puts p2.muestraUsoMatch("Price $12",/[^A-Z]/)
puts p2.muestraUsoMatch("Price $12",/[^\w]/)
puts p2.muestraUsoMatch("Price $12",/[a-z][^a-z]/)
=end
=begin Ejemplos POSIX
puts p2.muestraUsoMatch("Price $12",/[aeiou]/)
puts p2.muestraUsoMatch("Price $12",/[[:digit:]][[:digit:]]/)
puts p2.muestraUsoMatch("Price $12",/[[:space:]]/)
puts p2.muestraUsoMatch("Price $12",/[[:^space:]]/)
=end
#=begin Ejemplos uso del comodin .
puts p2.muestraUsoMatch("It costs $12.",/c.s/)
puts p2.muestraUsoMatch("It costs $12.",/./)
puts p2.muestraUsoMatch("It costs $12.",/\./)
#=end
#=begin Ejemplos repeticiones
str = "The moon is made of cheese"
puts p2.muestraUsoMatch(str,/\w+/)
puts p2.muestraUsoMatch(str,/\s.*\s/)
puts p2.muestraUsoMatch(str,/\s.*?\s/)
puts p2.muestraUsoMatch(str,/[aeiou]{2,99}/)
puts p2.muestraUsoMatch(str,/mo?o/)
#=end
#=begin Ejemplos alternancia
str = "red ball blue sky"
puts p2.muestraUsoMatch(str,/d|e/)
puts p2.muestraUsoMatch(str,/al|lu/)
puts p2.muestraUsoMatch(str,/red ball|angry sky/)
#=end
#=begin Ejemplos agrupados
str = "red ball blue sky"
puts p2.muestraUsoMatch(str,/blue|red/)
puts p2.muestraUsoMatch(str,/(blue|red) \w+/)
puts p2.muestraUsoMatch(str,/(red|blue) \w+/)
str2 = "the red angry sky"
puts p2.muestraUsoMatch(str2,/red (ball|angry) sky/)
puts p2.mustraUsoDeMetaDataParentesis
#=end
#=begin Ejemplos finales
puts p2.mayusculasMinusculas("miny hulk")
puts p2.mayusculasMinusculas("miNy hUlk")
puts p2.manejoCadenas
#=end











