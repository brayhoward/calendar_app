require_relative 'helper'
require_relative '../lib/day'

class TestDay < Minitest::Test

	def test_initializing_a_day_saves_values
		d = Day.new(05, 2015)
		assert_equal 05, d.month
		assert_equal 2015, d.year
	end

	def test_startofmonth_returns
		d = Day.new(05, 2015)
		assert_equal 2, d.start_of_month
	end

end