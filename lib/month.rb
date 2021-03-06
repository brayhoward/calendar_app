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

  ROWS_IN_MONTH_GRID = 6

  GRID_SIZE = 42

  DAYS_OF_WEEK = "Su Mo Tu We Th Fr Sa"

  ONE_GRID_SPACE = "\s\s\s"


  def initialize(month, year)
    @month = month
    @year = year
    @is_leap_year = Year.leap_year?(year)

    raise RangeError, "Year not in acceptable format/range" unless Year.in_range?(year)

    raise RangeError, "Month not in acceptable format/range" unless Month.valid?(month)
  end


  def self.valid?(month)
    (1..12).include?(month)
  end


  def to_year
    month = []

    (1..number_of_days_in_month).each do |i|
      month << i.to_s.center(3)
    end

    first_day_of_month = start_day_index
    # Start 1st of month on proper week day in month grid
    first_day_of_month.times do
    month.unshift(ONE_GRID_SPACE)
    end
    # adds spaces on end of month grid for unused grid spaces
    (GRID_SIZE - month.length).times do
      month.push(ONE_GRID_SPACE)
    end
    month
  end


  def to_s
    header = "#{month_name} #{@year}".center(20).rstrip
    body = build_month
    array = []

    ROWS_IN_MONTH_GRID.times do |i|
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

  def month_name
    MONTHS_ARRAY[@month]
  end


  def build_month
    days_of_month = ""

    (1..number_of_days_in_month).each do |i|
      days_of_month << i.to_s.center(3)
    end
    days_of_month.prepend(ONE_GRID_SPACE * start_day_index)
  end


  def start_day_index
    Day.new(@month, @year).month_start
  end
end






















