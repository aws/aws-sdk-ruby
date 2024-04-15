# frozen_string_literal: true

module Aws
  module Cbor
    module CborEngine
      def self.encode(data)
        CBOR.encode(data)
      end

      def self.decode(bytes)
        CBOR.decode(bytes)
      end
    end
  end
end
