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

		row_1 = months.slice(0, 21) << "\s\s"
		row_1 << months.slice(97, 21) << "\s\s"
		row_1 << months.slice(197, 20).rstrip


		<<EOS
#{heading}
#{margin}
#{header_1}
#{days}
#{row_1}
#{header_2}
#{header_3}
#{header_4}
#{months}
EOS

	end

end
