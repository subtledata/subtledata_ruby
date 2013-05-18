SubtleData Ruby Library
=======================

Ruby Library for SubtleData's SubtleJSON API

Install
=======

    gem install subtledata

Example
=======

    require 'subtledata'

    key = 'S0YrNTJY'

    puts SubtleData::Standard::Locations.get_all_locationst(key, false).inspect
    puts SubtleData::Standard::Locations.get_location(959, key, false).inspect

