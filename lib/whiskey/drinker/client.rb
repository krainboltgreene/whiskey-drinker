require "celluloid/io"
require_relative "client/console"
require_relative "client/request"
require_relative "client/serializer"
require_relative "client/reader"
require_relative "client/writer"

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
        Reader.new(connection, console).async.watch
      end

      def write
        Writer.new(connection, console).async.watch
      end

      def finalizer(callback)
        connection.close if connection
      end
    end
  end
end
