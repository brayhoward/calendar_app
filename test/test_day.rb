require_relative 'helper'
require_relative '../lib/day'

class TestDay < Minitest::Test

	def test_initializing_a_day_saves_values
		d = Day.new(05, 2015)
		assert_equal 05, d.month
		assert_equal 2015, d.year
	end

	def test_monthStart_returns_correct_day_number
		d = Day.new(5, 2015)
		assert_equal 6, d.month_start
	end

	def test_zellers_month_index_may
		d = Day.new(5, 2015)
		assert_equal 5, d.zellers_month_index
	end

	def test_zellers_month_index_feb
		d = Day.new(2, 2015)
		assert_equal 14, d.zellers_month_index
	end

	def test_zellers_month_index_jan
		d = Day.new(1, 2015)
		assert_equal 13, d.zellers_month_index
	end

	def test_zellers_month_index_sep
		d = Day.new(9, 2015)
		assert_equal 9, d.zellers_month_index
	end

end






