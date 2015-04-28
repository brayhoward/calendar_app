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

end