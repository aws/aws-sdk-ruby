# frozen_string_literal: true

module Aws
  # @api private
  module Cbor

    # CBOR Tagged data (Major type 6).
    # A Tag consists of a tag number and a value.
    # In the extended generic data model, a tag number's definition
    # describes the additional semantics conveyed with the tag number.
    # # @!method initialize(*args)
    #   @option args [Integer] :tag The tag number.
    #   @option args [Object] :value The tag's content.
    # @!attribute tag
    #   The tag number.
    #   @return [Integer]
    # @!attribute value
    #   The tag's content.
    #   @return [Object]
    Tagged = Struct.new(:tag, :value)

    class Error < StandardError; end

    class OutOfBytesError < Error
      def initialize(n, left)
        super("Out of bytes. Trying to read #{n} bytes but buffer contains only #{left}")
      end
    end

    class UnknownTypeError < Error
      def initialize(type)
        super("Unable to encode #{type}")
      end
    end

    class ExtraBytesError < Error
      def initialize(pos, size)
        super("Extra bytes follow after decoding item. Read #{pos} / #{size} bytes")
      end
    end

    class UnexpectedBreakCodeError < Error; end

    class UnexpectedAdditionalInformationError < Error
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
          raise 'Unable to find a compatible cbor library.'
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
