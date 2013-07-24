module Whiskey
  module Drinker
    class Client
      class Serializer
        attr_reader :data

        def initialize(raw)
          begin
            @data = raw
            @valid = true
          rescue Exception => error
            Whiskey.logger.error error
            @valid = false
          end
        end

        def valid?
          @valid
        end
      end
    end
  end
end
