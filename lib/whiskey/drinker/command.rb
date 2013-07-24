require "thor"
require "whiskey-drinker"
require_relative "command/connect"

module Whiskey
  module Drinker
    class Command < Thor
      include Thor::Actions

      desc "connect [host]:[port]", "Connects to a whiskey server"
      def connect(address)
        Connect.new(self, address).call
      end
    end
  end
end
