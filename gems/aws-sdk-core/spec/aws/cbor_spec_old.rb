# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe Cbor do
    # https://github.com/cbor/test-vectors/blob/master/appendix_a.json

    let(:time) { Time.parse('2020-01-01 12:21:42') }

    describe Cbor::Half do

      it 'correctly decodes half precision numbers' do
        expect(Cbor::Half.decode(0)).to eq(0)
        expect(Cbor::Half.decode(0x3c00)).to eq(1)
        expect(Cbor::Half.decode(0x7bff)).to eq(65504)
        expect(Cbor::Half.decode(0x3555)).to be_within(0.0001).of(0.3333)
      end

      it 'decodes inf and nan' do
        expect(Cbor::Half.decode(0x7c00)).to eq(Float::INFINITY)
        expect(Cbor::Half.decode(0xfc00)).to eq(-Float::INFINITY)
        expect(Cbor::Half.decode(0x7c01).nan?).to be true
      end
    end

    def cbor64_encode(value)
      Base64.encode64(Cbor.encode(value)).strip.force_encoding("UTF-8")
    end

    describe '#encode' do
      it 'encodes simple numbers' do
        expect(cbor64_encode(0)).to eq("AA==")
        expect(cbor64_encode(1)).to eq("AQ==")
        expect(cbor64_encode(24)).to eq("GBg=")
        expect(cbor64_encode(18446744073709551616)).to eq("wkkBAAAAAAAAAAA=")
      end

      it 'encodes floats' do
        expect(cbor64_encode(1.1)).to eq("+z/xmZmZmZma")
        expect(cbor64_encode(1.0e+300)).to eq("+3435DyIAHWc")
        expect(cbor64_encode(-4.1)).to eq("+8AQZmZmZmZm")
      end

      it 'encodes NAN/Infinity' do
        expect(cbor64_encode(Float::NAN)).to eq("+n/AAAA=")
        expect(cbor64_encode(Float::INFINITY)).to eq("+n+AAAA=")
      end

      it 'encodes booleans and nil' do
        expect(cbor64_encode(true)).to eq("9Q==")
        expect(cbor64_encode(false)).to eq("9A==")
        expect(cbor64_encode(nil)).to eq("9g==")
      end

      it 'encodes strings' do
        expect(cbor64_encode('a')).to eq("YWE=")
        expect(cbor64_encode('IETF')).to eq("ZElFVEY=")
        expect(cbor64_encode("\"\\")).to eq("YiJc")
        expect(cbor64_encode('ü')).to eq("YsO8")
        expect(cbor64_encode('水')).to eq("Y+awtA==")
      end

      it 'encodes arrays' do
        expect(cbor64_encode([])).to eq("gA==")
        expect(cbor64_encode([1,2,3])).to eq("gwECAw==")
        expect(cbor64_encode([1,[2,3],[4,5]])).to eq("gwGCAgOCBAU=")
      end

      it 'encodes maps' do
        expect(cbor64_encode({'a' => 1, 'b'=>[2,3]})).to eq("omFhAWFiggID")
      end

      it 'encodes times' do
        expect(cbor64_encode(time)).to eq("wRsAAAFvYsVn8A==")
      end

      # TODO: Symbol handling?
    end

    describe 'decode' do
      def cbor64_decode(value)
        Cbor.decode(Base64.decode64(value))
      end

      it 'decodes simple numbers' do
        expect(cbor64_decode("AA==")).to eq(0)
        expect(cbor64_decode("AQ==")).to eq(1)
        expect(cbor64_decode("GBg==")).to eq(24)
        expect(cbor64_decode("wkkBAAAAAAAAAAA=")).to eq(18446744073709551616)
      end

      it 'decodes floats' do
        expect(cbor64_decode("+z/xmZmZmZma")).to eq(1.1)
        expect(cbor64_decode("+3435DyIAHWc")).to eq(1.0e+300)
        expect(cbor64_decode("+8AQZmZmZmZm")).to eq(-4.1)
      end

      it 'decodes NAN/Infinity' do
        expect(cbor64_decode("+n/AAAA=").nan?).to eq(true)
        expect(cbor64_decode("+n+AAAA=")).to eq(Float::INFINITY)
      end

      it 'decodes booleans and nil' do
        expect(cbor64_decode("9Q==")).to eq(true)
        expect(cbor64_decode("9A==")).to eq(false)
        expect(cbor64_decode("9g==")).to be_nil
      end

      it 'decodes strings' do
        expect(cbor64_decode("YWE=")).to eq('a')
        expect(cbor64_decode("ZElFVEY=")).to eq('IETF')
        expect(cbor64_decode("YiJc")).to eq("\"\\")
        expect(cbor64_decode("YsO8")).to eq('ü')
      end

      it 'decodes arrays' do
        expect(cbor64_decode("gA==")).to eq([])
        expect(cbor64_decode("gwECAw==")).to eq([1,2,3])
        expect(cbor64_decode("gwGCAgOCBAU=")).to eq([1,[2,3],[4,5]])
      end

      it 'decodes maps' do
        expect(cbor64_decode("omFhAWFiggID")).to eq({'a' => 1, 'b'=>[2,3]})
      end

      it 'decodes times' do
        expect(cbor64_decode("wRsAAAFvYsVn8A==")).to eq(time)
      end
    end

    describe 'streaming api' do
      [23, -23, 24, -24, 255, -255, 65535, -65535, 4294967295,
        -4294967295, 18446744073709551615, -18446744073709551615].each do |d|
        it "encodes/decodes integer value #{d}" do
          encoder = Cbor::Encoder.new
          encoder.add_integer(d)

          decoder = Cbor::Decoder.new(encoder.bytes)
          expect(decoder.peek_type).to eq(:integer)
          expect(decoder.read_integer).to eq(d)
        end
      end

      it 'encodes/decodes strings' do
        value = 'my test string'
        encoder = Cbor::Encoder.new
        encoder.add_string(value)

        decoder = Cbor::Decoder.new(encoder.bytes)
        expect(decoder.peek_type).to eq(:string)
        expect(decoder.read_string).to eq(value)
      end

      it 'encodes/decodes arrays' do
        value = [1, 2, 3]
        encoder = Cbor::Encoder.new
        encoder.start_array(value.size)
        value.each { |v| encoder.add_integer(v) }

        decoder = Cbor::Decoder.new(encoder.bytes)
        expect(decoder.peek_type).to eq(:array)
        expect(decoder.read_array).to eq(value.size)
        decoded = Array.new(value.size) { decoder.read_integer }
        expect(decoded).to eq(value)
      end

      it 'encodes/decodes maps' do
        value = {'a' => 1, 'b' => 2}

        encoder = Cbor::Encoder.new
        encoder.start_map(value.size)
        value.each { |k,v| encoder.add_string(k); encoder.add_integer(v) }

        decoder = Cbor::Decoder.new(encoder.bytes)
        expect(decoder.peek_type).to eq(:map)
        expect(decoder.read_map).to eq(value.size)
        decoded = Hash[Array.new(value.size) { [decoder.read_string, decoder.read_integer] }]
        expect(decoded).to eq(value)
      end

      it 'encodes/decodes tags' do
        # times are encoded as a tag of 1 followed by an integer
        encoder = Cbor::Encoder.new
        encoder.add_time(time)

        decoder = Cbor::Decoder.new(encoder.bytes)
        expect(decoder.peek_type).to eq(:tag)
        expect(decoder.read_tag).to eq(1)
        decoded = Time.at(decoder.read_integer / 1000.0 )
        expect(decoded).to eq(time)
      end

      it 'encodes/decodes booleans' do
        value = [true, false]
        encoder = Cbor::Encoder.new
        encoder.start_array(value.size)
        value.each { |v| encoder.add_boolean(v) }

        decoder = Cbor::Decoder.new(encoder.bytes)
        expect(decoder.peek_type).to eq(:array)
        expect(decoder.read_array).to eq(value.size)
        expect(decoder.peek_type).to eq(:boolean)
        decoded = Array.new(value.size) { decoder.read_boolean }
        expect(decoded).to eq(value)
      end

      it 'encodes/decodes nils' do
        encoder = Cbor::Encoder.new
        encoder.add_nil

        decoder = Cbor::Decoder.new(encoder.bytes)
        expect(decoder.peek_type).to eq(:nil)
        expect(decoder.read_nil).to eq(nil)
      end

      it 'encodes/decodes floats' do
        value = [1.123, 31.31, 6.12e4]
        encoder = Cbor::Encoder.new
        encoder.start_array(value.size)
        value.each { |v| encoder.add_float(v) }

        decoder = Cbor::Decoder.new(encoder.bytes)
        expect(decoder.peek_type).to eq(:array)
        expect(decoder.read_array).to eq(value.size)
        expect(decoder.peek_type).to eq(:float)
        decoded = Array.new(value.size) { decoder.read_float}
        decoded.zip(value).each do |d, v|
          expect(d).to be_within(0.01).of(v)
        end
      end

      it 'encodes/decodes doubles' do
        value = [1.123, 31.31, 6.12e4]
        encoder = Cbor::Encoder.new
        encoder.start_array(value.size)
        value.each { |v| encoder.add_double(v) }

        decoder = Cbor::Decoder.new(encoder.bytes)
        expect(decoder.peek_type).to eq(:array)
        expect(decoder.read_array).to eq(value.size)
        expect(decoder.peek_type).to eq(:double)
        decoded = Array.new(value.size) { decoder.read_double}
        decoded.zip(value).each do |d, v|
          expect(d).to be_within(0.01).of(v)
        end
      end

      # special types

      it 'encodes/decodes bignums' do
        values = [18446744073709551616, -18446744073709551616]
        encoder = Cbor::Encoder.new
        encoder.start_array(values.size)
        values.each { |v| encoder.add_bignum(v) }

        decoder = Cbor::Decoder.new(encoder.bytes)
        expect(decoder.peek_type).to eq(:array)
        expect(decoder.read_array).to eq(values.size)

        expect(decoder.peek_type).to eq(:tag)
        expect(decoder.read_tag).to eq(2) # positive bignum
        expect(decoder.read_bignum(2)).to eq(values[0])

        expect(decoder.peek_type).to eq(:tag)
        expect(decoder.read_tag).to eq(3) # negative bignum
        expect(decoder.read_bignum(3)).to eq(values[1])
      end

      it 'encodes indefinite length arrays' do
        values = [1,2,3,4]

        encoder = Cbor::Encoder.new
        encoder.start_indefinite_array
        values.each { |v| encoder.add_integer(v) }
        encoder.end_indefinite_collection

        decoder = Cbor::Decoder.new(encoder.bytes)
        expect(decoder.peek_type).to eq(:indefinite_array)
        decoder.read_start_indefinite_array

        decoded = []
        until decoder.peek_type == :break_stop_code
          decoded << decoder.read_integer
        end
        decoder.read_end_indefinite_collection

        expect(decoded).to eq(values)
      end

      it 'encodes indefinite length maps' do
        values = {'a' => 1, 'b' => 2}

        encoder = Cbor::Encoder.new
        encoder.start_indefinite_map
        values.each_pair { |k,v| encoder.add_string(k); encoder.add_integer(v) }
        encoder.end_indefinite_collection

        decoder = Cbor::Decoder.new(encoder.bytes)
        expect(decoder.peek_type).to eq(:indefinite_map)
        decoder.read_start_indefinite_map

        decoded = {}
        until decoder.peek_type == :break_stop_code
          key = decoder.read_string
          decoded[key] = decoder.read_integer
        end
        decoder.read_end_indefinite_collection

        expect(decoded).to eq(values)
      end

      # it 'encodes/decodes big decimals' do
      #   values = [BigDecimal("273.15"), BigDecimal("-273.15")]
      #   encoder = Cbor::Encoder.new
      #   encoder.start_array(values.size)
      #   values.each { |v| encoder.add_big_decimal(v) }
      #
      #   decoder = Cbor::Decoder.new(encoder.bytes)
      #   expect(decoder.peek_type).to eq(:array)
      #   expect(decoder.read_array).to eq(values.size)
      #
      #   expect(decoder.peek_type).to eq(:tag)
      #   expect(decoder.read_tag).to eq(4) # positive bignum
      #   expect(decoder.read_big_decimal).to eq(values[0])
      #
      #   expect(decoder.peek_type).to eq(:tag)
      #   expect(decoder.read_tag).to eq(4) # positive bignum
      #   expect(decoder.read_big_decimal).to eq(values[1])
      # end

    end

    describe 'streaming callback api' do
      it "encodes/decodes integer value 16" do
        encoder = Cbor::Encoder.new
        encoder.add_integer(16)

        decoder = Cbor::Decoder.new(encoder.bytes)
        decoded = {}
        handler = {
          integer: proc { |value| decoded[:value] = value}
        }
        decoder.read_next_item(handler)
        expect(decoded[:value]).to eq 16
      end
    end
  end
end