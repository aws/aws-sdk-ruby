require 'aws-eventstream'

module Aws
  module Rest
    module Response
      class Body

        include Seahorse::Model::Shapes

        # @param [Class] parser_class
        # @param [Seahorse::Model::ShapeRef] rules
        def initialize(parser_class, rules)
          @parser_class = parser_class
          @rules = rules
        end

        # @param [IO] body
        # @param [Hash, Struct] data
        # @param [IO, nil] raw_stream binary raw stream for eventstream
        def apply(body, data, raw_stream = nil)
          if event_stream?
            data[@rules[:payload]] = parse_eventstream(body, raw_stream)
          elsif streaming?
            data[@rules[:payload]] = body
          elsif @rules[:payload]
            data[@rules[:payload]] = parse(body.read, @rules[:payload_member])
          elsif !@rules.shape.member_names.empty?
            parse(body.read, @rules, data)
          end
        end

        private

        # TODO?
        # not payload marked?
        def event_stream?
          @rules[:payload] && @rules[:payload_member].eventstream
        end

        def streaming?
          @rules[:payload] && (
            BlobShape === @rules[:payload_member].shape ||
            StringShape === @rules[:payload_member].shape
          )
        end

        def parse(body, rules, target = nil)
          @parser_class.new(rules).parse(body, target) if body.size > 0
        end

        def parse_eventstream(body, raw_stream)
          event_parser = Aws::Binary::EventParser.new(@parser_class, @rules[:payload_member])
          @rules[:payload_member].shape.struct_class.new do |eventstream|
            if body.is_a?(Seahorse::Client::BlockIO)
              eventstream.yield(body)
            elsif raw_stream
              Aws::EventStream::Decoder.new.decode(raw_stream) do |raw|
                eventstream.yield(event_parser.apply(raw))
              end
            end
          end
        end

      end
    end
  end
end
