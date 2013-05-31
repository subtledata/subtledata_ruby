require 'subtledata'

key = 'S0YrNTJY'

puts SubtleData::Standard::Locations.get_all_locations(key, false).inspect
puts SubtleData::Standard::Locations.get_location(959, key, false).inspect
