require_relative 'month'

class Day
  FIRST_OF_MONTH = 1

  def initialize(month, year)
    @month = month
    @year = year
  end

  def month_start
    if @month == 1 or @month == 2
      @month += 12
      @year -= 1
    end

    day_in_question   = FIRST_OF_MONTH
    month             = @month
    year              = @year

    # formula based on Zeller's congruence.
    # http://en.wikipedia.org/wiki/Zeller's_congruence
    start_day_index = (day_in_question + (( 26 * (month + 1)) / 10) + year +
                       (year / 4) + 6 * (year / 100) + (year / 400)) % 7

    if start_day_index.zero?
      start_day_index + 6
    else
      start_day_index -1
    end

  end

end




