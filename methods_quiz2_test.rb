require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz2'

class QuizTest < MiniTest::Test
	i_suck_and_my_tests_are_order_dependent!

	def setup
		@m = Class.new do
     include MethodsQuiz2
   	end.new
	end
end

module MethodsQuiz2Tests
	
	class WithoutDoubles < QuizTest
		def test_not_a_double
			assert_equal 4, @m.without_doubles(1,3, false)
			assert_equal 5, @m.without_doubles(3,2, true)
		end
		def test_double_without_no_doubles
			assert_equal 8, @m.without_doubles(4, 4, false)
			assert_equal 12, @m.without_doubles(6, 6, false)
		end
		def test_double_with_no_doubles
			assert_equal 9, @m.without_doubles(4, 4, true)
			assert_equal 3, @m.without_doubles(1, 1, true)
		end
		def test_wrap_around
			assert_equal 7, @m.without_doubles(6, 6, true)
		end
	end

	class MaxMaybe < QuizTest
		def test_same_values
			assert_equal 0, @m.max_maybe(5, 5)
			assert_equal 0, @m.max_maybe(-6, -6)
		end
		def test_remainder_mod_5
			assert_equal 5, @m.max_maybe(10, 5)
			assert_equal 4, @m.max_maybe(4, 29)
			assert_equal -10, @m.max_maybe(-5, -10)
		end
		def test_a_is_larger
			assert_equal 10, @m.max_maybe(10, 4)
		end
		def test_b_is_larger
			assert_equal 6, @m.max_maybe(2, 6)
		end
		def test_with_negatives
			assert_equal -1, @m.max_maybe(-1, -4)
			assert_equal -1, @m.max_maybe(-4, -1)
		end
	end

	class SquirrelsPlay < QuizTest
		def test_just_right_temp
			assert_equal true, @m.squirrels_play?(65, false)
			assert_equal true, @m.squirrels_play?(65, true)
		end
		def test_low_temp
			assert_equal false, @m.squirrels_play?(55, true)
			assert_equal false, @m.squirrels_play?(55, false)
		end
		def test_limit
			assert_equal true, @m.squirrels_play?(60, true)
			assert_equal true, @m.squirrels_play?(60, false)
			assert_equal false, @m.squirrels_play?(59, true)
			assert_equal false, @m.squirrels_play?(59, false)
			assert_equal false, @m.squirrels_play?(91, false)
		end
		def test_summer
			assert_equal true, @m.squirrels_play?(91, true)
			assert_equal false, @m.squirrels_play?(91, false)
		end
		def test_summer_limit
			assert_equal true, @m.squirrels_play?(100, true)
			assert_equal false, @m.squirrels_play?(101, true)
		end
	end

end