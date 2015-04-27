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


		h = (month_day + ((((month + 1) * 26) / 10).floor) + year + ((year / 4).floor) +
				(6 * ((year / 100).floor)) + ((year / 100).floor)) % 7

    ## Zeller's output is as follows.                     **RED FLAG HERE**
    ## 5 = thursday, 0 = friday, 1 = sat, 2 = sunday, 2 = monday as well

		if h == 0
			h = 5
		elsif h == 1
			h = 6
		else
			h - 2
		end
	end

end




