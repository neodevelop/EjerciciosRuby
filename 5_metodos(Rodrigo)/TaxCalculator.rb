class TaxCalculator	

	def initialize(name, &block)
		@name, @block = name, block
	end
	def getTax(amount)
		"#@name on #{amount} = #{@block.call(amount)}"
	end

end

tc = TaxCalculator.new("Sales tax"){|amt| amt * 0.075}
puts tc.getTax(100)
puts tc.getTax(250)











