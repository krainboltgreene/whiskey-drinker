module Whiskey
  module Drinker
    class Client
      class Writer
        include Celluloid

        def initialize(connection, console)
          @connection = connection
          @console = console
        end

        def watch
          loop do
            @connection.write(Request.new(@console.read).serialize)
          end
        end
      end
    end
  end
end
