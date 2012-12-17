class TarjetaDeCredito

	def initialize
		@saldo = 5000
	end

	def consultarSaldo
		@saldo
	end

	def comprar(costo)
		raise RuntimeError, 'Costo del producto mayor al saldo' if costo > @saldo
		@saldo -= costo
	end

	def pagar(monto)
		@saldo += monto
	end
end