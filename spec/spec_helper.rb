require "coveralls"
Coveralls.wear! do
  add_filter "/spec/"
end

require "rspec"
require "whiskey/drinker"
require "whiskey/drinker/command"
