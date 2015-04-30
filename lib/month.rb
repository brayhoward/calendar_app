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


  def initialize(month, year)
    @month = month.to_i
    @year = year.to_i
    in_range?
  end

  def in_range?
    if  not (1800..3000).include?(@year)
      raise ArgumentError, "Date not in acceptable format/range"
    end
  end

  def length
    if @month == 2 and Year.new(@year).leap_year?
      29
    else
      DAYS_IN_MONTH_ARRAY[@month]
    end
  end

  def name
    MONTHS_ARRAY[@month]
  end

  def to_year
    month = Array.new

    (1..length).each do |i|
      month << i.to_s.center(3)
    end

    first_day_of_month = Day.new(@month, @year).month_start

    first_day_of_month.times do
    month.unshift("\s\s\s")
    end

    grid_size = 42
    (grid_size - month.length).times do
      month.push("\s\s\s")
    end
    month
  end

  def to_s

    header = "#{name} #{@year}".center(20).rstrip
    sub_head = "Su Mo Tu We Th Fr Sa"
    body = String.new
    array = Array.new

    (1..length).each do |i|
      body << i.to_s.center(3)
    end

    first_day_of_month = Day.new(@month, @year).month_start
    body.prepend("\s\s\s" * first_day_of_month)

    rows = 6
    (1..rows).each do |i|
      array[i] = body.slice!(0, 21).rstrip
    end

    <<EOS
#{header}
#{sub_head}
#{array[1]}
#{array[2]}
#{array[3]}
#{array[4]}
#{array[5]}
#{array[6]}
EOS
  end


end






















