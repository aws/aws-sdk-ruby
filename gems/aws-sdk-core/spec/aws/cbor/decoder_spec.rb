# frozen_string_literal: true

require_relative '../../spec_helper'
require 'aws-sdk-core/cbor/decoder'

module Aws
  module Cbor
    # covers cases not included in test suite from cbor_spec
    describe Decoder do
      def cbor64_decode(value)
        Decoder.new(Base64.decode64(value)).decode
      end

      def encode_decode(value)
        Decoder.new(Encoder.new.add(value).bytes).decode
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
          expect(cbor64_decode('wftB14MjtYAAAA==')).to eq(Time.parse('2020-01-01 12:21:42Z'))
        end

        it 'decodes positive BigNums' do
          value = 2**64 + 1
          expect(encode_decode(value)).to eq(value)
        end

        it 'decodes negative BigNums' do
          value = -1 * (2**64 + 1)
          expect(encode_decode(value)).to eq(value)
        end

        it 'decodes BigDecimals' do
          value = BigDecimal('273.15')
          expect(cbor64_decode('xIIhGWqz')).to eq(value)
        end

        it 'raises when nesting depth exceeds max depth' do
          # 0xc6 = CBOR tag(6), each one recurses into decode_item.
          # 128 tags + terminal value = 129 calls to decode_item.
          payload = ("\xc6".b * 128) + "\x00".b
          expect { Decoder.new(payload).decode }.to raise_error(Error, /Maximum nesting depth/)
        end

        it 'decodes payloads within the depth limit' do
          # 127 tags + terminal value = 128 calls to decode_item (at the limit).
          payload = ("\xc6".b * 127) + "\x00".b
          expect { Decoder.new(payload).decode }.not_to raise_error
        end
      end

      # Methods used by RpcV2::Parser; behavior must match #decode.
      describe 'parser read surface (@api private)' do
        it 'yields each map key with the map size, the block reading the value' do
          d = Decoder.new(Encoder.new.add({ 'S' => 'hi', 'N' => 1 }).bytes)
          pairs = []
          d.each_map_key { |key, size| pairs << [key, size, d.decode_item] }
          expect(pairs).to eq([['S', 2, 'hi'], ['N', 2, 1]])
        end

        it 'yields once per array element, the block reading it' do
          d = Decoder.new(Encoder.new.add([10, 20]).bytes)
          elements = []
          d.each_array_element { elements << d.decode_item }
          expect(elements).to eq([10, 20])
        end

        it 'peeks the next item type without consuming it' do
          d = Decoder.new(Encoder.new.add([1]).bytes)
          expect(d.peek_type).to eq(:array)
          expect(d.decode_item).to eq([1])
        end

        it 'preserves OutOfBytesError on underrun' do
          bytes = [0xa1, 0x62, 0x61].pack('C*').force_encoding(Encoding::BINARY) # map with a truncated 2-byte key
          expect { Decoder.new(bytes).each_map_key { nil } }.to raise_error(OutOfBytesError)
        end

        it 'preserves the depth guard when driven via decode_item' do
          payload = ("\xc6".b * 128) + "\x00".b
          expect { Decoder.new(payload).decode_item }.to raise_error(Error, /Maximum nesting depth/)
        end

        it 'counts maps and arrays read with blocks toward the decode_item depth limit' do
          read = lambda do |d|
            case d.peek_type
            when :array then d.each_array_element { read.call(d) }
            when :map then d.each_map_key { read.call(d) }
            else d.decode_item
            end
          end
          arrays = ->(depth) { (1..depth).reduce(1) { |inner, _| [inner] } }
          maps = ->(depth) { (1..depth).reduce(1) { |inner, _| { 'k' => inner } } }
          mixed = ->(depth) { (1..depth).reduce(1) { |inner, i| i.even? ? [inner] : { 'k' => inner } } }

          [arrays, maps, mixed].each do |nest|
            expect { read.call(Decoder.new(Encoder.new.add(nest.call(128)).bytes)) }
              .to raise_error(Error, /Maximum nesting depth/)
            expect { read.call(Decoder.new(Encoder.new.add(nest.call(127)).bytes)) }.not_to raise_error
          end
        end

        it 'reads the item with the block passed to decode, then raises ExtraBytesError like #decode' do
          expect(Decoder.new(Encoder.new.add(1).bytes).decode(&:decode_item)).to eq(1)
          extra = Decoder.new(Encoder.new.add(1).add(2).bytes)
          expect { extra.decode(&:decode_item) }.to raise_error(ExtraBytesError)
        end
      end
    end
  end
end
