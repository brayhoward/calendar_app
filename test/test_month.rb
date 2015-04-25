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

	def test_name_january
		m = Month.new(1, 2022)
		assert_equal "January", m.name
	end

	def test_name_feb
		m = Month.new(2, 2022)
		assert_equal "February", m.name
	end

	def test_name_march
		m = Month.new(3, 2022)
		assert_equal "March", m.name
	end

	def test_name_april
		m = Month.new(4, 2022)
		assert_equal "April", m.name
	end

	def test_name_may
		m = Month.new(5, 2022)
		assert_equal "May", m.name
	end

	def test_name_june
		m = Month.new(6, 2022)
		assert_equal "June", m.name
	end

	def test_name_july
		m = Month.new(7, 2022)
		assert_equal "July", m.name
	end

	def test_name_aug
		m = Month.new( 8, 2022)
		assert_equal "August", m.name
	end

	def test_name_sep
		m = Month.new( 9, 2022)
		assert_equal "September", m.name
	end

	def test_name_oct
		m = Month.new(10, 2022)
		assert_equal "October", m.name
	end

	def test_name_nov
		m = Month.new(11, 2022)
		assert_equal "November", m.name
	end

	def test_name_dec
		m = Month.new(12, 2022)
		assert_equal "December", m.name
	end


	def test_month_month_starting_on_sunday_with_thirty_days
		m = Month.new(9, 2002)
		expected = <<EOS
   September 2002
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30

EOS
		assert_equal expected, m.to_s
	end

	def test_month_starting_on_sunday_with_twenty_eight_days
		m = Month.new(2, 2111)
		expected = <<EOS
   February 2111
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28


EOS
		assert_equal expected, m.to_s
	end

	def test_month_with_day_that_start_on_monday
		m = Month.new(6, 2015)
		expected = <<EOS
     June 2015
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30

EOS
assert_equal expected, m.to_s
	end

	def test_days_in_thrity_day_month
		m = Month.new(9, 2002)
		assert_equal 30 ,m.days?
	end

	def test_days_in_jan
		m = Month.new(1, 2003)
		assert_equal 31 ,m.days?
	end

	def test_days_in_feb
		m = Month.new(2, 2002)
		assert_equal 28 ,m.days?
	end

	def test_days_in_march
		m = Month.new(3, 2002)
		assert_equal 31 ,m.days?
	end

	def test_days_in_april
		m = Month.new(4, 2002)
		assert_equal 30 ,m.days?
	end

	def test_days_in_may
		m = Month.new(5, 2002)
		assert_equal 31 ,m.days?
	end

	def test_days_in_june
		m = Month.new(6, 2002)
		assert_equal 30 ,m.days?
	end

	def test_days_in_july
		m = Month.new(7, 2002)
		assert_equal 31 ,m.days?
	end

	def test_days_in_aug
		m = Month.new(8, 2002)
		assert_equal 31 ,m.days?
	end

	def test_days_in_sep
		m = Month.new(9, 2002)
		assert_equal 30 ,m.days?
	end

	def test_days_in_oct
		m = Month.new(10, 2002)
		assert_equal 31 ,m.days?
	end

	def test_days_in_nov
		m = Month.new(11, 2002)
		assert_equal 30 ,m.days?
	end

	def test_days_in_dec
		m = Month.new(12, 2002)
		assert_equal 31 ,m.days?
	end

	def test_days_in_jan
		m = Month.new(1, 2003)
		assert_equal 31 ,m.days?
	end

	def test_days_in_feb
		m = Month.new(2, 2002)
		assert_equal 28 ,m.days?
	end

	def test_days_in_march
		m = Month.new(3, 2002)
		assert_equal 31 ,m.days?
	end

	def test_days_in_april
		m = Month.new(4, 2002)
		assert_equal 30 ,m.days?
	end

	def test_days_in_may
		m = Month.new(5, 2002)
		assert_equal 31 ,m.days?
	end

	def test_days_in_june
		m = Month.new(6, 2002)
		assert_equal 30 ,m.days?
	end

	def test_days_in_july
		m = Month.new(7, 2002)
		assert_equal 31 ,m.days?
	end

	def test_days_in_aug
		m = Month.new(8, 2002)
		assert_equal 31 ,m.days?
	end

	def test_days_in_sep
		m = Month.new(9, 2002)
		assert_equal 30 ,m.days?
	end

	def test_days_in_oct
		m = Month.new(10, 2002)
		assert_equal 31 ,m.days?
	end

	def test_days_in_nov
		m = Month.new(11, 2002)
		assert_equal 30 ,m.days?
	end

	def test_days_in_dec
		m = Month.new(12, 2002)
		assert_equal 31 ,m.days?
	end

end

















