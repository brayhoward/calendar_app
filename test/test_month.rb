require_relative 'helper'
require_relative '../lib/month'

class TestMonth < Minitest::Test

	def test_initializing_a_month_saves_values
		m = Month.new(05, 2015)
		assert_equal 05, m.month
		assert_equal 2015, m.year
	end


	def test_to_s_on_feb_2015
		m = Month.new(03, 2015)
		expected = <<EOS
     March 2015
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
 assert_equal expected, m.to_s
	end

	def test_to_s_on_jan_2017
		m = Month.new(01, 2017)
		expected = <<EOS
    January 2017
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
assert_equal expected, m.to_s
	end

	def test_to_s_mar_2009
		m = Month.new(03, 2009)
		expected = <<EOS
     March 2009
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
	end

	# def test_to_s_

	# end

	def test_

	end

end