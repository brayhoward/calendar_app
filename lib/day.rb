require_relative 'month'

class Day
  FIRST_OF_MONTH = 1

  def initialize(month, year)
    @month = month
    @year = year
  end

  def day_finder
    # NOTE: In this algorithm January and February are counted as months 13 and 14 of the previous year.
    if @month == 1 or @month == 2
      @month += 12
      @year -= 1
    end

    # formula based on Zeller's congruence.
    # http://en.wikipedia.org/wiki/Zeller's_congruence
    (FIRST_OF_MONTH + (( 26 * (@month + 1)) / 10) + @year +
    (@year / 4) + 6 * (@year / 100) + (@year / 400)) % 7

    # Method always looks for the weekday of the 1st day of the month in question.
    # Zellers returns (0 = Saturday, 1 = Sunday, 2 = Monday, ..., 6 = Friday)
  end

  def index_adjust
    if day_finder.zero?
      day_finder + 6
    else
      day_finder - 1
    end
  end

  def month_start
    start_day_index = index_adjust
  end

end




