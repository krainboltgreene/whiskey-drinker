module Whiskey
  module Drinker
    class Client
      class Reader
        include Celluloid

        def initialize(connection, console)
          @connection = connection
          @console = console
        end

        def watch
          loop do
            @console.write(@connection.readpartial(4069))
          end
        end
      end
    end
  end
end
