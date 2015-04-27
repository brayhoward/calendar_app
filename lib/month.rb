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

	def length

		DAYS_IN_MONTH_ARRAY[@month]

	end

	def leap_year
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

		if regular_leap_year == true and century_leap_year == false
			true
		else
			false
		end

	end

	def initialize(month, year)
		@month = month.to_i
		@year = year.to_i
	end

	def name
		MONTHS_ARRAY[@month]
	end

	def to_s

		header = "#{name} #{@year}".center(20).rstrip
		sub_head = "Su Mo Tu We Th Fr Sa"
		body = String.new

		(1..length).each do |i|
			body << i.to_s.center(3)
		end

		first_day_of_month = Day.new(@month, @year).month_start
		body.prepend(" ".center(3) * first_day_of_month)


		week_1 = body.slice!(0, 21).rstrip
 		week_2 = body.slice!(0, 21).rstrip
		week_3 = body.slice!(0, 21).rstrip
		week_4 = body.slice!(0, 21).rstrip
		week_5 = body.slice!(0, 21).rstrip
		week_6 = body.slice!(0, 21).rstrip


		<<EOS
#{header}
#{sub_head}
#{week_1}
#{week_2}
#{week_3}
#{week_4}
#{week_5}
#{week_6}
EOS
	end

end