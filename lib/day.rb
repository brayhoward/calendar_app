require_relative 'month'

class Day

	attr_reader :month, :year

	def initialize(month, year)
		@month = month
		@year = year
	end

	def start?
		2
	end

end