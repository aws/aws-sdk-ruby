# frozen_string_literal: true

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
      # @param [Symbol,Class] engine
      #   Must be one of the following values:
      #
      #   * :cbor
      #
      def engine=(engine)
        @engine = Class === engine ? engine : load_engine(engine)
      end

      # @return [Class] Returns the default engine.
      #   One of:
      #
      #   * {CborEngine}
      #
      def engine
        set_default_engine unless @engine
        @engine
      end

      def encode(data)
        @engine.encode(data)
      end

      def decode(bytes)
        bytes.force_encoding(Encoding::BINARY)
        @engine.decode(bytes)
      end

      def set_default_engine
        [:cbor].each do |name|
          @engine ||= try_load_engine(name)
        end
        unless @engine
          raise 'Unable to find a compatible cbor library. '
        end
      end

      private

      def load_engine(name)
        require "aws-sdk-core/cbor/#{name}_engine"
        const_name = name[0].upcase + name[1..-1] + 'Engine'
        const_get(const_name)
      end

      def try_load_engine(name)
        load_engine(name)
      rescue LoadError
        false
      end
    end

    set_default_engine
  end
end
