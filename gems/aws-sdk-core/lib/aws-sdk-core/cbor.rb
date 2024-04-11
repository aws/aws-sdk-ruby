require_relative 'cbor/cbor_engine'

# frozen_string_literal: true

require 'json'
require_relative 'json/builder'
require_relative 'json/error_handler'
require_relative 'json/handler'
require_relative 'json/parser'
require_relative 'json/json_engine'
require_relative 'json/oj_engine'

module Aws
  # @api private
  module Cbor

    class OutOfBytesError < ArgumentError; end
    class UnknownType < ArgumentError; end
    class ExtraBytesError < ArgumentError; end
    class UnexpectedBreakCode < ArgumentError; end
    class << self
      def encode(data)
        ENGINE.encode(data)
      end

      def decode(bytes)
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
