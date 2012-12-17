require_relative 'Tarjeta_Credito'

describe "TarjetaDeCredito" do

	#before(:each) do
	#	@tc = TarjetaDeCredito.new
	#end

	let(:tc) { TarjetaDeCredito.new }
	
	it "Al consultar el saldo deberia ser 5000" do
		tc.consultarSaldo.should == 5000
	end

	it "Cuando retiro $1000 el saldo debe ser $4000" do
		tc.comprar(1000)
		tc.consultarSaldo.should == 4000
	end

	it "Deberia haber $3000 despues de retirar dos cantidades de $1000" do
		tc.comprar(1000)
		tc.comprar(1000)
		tc.consultarSaldo.should == 3000
	end

	it "Deberia haber $3500 despues de haber retirado $2000 y haber pagado $500" do
		tc.comprar(2000)
		tc.consultarSaldo.should == 3000
		tc.pagar(500)
		tc.consultarSaldo.should == 3500
	end

	it "Deberia lanzar una excepcion si la compra rebasa el saldo" do
		expect {
			tc.comprar(5001)
		}.to raise_error
	end
end