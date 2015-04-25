require_relative 'day'

class Month

	attr_reader :month, :year

	@@months_array = [nil, "January", "February",
						  "March", "April", "May", "June",
						  "July", "August", "September",
						  "October", "November", "December"]

	@@days_in_month_array = [nil, 31, 28, 31,
									 30, 31, 30, 31,
									 31, 30, 31, 30,
									 31]

	def days?
		@@days_in_month_array[@month]
	end

	def initialize(month, year)
		@month = month
		@year = year
	end

	def name
		@@months_array[@month]
	end

	def to_s
		day = Day.new(@month, @year)
		string = "#{name} #{@year}".center(20)
						.rstrip << "\nSu Mo Tu We Th Fr Sa\n"

		if day.start? == 2
			string << "   "
			(1..days?).each  do |i|
				if (1..9).include?(i) and i
					string << i.to_s.center(3)

		else

			(1..days?).each  do |i|
				if (1..9).include?(i) and i != 7
					string << i.to_s.center(3)
				elsif i == 7
					string << i.to_s.center(3).rstrip
					string << "\n"
				elsif (1..9).include?(i)
					string << i.to_s.center(3)
				elsif i % 7 == 0
					string << i.to_s
					string << "\n"
				else
				string << i.to_s.center(3)
				end
			end
		string.rstrip
	  string << "\n\n"
	end

end

