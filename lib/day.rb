require_relative 'month'

class Day

	def initialize(month, year)
		@month = month.to_i
		@year = year.to_i
	end

	def month_start
		if @month == 1 or @month == 2
			@month += 12
			@year -= 1
		end

		month_day = 1  #q
		month = @month #m
		year = @year	 #Y

		# formula based on Zeller's congruence.
		# http://en.wikipedia.org/wiki/Zeller's_congruence
		start_day_index = (month_day + (( 26 * (month + 1)) / 10) + year + (year / 4) + 6 * (year / 100) + (year / 400)) % 7

		if start_day_index.zero?
			start_day_index + 6
		else
			start_day_index -1
		end

	end

end




