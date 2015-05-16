require_relative 'year'
require_relative 'day'

class Month
  attr_reader :month, :year

  MONTHS_ARRAY = [nil, "January", "February",
                  "March", "April", "May", "June",
                  "July", "August", "September",
                  "October", "November", "December"]

  DAYS_IN_MONTH_ARRAY = [nil, 31, 28, 31,
                         30, 31, 30, 31,
                         31, 30, 31, 30,
                         31]

  DAYS_IN_FEB_ON_LEAP_YEAR = 29

  ROWS_FOR_MONTH_GRID = 6

  DAYS_OF_WEEK = "Su Mo Tu We Th Fr Sa"

  ONE_GRID_SPACE = "\s\s\s"


  def initialize(month, year)
    @month = month.to_i
    @year = year.to_i
    @is_leap_year = Year.leap_year?(@year)
    in_range?
  end

  def in_range?
    if  not (1800..3000).include?(@year)
      raise ArgumentError, "Date not in acceptable format/range"
    end
  end

  def name
    MONTHS_ARRAY[@month]
  end

  def to_year
    month = []

    (1..number_of_days_in_month).each do |i|
      month << i.to_s.center(3)
    end

    first_day_of_month = Day.new(@month, @year, 1).month_start
    one_grid_space = "\s\s\s"

    first_day_of_month.times do
    month.unshift(one_grid_space)
    end

    grid_size = 42
    (grid_size - month.length).times do
      month.push(one_grid_space)
    end
    month
  end

  def to_s
    header = "#{name} #{@year}".center(20).rstrip
    body = ""
    array = []

    (1..number_of_days_in_month).each do |i|
      body << i.to_s.center(3)
    end

    first_day_of_month = Day.new(@month, @year, 1).month_start
    body.prepend(ONE_GRID_SPACE * first_day_of_month)

    ROWS_FOR_MONTH_GRID.times do |i|
      array[i] = body.slice!(0, 21).rstrip
    end

    <<EOS
#{header}
#{DAYS_OF_WEEK}
#{array[0]}
#{array[1]}
#{array[2]}
#{array[3]}
#{array[4]}
#{array[5]}
EOS
  end

  private

  def number_of_days_in_month
    if @month == 2 && @is_leap_year
      DAYS_IN_FEB_ON_LEAP_YEAR
    else
      DAYS_IN_MONTH_ARRAY[@month]
    end
  end


end






















