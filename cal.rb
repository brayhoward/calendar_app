#!/usr/bin/env ruby

require './lib/month'

month = ARGV[0]
year = ARGV[1]

m = Month.new(month, year)

m.to_s

