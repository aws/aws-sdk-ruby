require 'aws-eventstream'

module Aws
  module Binary
    # @api private
    class EventStreamDecoder

      # @param [String] protocol
      # @param [ShapeRef] rules ShapeRef of the eventstream member
      # @param [EventStream|nil] event_stream_handler A Service EventStream object
      # that registered with callbacks for processing events when they arrive
      def initialize(protocol, rules, io, event_stream_handler = nil)
        @decoder = Aws::EventStream::Decoder.new
        @event_parser = EventParser.new(parser_class(protocol), rules)
        @stream_class = extract_stream_class(rules.shape.struct_class)
        @emitter = event_stream_handler.event_emitter
      end

      def write(chunk)
        # wrap decoded parsed event with callbacks in a event stream
        @decoder.decode(StringIO.new(chunk)) do |raw_event|
          event = @event_parser.apply(raw_event)
          @emitter.signal(event.event_type, event) unless @emitter.nil?
        end
      end

      private

      # TODO, more protocol
      def parser_class(protocol)
        case protocol
        when 'rest-xml' then Aws::Xml::Parser
        when 'rest-json' then Aws::Json::Parser
        else raise "unsupported protocol #{protocol} for event stream"
        end
      end

      def extract_stream_class(type_class)
        Object.const_get(type_class.to_s.sub(/::Types::/, "::EventStreams::"))
      end
    end

  end
end
