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

	def length
		@@days_in_month_array[@month]
	end

	def initialize(month, year)
		@month = month.to_i
		@year = year.to_i
	end

	def name
		@@months_array[@month]
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