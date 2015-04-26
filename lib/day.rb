require_relative 'month'

class Day

	attr_reader :month, :year

	# @@month_index_for_zellers = [ nil, 13, 14, 3, 4, 5,
	# 														6, 7, 8, 9, 10, 11, 12 ]

	def initialize(month, year)
		@month = month
		@year = year
	end

	def month_start
		# formula based on Zeller's congruence.
		# http://en.wikipedia.org/wiki/Zeller's_congruence
		if @month == 1 or @month == 2
			@month += 12
			@year -= 1
		end

		month_day = 1 #q
		month = @month #m
		century_year = (@year % 100) #K
		zero_base = (@year / 100)

		h = (month_day + ((13 * (month + 1)) / 5).floor + century_year +
				(century_year / 4).floor + (zero_base / 4).floor + (5 * zero_base)) % 7

		if h.zero?
			h = 6
		else
			h -= 1
		end

	end

end




