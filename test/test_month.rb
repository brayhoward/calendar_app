require_relative 'helper'
require_relative '../lib/month'

class TestMonth < Minitest::Test

	def test_initializing_a_month_saves_values
		m = Month.new(05, 2015)
		assert_equal 05, m.month
		assert_equal 2015, m.year
	end


	def test_to_s_on_feb_2012
		m = Month.new(02, 2012)
		expected =
	end

	def test_to_s_on_jan_2017
		m = Month.new(02, 2012)
		expected =
	end

	def test_to_s_mar_2009

	end

	def test_to_s_

	end

	def name

	end

end