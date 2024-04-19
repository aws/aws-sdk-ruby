# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Cbor
    describe Encoder do
      let(:time) { Time.parse('2020-01-01 12:21:42Z') }

      def cbor64_encode(value)
        Base64.encode64(Encoder.new.add(value).bytes).strip.force_encoding('UTF-8')
      end

      describe '#add' do
        it 'encodes simple numbers' do
          expect(cbor64_encode(0)).to eq('AA==')
          expect(cbor64_encode(1)).to eq('AQ==')
          expect(cbor64_encode(24)).to eq('GBg=')
          expect(cbor64_encode(18_446_744_073_709_551_616)).to eq('wkkBAAAAAAAAAAA=')
        end

        it 'encodes floats' do
          expect(cbor64_encode(1.1)).to eq('+z/xmZmZmZma')
          expect(cbor64_encode(1.0e+300)).to eq('+3435DyIAHWc')
          expect(cbor64_encode(-4.1)).to eq('+8AQZmZmZmZm')
        end

        it 'encodes NAN/Infinity' do
          expect(cbor64_encode(Float::NAN)).to eq('+n/AAAA=')
          expect(cbor64_encode(Float::INFINITY)).to eq('+n+AAAA=')
        end

        it 'encodes booleans and nil' do
          expect(cbor64_encode(true)).to eq('9Q==')
          expect(cbor64_encode(false)).to eq('9A==')
          expect(cbor64_encode(nil)).to eq('9g==')
        end

        it 'encodes strings' do
          expect(cbor64_encode('a')).to eq('YWE=')
          expect(cbor64_encode('IETF')).to eq('ZElFVEY=')
          expect(cbor64_encode('"\\')).to eq('YiJc')
          expect(cbor64_encode('ü')).to eq('YsO8')
          expect(cbor64_encode('水')).to eq('Y+awtA==')
        end

        it 'encodes arrays' do
          expect(cbor64_encode([])).to eq('gA==')
          expect(cbor64_encode([1, 2, 3])).to eq('gwECAw==')
          expect(cbor64_encode([1, [2, 3], [4, 5]])).to eq('gwGCAgOCBAU=')
        end

        it 'encodes maps' do
          expect(cbor64_encode({ 'a' => 1, 'b' => [2, 3] })).to eq('omFhAWFiggID')
        end

        it 'encodes times' do
          expect(cbor64_encode(time)).to eq('wRsAAAFvYQ3z8A==')
        end
      end
    end
  end
end
