module Whiskey
  module Drinker
    class Client
      class Console
        def initialize
          @input = STDIN
          @output = Whiskey::Drinker.logger
          write "Connecting..."
        end

        def read
          @input.gets
        end

        def write(output)
          @output.info(output)
        end
      end
    end
  end
end
