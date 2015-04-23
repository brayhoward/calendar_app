require_relative 'helper'

require 'minitest/autorun'

class TestCalIntegration < Minitest::Test
	def test_rake
		output = `./cal.rb`
		expected = true
		assert_equal expected, output
	end


end