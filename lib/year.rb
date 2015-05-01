require_relative 'month'

class Year
  attr_reader :year

  def initialize(year)
    @year = year.to_i
  end


  def leap_year?
    if @year % 4 == 0 or @year % 400 == 0
      regular_leap_year = true
    else
      regular_leap_year = false
    end

    if @year % 100 == 0 and @year % 400 != 0
      century_leap_year = true
    else
      century_leap_year = false
    end

    regular_leap_year and not century_leap_year
  end


  def to_s
    heading = @year.to_s.center(63).rstrip
    margin = String.new
    days = "Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa"
    header_1 = "      January               February               March"
    header_2 = "       April                  May                   June"
    header_3 = "        July                 August              September"
    header_4 = "      October               November              December"

    calendar_year = Array.new
    12.times do |i|
      calendar_year[i] = Month.new(i+1, @year).to_year
    end


    row = Array.new
    6.times do |x|

      row[x] = Array.new
      3.times do |i|
        row[x] << calendar_year[i].slice!(0,7)
        row[x].push("\s")
      end

    end

    row2 = Array.new
    6.times do |x|

      row2[x] = Array.new
      3.times do |i|
        row2[x] << calendar_year[i+3].slice!(0,7)
        row2[x].push("\s")
      end

    end

    row3 = Array.new
    6.times do |x|

      row3[x] = Array.new
      3.times do |i|
        row3[x] << calendar_year[i+6].slice!(0,7)
        row3[x].push("\s")
      end

    end

    row4 = Array.new
    6.times do |x|

      row4[x] = Array.new
      3.times do |i|
        row4[x] << calendar_year[i+9].slice!(0,7)
        row4[x].push("\s")
      end

    end



    <<EOS
#{heading}
#{margin}
#{header_1}
#{days}
#{row[0].join.rstrip}
#{row[1].join.rstrip}
#{row[2].join.rstrip}
#{row[3].join.rstrip}
#{row[4].join.rstrip}
#{row[5].join.rstrip}
#{header_2}
#{days}
#{row2[0].join.rstrip}
#{row2[1].join.rstrip}
#{row2[2].join.rstrip}
#{row2[3].join.rstrip}
#{row2[4].join.rstrip}
#{row2[5].join.rstrip}
#{header_3}
#{days}
#{row3[0].join.rstrip}
#{row3[1].join.rstrip}
#{row3[2].join.rstrip}
#{row3[3].join.rstrip}
#{row3[4].join.rstrip}
#{row3[5].join.rstrip}
#{header_4}
#{days}
#{row4[0].join.rstrip}
#{row4[1].join.rstrip}
#{row4[2].join.rstrip}
#{row4[3].join.rstrip}
#{row4[4].join.rstrip}
#{row4[5].join.rstrip}
EOS
  end

end

