# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Cbor
    describe Encoder do
      let(:time) { Time.parse('2020-01-01 12:21:42Z') }

      def cbor64_encode(value)
        Base64.strict_encode64(Encoder.new.add(value).bytes)
          .strip.force_encoding('UTF-8')
      end

      describe '#add' do
        it 'encodes simple numbers' do
          expect(cbor64_encode(0)).to eq('AA==')
          expect(cbor64_encode(1)).to eq('AQ==')
          expect(cbor64_encode(-1)).to eq('IA==')
          expect(cbor64_encode(24)).to eq('GBg=')
          expect(cbor64_encode(65_535)).to eq('Gf//')
          expect(cbor64_encode(4_294_967_295)).to eq('Gv////8=')
          expect(cbor64_encode(18_446_744_073_709_551_615))
            .to eq('G///////////')
          expect(cbor64_encode(18_446_744_073_709_551_616))
            .to eq('wkkBAAAAAAAAAAA=')
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

        it 'encodes byte strings' do
          expect(cbor64_encode('a'.encode(Encoding::BINARY)))
            .to eq('QWE=')
        end

        it 'encodes Symbols' do
          expect(cbor64_encode(:a)).to eq('YWE=')
        end

        it 'encodes Tagged items' do
          expect(cbor64_encode(Tagged.new(0, 0))).to eq('wAA=')
        end

        it 'encodes arrays' do
          expect(cbor64_encode([])).to eq('gA==')
          expect(cbor64_encode([1, 2, 3])).to eq('gwECAw==')
          expect(cbor64_encode([1, [2, 3], [4, 5]])).to eq('gwGCAgOCBAU=')
        end

        it 'encodes maps' do
          expect(cbor64_encode({ 'a' => 1,
            'b' => [2, 3] })).to eq('omFhAWFiggID')
        end

        it 'encodes times' do
          expect(cbor64_encode(time)).to eq('wRsAAAFvYQ3z8A==')
        end

        it 'encodes BigDecimals' do
          # see example at:
          # https://www.rfc-editor.org/rfc/rfc8949.html#name-decimal-fractions-and-bigfl
          expect(cbor64_encode(BigDecimal("273.15")))
            .to eq('xIIhGWqz') # C4 82 21 19 6AB3 in hex
        end

        it 'raises on unknown items' do
          expect do
            expect(cbor64_encode(Encoder.new))
          end.to raise_error(UnknownTypeError)
        end
      end

      describe '#head' do
        it 'raises on values that are too large' do
          expect do
            Encoder.new.send(:head, 0x00, 18_446_744_073_709_551_617)
          end.to raise_error(Error)
        end
      end
    end
  end
end
