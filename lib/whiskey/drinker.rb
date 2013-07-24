require "forwardable"
require "multi_json"
require "astruct"
require "logger"
require "socket"

require_relative "drinker/version"
require_relative "drinker/client"

module Whiskey
  module Drinker
    def self.logger
      @logger ||= Logger.new(STDOUT).tap do |log|
        log.formatter = nil
      end
    end
  end
end
