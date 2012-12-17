require 'test/unit'
require 'shoulda'
require_relative 'Tarjeta_Credito'

class TarjetaDeCreditoTest < Test::Unit::TestCase

	def assert_saldo(target)
		assert_equal(target, @tc.consultarSaldo)
	end

	context "Consulta de saldos" do
		setup do
			@tc = TarjetaDeCredito.new
		end

		should "Al consultar el saldo deberia ser 5000" do
			assert_saldo(5000)
		end

		should "Cuando retiro $1000 el saldo debe ser $4000" do
			@tc.comprar(1000)
			assert_saldo(4000)
		end

		should "Deberia haber $3000 despues de retirar dos cantidades de $1000" do
			@tc.comprar(1000)
			@tc.comprar(1000)
			assert_saldo(3000)
		end

		should "Deberia haber $3500 despues de haber retirado $2000 y haber pagado $500" do
			@tc.comprar(2000)
			assert_saldo(3000)
			@tc.pagar(500)
			assert_saldo(3500)
		end

		should "Deberia lanzar una excepcion si la compra rebasa el saldo" do
			assert_raises(RuntimeError) { @tc.comprar(5001) }
		end

	end

end