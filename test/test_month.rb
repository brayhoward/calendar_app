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

  def test_month_starting_on_monday
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

  def test_month_starting_on_tues
    m = Month.new(7, 2003)
    expected = <<EOS
     July 2003
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30 31

EOS
assert_equal expected, m.to_s
  end

  def test_month_starting_on_wed
    m = Month.new(5, 2002)
    expected = <<EOS
      May 2002
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31

EOS
assert_equal expected, m.to_s
  end

  def test_month_starting_on_saterday
    m = Month.new(6, 2002)
    expected = <<EOS
     June 2002
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30
EOS
assert_equal expected, m.to_s
  end

  def test_date_at_begining_of_parmeater
    m = Month.new(1, 1800)
    expected = <<EOS
    January 1800
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31

EOS
    assert_equal expected, m.to_s
  end

    def test_date_at_end_of_parmeater
     m = Month.new(12, 3000)
    expected = <<EOS
   December 3000
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30 31

EOS
    assert_equal expected, m.to_s
  end

  def test_regular_leap_year
    m = Month.new(2, 2016)
    expected = <<EOS
   February 2016
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29

EOS
    assert_equal expected, m.to_s
  end

  def test_to_year_method_2016
    m = Month.new(2, 2016)
    expected = ["   ", " 1 ", " 2 ", " 3 ", " 4 ", " 5 ", " 6 ", " 7 ", " 8 ", " 9 ", "10 ", "11 ", "12 ", "13 ", "14 ", "15 ", "16 ", "17 ", "18 ", "19 ", "20 ", "21 ", "22 ", "23 ", "24 ", "25 ", "26 ", "27 ", "28 ", "29 ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   "]
    assert_equal expected, m.to_year
  end

  def test_to_year_method_1999
    m = Month.new(9, 1999)
    expected = ["   ", "   ", "   ", " 1 ", " 2 ", " 3 ", " 4 ", " 5 ", " 6 ", " 7 ", " 8 ", " 9 ", "10 ", "11 ", "12 ", "13 ", "14 ", "15 ", "16 ", "17 ", "18 ", "19 ", "20 ", "21 ", "22 ", "23 ", "24 ", "25 ", "26 ", "27 ", "28 ", "29 ", "30 ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   "]
    assert_equal expected, m.to_year
  end

  def test_to_year_method
    m = Month.new(1, 1984)
    expected = [" 1 ", " 2 ", " 3 ", " 4 ", " 5 ", " 6 ", " 7 ", " 8 ", " 9 ", "10 ", "11 ", "12 ", "13 ", "14 ", "15 ", "16 ", "17 ", "18 ", "19 ", "20 ", "21 ", "22 ", "23 ", "24 ", "25 ", "26 ", "27 ", "28 ", "29 ", "30 ", "31 ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   "]
    assert_equal expected, m.to_year
  end

end

















