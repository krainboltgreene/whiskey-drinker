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
          Whiskey::Drinker.logger.debug("Catching user input")
          @foo = @input.gets
          Whiskey::Drinker.logger.debug("User input was: #{@foo}")
          @foo
        end

        def write(output)
          @output.info(output)
        end
      end
    end
  end
end
