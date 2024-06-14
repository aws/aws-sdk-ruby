# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Cbor
    # covers cases not included in test suite from cbor_spec
    describe Decoder do
      def cbor64_decode(value)
        Decoder.new(Base64.decode64(value)).decode
      end

      describe '#decode' do
        it 'raises when there are extra bytes' do
          expect do
            cbor64_decode('AAA==')
          end.to raise_error(ExtraBytesError)
        end

        it 'raises for undefined reserved' do
          buffer = String.new
          buffer << 0xf8 # 111_11000- Major type 7 (Float) + value: 24
          expect do
            Decoder.new(buffer).decode
          end.to raise_error(Error)
        end

        context 'half precision floats' do
          def decode_half_bytes(half)
            half_bytes = 0xf9 # 111_11001 - Major type 7 (Float) + value: 25
            buffer = String.new
            buffer << half_bytes << [half].pack('n')
            Decoder.new(buffer).decode
          end

          it 'decodes Half precision floats' do
            expect(decode_half_bytes(0)).to eq(0)
            expect(decode_half_bytes(0x3c00)).to eq(1)
            expect(decode_half_bytes(0x7bff)).to eq(65_504)
            expect(decode_half_bytes(0x3555)).to be_within(0.0001).of(0.3333)
          end

          it 'decodes half precision infinity' do
            expect(decode_half_bytes(0x7c00)).to eq(Float::INFINITY)
            expect(decode_half_bytes(0xfc00)).to eq(-Float::INFINITY)
          end

          it 'decodes half precision NaN' do
            expect(decode_half_bytes(0x7c01).nan?).to be true
          end
        end

        it 'decodes undefined' do
          undefined_bytes = 0xf7 # 111_10111- Major type 7 (Float) + value: 23
          buffer = String.new
          buffer << undefined_bytes
          expect(Decoder.new(buffer).decode).to eq(:undefined)
        end

        it 'decodes integer times' do
          expect(cbor64_decode('wRsAAAFvYQ3z8A=='))
            .to eq(Time.parse('2020-01-01 12:21:42Z'))
        end
      end
    end
  end
end
