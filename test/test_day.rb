require_relative 'helper'
require_relative '../lib/day'

class TestDay < Minitest::Test

  def test_monthStart_on_a_monday
    d = Day.new(9, 2003)
    assert_equal 1, d.month_start
  end

  def test_monthStart_on_a_monday_again
    d = Day.new(1, 2007)
    assert_equal 1, d.month_start
  end

  def test_monthStart_on_a_monday_yet_again
    d = Day.new(6, 1992)
    assert_equal 1, d.month_start
  end

  def test_monthStart_on_a_tues
    d = Day.new(10, 2002)
    assert_equal 2, d.month_start
  end

  def test_monthStart_on_a_tues_again
    d = Day.new(1, 2002)
    assert_equal 2, d.month_start
  end

  def test_monthStart_on_a_wed
    d = Day.new(5, 2002)
    assert_equal 3, d.month_start
  end

  def test_monthStart_on_a_wed_again
    d = Day.new(8, 2007)
    assert_equal 3, d.month_start
  end

  def test_monthStart_on_a_thursday
    d = Day.new(5, 2003, )
    assert_equal 4, d.month_start
  end

  def test_monthStart_on_a_thursday_again
    d = Day.new(2, 2007, )
    assert_equal 4, d.month_start
  end

  def test_monthStart_on_a_friday
    d = Day.new(11, 2002, )
    assert_equal 5, d.month_start
  end

  def test_monthStart_on_a_friday_again
    d = Day.new(6, 2007, )
    assert_equal 5, d.month_start
  end

  def test_monthStart_on_a_sat
    d = Day.new(6, 2002, )
    assert_equal 6, d.month_start
  end

  def test_monthStart_on_a_sat_again
    d = Day.new(9, 2007, )
    assert_equal 6, d.month_start
  end

  def test_monthStart_on_a_sunday
    d = Day.new(9, 2002,)
    assert_equal 0, d.month_start
  end

  def test_monthStart_on_a_sunday_again
    d = Day.new(7, 2007,)
    assert_equal 0, d.month_start
  end

  def test_monthStart_on_january
    d = Day.new(1, 2007)
    assert_equal 1, d.month_start
  end

  def test_monthStart_on_sat_in_feb
    d = Day.new(2, 2003)
    assert_equal 6, d.month_start
  end


end






