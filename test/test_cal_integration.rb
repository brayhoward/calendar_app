require_relative 'helper'

require 'minitest/autorun'

  def test_
    output = `./cal.rb `
    expected = <<EOS
EOS
    assert_equal expected, output
  end

class TestCalIntegration < Minitest::Test

  def test_month_starting_sunday
    output = `./cal.rb 1 2012`
    expected = <<EOS
    January 2012
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    assert_equal expected, output
  end


  def test_end_century_leap_year
    output = `./cal.rb 1 3000`
    expected = <<EOS
    January 3000
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31

EOS
    assert_equal expected, output
  end

  def test_regular_leap_year
    output = `./cal.rb 1 2016`
    expected = <<EOS
    January 2016
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30
31
EOS
    assert_equal expected, output
  end

  def test_400_year_leap_year
  output = `./cal.rb 1 2000 `
  expected = <<EOS
    January 2000
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30 31
EOS
  assert_equal expected, output
  end

  def test_1_2015
    output = `./cal.rb 1 2015`
    expected = <<EOS
    January 2015
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30 31

EOS
    assert_equal expected, output
  end

end











