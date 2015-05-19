#!/usr/bin/env ruby
require './lib/month'
require './lib/year'

if ARGV.empty?
  print "Try again with (./cal.rb [yyyy]) or (./cal.rb [mm] [yyyy])\n\n"
  exit
elsif ARGV.length == 2
  month = ARGV[0].to_i
  year  = ARGV[1].to_i
else
  year = ARGV[0].to_i
  month = false
end

if Year.in_range?(year)

  if month == false
    puts Year.new(year).to_s
  else
    puts Month.new(month, year).to_s
  end

else
  print "Date not in acceptable format/range"
end

