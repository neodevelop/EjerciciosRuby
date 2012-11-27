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
