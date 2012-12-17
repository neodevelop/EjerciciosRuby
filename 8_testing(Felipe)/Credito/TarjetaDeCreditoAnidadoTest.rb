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

		context "Cuando hago una compra" do
			setup do
				@tc.comprar(1000)
			end

			should "El saldo debe ser $4000" do
				assert_saldo(4000)
			end

			context "Cuando hago otra compra por $1000" do
				setup do
					@tc.comprar(1000)
				end

				should "El saldo debe ser de 3000" do
					assert_saldo(3000)
				end

				context "Cuando hago un pago de $500" do
					setup do
						@tc.pagar(500)
					end

					should "El saldo debe ser de 3500" do
						assert_saldo(3500)
					end
				end
			end
		end

		should "Deberia lanzar una excepcion si la compra rebasa el saldo" do
			assert_raises(RuntimeError) { @tc.comprar(5001) }
		end
	end
end