# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Cbor

    describe Decoder do
      let(:time) { Time.parse('2020-01-01 12:21:42') }

      def cbor64_encode(value)
        Base64.encode64(Encoder.new.add(value).bytes).strip.force_encoding("UTF-8")
      end

      def hex_encode(value)
        Encoder.new.add(value).bytes.unpack('H*').first
      end

      def hex_decode(hex)
        bytes = [hex].pack('H*')
        Decoder.new(bytes).decode
      end

      describe 'decode' do
        it 'tests' do
          puts hex = hex_encode(-24)
          puts hex_decode(hex)
        end
      end
    end
  end
end


