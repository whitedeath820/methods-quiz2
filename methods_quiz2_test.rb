require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz2'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz2
   	end.new
	end

	def test_without_doubles
		assert_equal 7, @m.without_doubles(6, 6)
		assert_equal 6, @m.without_doubles(4, 2)
		assert_equal 7, @m.without_doubles(3, 3)
	end

	def test_max_maybe?
		assert_equal 0, @m.max_maybe?(3, 3)
		assert_equal 5, @m.max_maybe?(15, 5)
		assert_equal 60, @m.max_maybe?(60, 52)
	end
	
end
