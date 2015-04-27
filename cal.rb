#!/usr/bin/env ruby

require './lib/month'

month = ARGV[0]
year = ARGV[1]

begin
	m = Month.new(month, year)
	puts m.to_s
rescue
	print "Date not in acceptable format/range"
end

