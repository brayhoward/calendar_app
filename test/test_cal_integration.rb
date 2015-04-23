require_relative 'helper'

require 'minitest/autorun'

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

end