require_relative '../../spec_helper'

module Aws
  module Cbor
    describe DefaultCborEngine do
      context 'decode success tests' do
        file = File.expand_path('decode-success-tests.json', __dir__)
        test_cases = JSON.load_file(file)

        def expected_value(expect)
          raise 'invalid test case' if expect.keys.size != 1

          case expect.keys.first
          when 'uint' then expect['uint']
          when 'negint' then -1 - expect['negint']
          when 'bytestring' then expect['bytestring'].pack('c*')
          when 'string' then expect['string']
          when 'list'
            expect['list'].map { |item| expected_value(item) }
          when 'map'
            expect['map'].each_with_object({}) do |(key, value), h|
              h[key] = expected_value(value)
            end
          when 'tag'
            value = expected_value(expect['tag']['value'])
            Tagged.new(expect['tag']['id'], value)
          when 'bool' then expect['bool']
          when 'null' then nil
          when 'undefined' then :undefined
          when 'float32' then [expect['float32']].pack('L').unpack('f').first
          when 'float64' then [expect['float64']].pack('Q').unpack('d').first
          else
            raise "unexpected expect value: #{expect}"
          end
        end

        def assert(actual, expected)
          if expected.is_a?(Float) && expected.nan?
            expect(actual.nan?).to be true
          elsif expected.is_a?(Array)
            expected.each_with_index do |item, i|
              assert(actual[i], item)
            end
          elsif expected.is_a?(Hash)
            expected.each do |key, value|
              assert(actual[key], value)
            end
          else
            expect(actual).to eq(expected)
          end
        end

        test_cases.each do |test_case|
          it "passes #{test_case['description']}" do
            input = [test_case['input']].pack('H*')
            actual = Aws::Cbor::CborEngine.decode(input)
            expected = expected_value(test_case['expect'])
            assert(actual, expected)
          end
        end
      end

      context 'decode error tests' do
        file = File.expand_path('decode-error-tests.json', __dir__)
        test_cases = JSON.load_file(file)

        test_cases.each do |test_case|
          it "passes #{test_case['description']}" do
            input = [test_case['input']].pack('H*')

            expect { Aws::Cbor::CborEngine.decode(input) }
              .to raise_error(CborError)
          end
        end
      end
    end
  end
end