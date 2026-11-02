# frozen_string_literal: true

module Aws
  module EventStream
    module Errors

      # Raised when reading bytes exceed buffer total bytes
      class ReadBytesExceedLengthError < RuntimeError
        def initialize(target_byte, total_len)
          msg = "Attempting reading bytes to offset #{target_byte} exceeds"\
                " buffer length of #{total_len}"
          super(msg)
        end
      end

      # Raise when insufficient bytes of a message is received
      class IncompleteMessageError < RuntimeError
        def initialize(*args)
          super('Not enough bytes for event message')
        end
      end

      class PreludeChecksumError < RuntimeError
        def initialize(*args)
          super('Prelude checksum mismatch')
        end
      end

      class MessageChecksumError < RuntimeError
        def initialize(*args)
          super('Message checksum mismatch')
        end
      end

      class EventPayloadLengthExceedError < RuntimeError
        def initialize(*args)
          super("Payload length of a message should be under 24mb.")
        end
      end

      class EventHeadersLengthExceedError < RuntimeError
        def initialize(*args)
          super("Encoded headers length of a message should be under 128kb.")
        end
      end

      # Raised when an encoded header name exceeds the 255-byte protocol limit
      class EventHeaderNameLengthExceedError < RuntimeError
        def initialize(*args)
          super("Encoded header name length should be under 256 bytes.")
        end
      end

      # Raised when an encoded header value exceeds the 32767-byte (INT16_MAX) protocol limit
      class EventHeaderValueLengthExceedError < RuntimeError
        def initialize(*args)
          super("Encoded header value length should be under 32768 bytes.")
        end
      end

      # Raised when a fixed-width header value does not fit its protocol width
      class EventHeaderValueWidthError < RuntimeError
        def initialize(type = nil, *args)
          super("Header value does not fit the fixed width of header type '#{type}'.")
        end
      end

    end
  end
end
