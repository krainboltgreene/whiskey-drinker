module Whiskey
  module Drinker
    class Command < Thor
      class Connect
        def initialize(command, address)
          @command = command
          @host = address.split(":").first
          @port = address.split(":").last
        end

        def call
          Client.new(@host, @port)
          trap("INT") { supervisor.terminate; exit }
          sleep
        end
      end
    end
  end
end
