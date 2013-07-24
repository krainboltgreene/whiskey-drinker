module Whiskey
  module Drinker
    class Client
      class Request
        attr_reader :serializer

        def initialize(output)
          @serializer = Serializer.new(output)
        end

        def serialize
          serializer.data
        end

        def valid?
          serializer.valid?
        end
      end
    end
  end
end
