# frozen_string_literal: true

module Aws
  module Cbor
    Tagged = Struct.new(:tag, :value) do
      def to_s
        "#{tag}(#{value})"
      end

      def inspect
        "#{tag}(#{value.inspect})"
      end

      def data
        value
      end
    end
  end
end
