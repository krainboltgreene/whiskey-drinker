require "celluloid/io"
require_relative "client/console"
require_relative "client/request"
require_relative "client/serializer"

module Whiskey
  module Drinker
    class Client
      include Celluloid::IO

      attr_reader :connection
      attr_reader :console

      def initialize(host, port)
        @connection = TCPSocket.new(host, port)
        @console = Console.new
        Whiskey::Drinker.logger.debug("Starting socket and console...")
        read
        write
      end

      private

      def read
        loop do
          Whiskey::Drinker.logger.debug("read server")
          response(connection.readpartial(4069))
          Whiskey::Drinker.logger.debug("stop server")
        end
      end

      def write
        Whiskey::Drinker.logger.debug("read console")
        request(console..read)
        Whiskey::Drinker.logger.debug("stop console")
      end

      def response(output)
        console.write(output)
      end

      def request(input)
        connection.write(Request.new(input).serialize)
      end

      def finalizer(callback)
        connection.close if connection
      end
    end
  end
end
