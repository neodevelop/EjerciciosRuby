class FizzBuzz
  def initialize(value)
    if(value <= 0)
      fail "El valor debe ser mayor a 0"
    end
    @value = value
  end

  # FIZZBUZZ = [[ "Fizz", 3 ], ["Buzz", 5]]

  def fizzBuzz
    texto = ""
#    for fizzbuzz, valor in FIZZBUZZ
#      cociente, residuo = @value.divmod(valor)
#      texto += fizzbuzz if residuo == 0
#    end
#    texto = "#{@value}" if texto == ""

    texto = "Fizz" if @value % 3 == 0
    texto += "Buzz" if @value % 5 == 0
    texto = "#{@value}" if texto == ""

    texto
  end
end