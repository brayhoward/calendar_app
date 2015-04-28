require_relative 'month'

class Year
	attr_reader :year

	def initialize(year)
		@year = year
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
		months = Array.new

		(1..12).each do |i|
			months[i] = Month.new(i, year).to_s
		end

# 		"#{months[4]}  #{months[5]}  #{months[6]}"
# "#{months[7]}  #{months[8]}  #{months[7]}"
# "#{months[10]}  #{months[11]}  #{months[12]}"

		<<EOS
"#{months[1]}  #{months[3]}  #{months[4]}"
EOS

	end

end
