module Aws
  module Binary
    # @api private
    class EventParser

      include Seahorse::Model::Shapes

      # @param [Class] parser_class
      # @param [Seahorse::Model::ShapeRef] rules
      def initialize(parser_class, rules)
        @parser_class = parser_class
        @rules = rules
      end

      # Parse raw event message into event struct
      # based on its ShapeRef
      #
      # @return [Struct] Event Struct
      def apply(raw_event)
        parse(raw_event)
      end

      private

      def parse(raw_event)
        message_type = raw_event.headers.delete(":message-type")
        if message_type
          case message_type.value
          when 'error'
            parse_error_event(raw_event)
          when 'event'
            parse_event(raw_event)
          when 'exception'
            # Pending
            raise Aws::Errors::EventStreamParserError.new(
              ':exception event parsing is not supported')
          else
            raise Aws::Errors::EventStreamParserError.new(
              'Unrecognized :message-type value for the event')
          end
        else
          # no :message-type header, regular event by default
          parse_event(raw_event)
        end
      end

      def parse_error_event(raw_event)
        error_code = raw_event.headers.delete(":error-code")
        error_message = raw_event.headers.delete(":error-message")
        Aws::Errors::EventError.new(
          :error,
          error_code ? error_code.value : error_code,
          error_message ? error_message.value : error_message
        )
      end

      def parse_event(raw_event)
        event_type = raw_event.headers.delete(":event-type").value
        # content_type = raw_event.headers.delete(":content-type").value

        # Pending
        if event_type == 'initial-response'
          raise Aws::Errors::EventStreamParserError.new(
            'non eventstream member at response is not supported yet'
          )
        end

        # locate event from eventstream
        name, ref = @rules.shape.member_by_location_name(event_type)
        raise "Non event member found at eventstream" unless ref.event

        event = ref.shape.struct_class.new
        event.event_type = name
        # locate payload and headers in the event
        ref.shape.members.each do |member_name, member_ref|
          if member_ref.eventpayload
            eventpayload_streaming?(member_ref) ?
             event.send("#{member_name}=", raw_event.payload) :
             event.send("#{member_name}=", parse_payload(raw_event.payload.read, member_ref))
          elsif member_ref.eventheader
            # allow incomplete event members in response
            if raw_event.headers.key?(member_ref.location_name)
              event.send("#{member_name}=", raw_event.headers[member_ref.location_name].value)
            end
          else
            raise "Non eventpayload or eventheader member found at event"
          end
        end

        event
      end

      def eventpayload_streaming?(ref)
        BlobShape === ref.shape || StringShape === ref.shape
      end

      def parse_payload(body, rules)
        @parser_class.new(rules).parse(body) if body.size > 0
      end

    end

  end
end
