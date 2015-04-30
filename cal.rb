#!/usr/bin/env ruby

require './lib/month'
require './lib/year'

if ARGV.length == 2

  begin
  	puts Month.new(ARGV[0],ARGV[1]).to_s
  rescue
  	print "Date not in acceptable format/range"
  end

else

  begin
    puts Year.new(ARGV[0]).to_s
  rescue
    print "Date not in acceptable format/range"
  end

end

