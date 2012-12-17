require_relative 'FizzBuzz'
require 'test/unit'

class TestFizzBuzz < Test::Unit::TestCase

	def setup()
		puts "inicializando"
	end

	def teardown()
		puts "muriendo"
	end

	def test_fizz_buzz
		assert_equal('1', FizzBuzz.new(1).fizzBuzz )
		assert_equal('Fizz', FizzBuzz.new(3).fizzBuzz )
		assert_equal('Buzz', FizzBuzz.new(5).fizzBuzz )
		assert_equal('FizzBuzz', FizzBuzz.new(15).fizzBuzz )
		assert_equal('FizzBuzz', FizzBuzz.new(30).fizzBuzz )
	end

	def test_rango
		FizzBuzz.new(1).fizzBuzz
		FizzBuzz.new(9).fizzBuzz
		assert_raises(RuntimeError) {FizzBuzz.new(0).fizzBuzz}
		assert_raises(RuntimeError) {FizzBuzz.new(-1).fizzBuzz}
	end
end