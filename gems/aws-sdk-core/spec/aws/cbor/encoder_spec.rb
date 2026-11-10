# frozen_string_literal: true

require_relative '../../spec_helper'
require 'aws-sdk-core/cbor/encoder'

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
          expect(cbor64_encode(time)).to eq('wftB14MjtYAAAA==')
        end

        it 'encodes BigDecimals' do
          # see example at:
          # https://www.rfc-editor.org/rfc/rfc8949.html#name-decimal-fractions-and-bigfl
          expect(cbor64_encode(BigDecimal("273.15")))
            .to eq('xIIhGWqz') # C4 82 21 19 6AB3 in hex
          # encodes as floating point numbers
          expect(cbor64_encode(BigDecimal("Infinity"))).to eq('+n+AAAA=')
          expect(cbor64_encode(BigDecimal("NaN"))).to eq('+n/AAAA=')
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

        it 'raises on negative values instead of writing a malformed header' do
          expect { Encoder.new.start_map(-1) }.to raise_error(Error, 'Value is too large to encode: -1')
          expect { Encoder.new.start_array(-1) }.to raise_error(Error, 'Value is too large to encode: -1')
          expect { Encoder.new.add(Tagged.new(-1, 1)) }.to raise_error(Error, 'Value is too large to encode: -1')
        end

        it 'writes each header size at its boundaries' do
          [[23, '17'], [24, '1818'], [255, '18ff'], [256, '190100'], [65_535, '19ffff'],
           [65_536, '1a00010000'], [4_294_967_295, '1affffffff'], [4_294_967_296, '1b0000000100000000']].each do |v, h|
            expect(Encoder.new.add(v).bytes.unpack1('H*')).to eq(h)
          end
        end
      end

      describe 'non-Integer tags' do
        it 'encodes them' do
          expect(Encoder.new.add(Tagged.new(1.5, 0)).bytes.unpack1('H*')).to eq('c100')
          expect(Encoder.new.add(Tagged.new(300.5, 0)).bytes.unpack1('H*')).to eq('d9012c00')
        end

        it 'raises Cbor::Error for unencodable tags' do
          expect { Encoder.new.add(Tagged.new(nil, 0)) }.to raise_error(Error, 'Value is too large to encode: ')
          expect { Encoder.new.add(Tagged.new('x', 0)) }.to raise_error(Error, 'Value is too large to encode: x')
        end
      end

      describe '#add_counted_map' do
        it 'writes the header for the count the block returns' do
          [0, 1, 23, 24, 300].each do |n|
            encoder = Encoder.new
            encoder.add_counted_map do
              n.times { |i| encoder.add("k#{i}").add(i) }
              n
            end
            expected = Encoder.new.add((0...n).to_h { |i| ["k#{i}", i] }).bytes
            expect(encoder.bytes).to eq(expected)
          end
        end
      end

      describe 'non-ASCII text strings' do
        def hex(value)
          Encoder.new.add(value).bytes.unpack1('H*')
        end

        it 'encodes non-ASCII text after a non-ASCII container header' do
          expect(hex('ключ' => 'значение', 'n' => 300, 'e' => 'é'))
            .to eq('a368d0bad0bbd18ed18770d0b7d0bdd0b0d187d0b5d0bdd0b8d0b5616e19012c616562c3a9')
        end

        it 'encodes non-ASCII text next to byte strings' do
          expect(hex(["\xff\xfe".b, 'héllo', "\x80".b, 'ñ'])).to eq('8442fffe6668c3a96c6c6f418062c3b1')
        end

        it 'transcodes non-UTF-8 strings and frozen strings' do
          latin1 = 'caf'.encode('ISO-8859-1') + "\xe9".dup.force_encoding('ISO-8859-1')
          expect(hex([latin1])).to eq('8165636166c3a9')
          expect(hex(['naïve'.freeze])).to eq('81666e61c3af7665')
        end

        it 'keeps the buffer BINARY and leaves the caller string unchanged' do
          value = +'éa'
          encoder = Encoder.new.add([value, 'ü'])
          expect(encoder.bytes.encoding).to eq(Encoding::BINARY)
          expect(value.encoding).to eq(Encoding::UTF_8)
          expect(value).to eq('éa')
        end

        it 'transcodes ASCII-only strings in other encodings to the same bytes' do
          expect(hex(['abc'.encode('US-ASCII'), 'abc'.encode('UTF-16LE')])).to eq('826361626363616263')
        end

        it 'raises for strings that cannot be transcoded to UTF-8' do
          expect { Encoder.new.add("a\xffb".dup.force_encoding('US-ASCII')) }
            .to raise_error(Encoding::InvalidByteSequenceError)
          expect { Encoder.new.add("a\x81b".dup.force_encoding('Windows-1252')) }
            .to raise_error(Encoding::UndefinedConversionError)
        end
      end
    end
  end
end
