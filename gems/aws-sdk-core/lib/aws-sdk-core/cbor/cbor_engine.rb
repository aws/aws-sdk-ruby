# frozen_string_literal: true

require_relative 'half'
require_relative 'tagged'
require_relative 'encoder'
require_relative 'decoder'

module Aws
  module Cbor
    # Pure Ruby implementation of CBOR encode and decode
    module CborEngine
      def self.encode(data)
        Encoder.new.add(data).bytes
      end

      def self.decode(bytes)
        Decoder.new(bytes).decode
      end
    end
  end
end
