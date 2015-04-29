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
    months = String.new
    heading = @year.to_s.center(63).rstrip
    margin = String.new
    days = "Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa"
    header_1 = "      January               February               March"
    header_2 = "       April                  May                   June"
    header_3 = "        July                 August              September"
    header_4 = "      October               November              December"

    (1..12).each do |i|
      months << Month.new(i, @year).to_year
    end

    row_1 = months.slice!(0, 20) << "\s\s" << months.slice!(100, 20) << "\s\s" << months.slice!(200, 20).rstrip

    row_2 = months.slice!(1, 20) <<  "\s\s" << months.slice!(81, 20) << "\s\s" << months.slice!(161, 20).rstrip

    row_3 = months.slice!(2, 20) << "\s\s" << months.slice!(62,20) << "\s\s" << months.slice!(122,20)

    row_4 = months.slice!(3, 20) << "\s\s" << months.slice!(43,20) << "\s\s" << months.slice!(83,20)

    row_5 = months.slice!(4, 20) << "\s\s" << months.slice!(24,19) << "\s\s" << months.slice!(44,21)

    row_6 = months.slice!(5, 20) << "\s\s" << months.slice!(5,19) << "\s\s" << months.slice!(05,20).rstrip

    row_7 = months.slice!(1, 20) << "\s\s" << months.slice!(101, 20) << "\s\s" << months.slice!(201, 20).rstrip

    row_8 = months.slice!(2, 20) <<  "\s\s" << months.slice!(82, 20) << "\s\s" << months.slice!(162, 20).rstrip

    row_9 = months.slice!(3, 20) << "\s\s" << months.slice!(63,20) << "\s\s" << months.slice!(123,20)

    row_10 = months.slice!(4, 20) << "\s\s" << months.slice!(44,20) << "\s\s" << months.slice!(84,20)

    row_11 = months.slice!(5, 20) << "\s\s" << months.slice!(25,19) << "\s\s" << months.slice!(45,21)

    row_12 = months.slice!(6, 20) << "\s\s" << months.slice!(6,19) << "\s\s" << months.slice!(06,20).rstrip  ##### half way #####

    row_13 = months.slice!(2, 20) << "\s\s" << months.slice!(102, 20) << "\s\s" <<  months.slice!(202, 20).rstrip

    row_14 = months.slice!(3, 20) <<  "\s\s" << months.slice!(83, 20) << "\s\s" << months.slice!(163, 20).rstrip

    row_15 = months.slice!(4, 20) << "\s\s" << months.slice!(64,20) << "\s\s" << months.slice!(124,20)

    row_16 = months.slice!(5, 20) << "\s\s" << months.slice!(45,20) << "\s\s" << months.slice!(85,20)

    row_17 = months.slice!(6, 20) << "\s\s" << months.slice!(26,20) << "\s\s" << months.slice!(46,21).rstrip

    row_18 = months.slice!(7, 20) << "\s\s" << months.slice!(7,20) << "\s\s" << months.slice!(07,20).rstrip

    row_19 = months.slice!(1, 20) << "\s\s" << months.slice!(101, 20) << "\s\s" <<  months.slice!(201, 20).rstrip

    row_20 = months.slice!(2, 20) <<  "\s\s" << months.slice!(82, 20) << "\s\s" << months.slice!(162, 20).rstrip

    row_21 = months.slice!(3, 20) << "\s\s" << months.slice!(63,20) << "\s\s" << months.slice!(123,20)

    row_22 = months.slice!(4, 20) << "\s\s" << months.slice!(44,20) << "\s\s" << months.slice!(84,20)

    row_23 = months.slice!(5, 20) << "\s\s" << months.slice!(25,20) << "\s\s" << months.slice!(45,21).rstrip

    row_24 = months.slice!(6, 20) << "\s\s" << months.slice!(6,20) << "\s\s" << months.slice!(06,20).rstrip






    <<EOS
#{heading}
#{margin}
#{header_1}
#{days}
#{row_1}
#{row_2}
#{row_3}
#{row_4}
#{row_5}
#{row_6}
#{header_2}
#{days}
#{row_7}
#{row_8}
#{row_9}
#{row_10}
#{row_11}
#{row_12}
#{header_3}
#{days}
#{row_13}
#{row_14}
#{row_15}
#{row_16}
#{row_17}
#{row_18}
#{header_4}
#{days}
#{row_19}
#{row_20}
#{row_21}
#{row_22}
#{row_23}
#{row_24}
EOS


  end

end
