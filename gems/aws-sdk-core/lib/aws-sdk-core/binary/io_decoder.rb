require 'aws-eventstream'

module Aws
  module Binary
    # @api private
    class IODecoder

      # @param [String] protocol
      # @param [ShapeRef] rules ShapeRef of the eventstream member
      # @param [IO#write] io An IO-like object that responds to `#write`
      def initialize(protocol, rules, io)
        @decoder = Aws::EventStream::Decoder.new
        @event_parser = EventParser.new(parser_class(protocol), rules)
        @stream_class = extract_stream_class(rules.shape.struct_class)
        @io = io
      end

      # @return [#write]
      attr_reader :io

      def write(chunk)
        # wrap decoded parsed event with callbacks in a event stream
        @decoder.decode(StringIO.new(chunk)) do |raw_event|
          @io.write(@stream_class.new(data: @event_parser.apply(raw_event)))
        end
      end

      def trigger(chunk, callbacks)
        @decoder.decode(StringIO.new(chunk)) do |raw_event|
          callbacks.call(@stream_class.new(data: @event_parser.apply(raw_event)))
        end
      end

      private

      # TODO, more protocol
      def parser_class(protocol)
        case protocol
        when 'rest-xml' then Aws::Xml::Parser
        when 'rest-json' then Aws::Json::Parser
        else raise "unsupported protocol #{protocol}"
        end
      end

      def extract_stream_class(type_class)
        Object.const_get(type_class.to_s.sub(/::Types::/, "::EventStream::"))
      end
    end

  end
end
