# frozen_string_literal: true

require_relative 'cbor/cbor_engine'

module Aws
  # @api private
  module Cbor
    class CborError < StandardError; end

    class OutOfBytesError < CborError
      def initialize(n, left)
        super("Out of bytes. Trying to read #{n} bytes but buffer contains only #{left}")
      end
    end

    class UnknownTypeError < CborError
      def initialize(type)
        super("Unable to encode #{value}")
      end
    end

    class ExtraBytesError < CborError
      def initialize(pos, size)
        super("Extra bytes follow after decoding item. Read #{pos} / #{size} bytes")
      end
    end

    class UnexpectedBreakCodeError < CborError; end

    class UnexpectedAdditionalInformationError < CborError
      def initialize(add_info)
        super("Unexpected additional information: #{add_info}")
      end
    end

    class << self
      def encode(data)
        ENGINE.encode(data)
      end

      def decode(bytes)
        bytes.force_encoding(Encoding::BINARY)
        ENGINE.decode(bytes)
      end

      private

      def select_engine
        CborEngine
      end
    end

    # @api private
    ENGINE = select_engine
  end
end
