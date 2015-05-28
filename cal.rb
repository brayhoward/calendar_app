#!/usr/bin/env ruby
require './lib/month'
require './lib/year'

if ARGV.empty? or ARGV.length > 2
  print "Try again with (./cal.rb [yyyy]) or (./cal.rb [mm] [yyyy])\n\n"
  exit
elsif ARGV.length == 2
  month = ARGV[0].to_i
  year  = ARGV[1].to_i
else
  year = ARGV[0].to_i
  month = false
end

if Year.in_range?(year) and month == false
  puts Year.new(year).to_s

elsif Year.in_range?(year) and Month.valid?(month)
  puts Month.new(month, year).to_s
else
  print "Date not in acceptable format/range\nTry again with (./cal.rb [yyyy]) or (./cal.rb [mm] [yyyy])\n\n"
end

