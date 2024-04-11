require_relative '../../spec_helper'

module Aws
  module Cbor
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
          "#{expect['tag']['id']}(#{value})"
        when 'bool' then expect['bool']
        when 'null' then nil
        when 'undefined' then nil
        when 'float32' then expect['float32']
        when 'float64' then expect['float64']
        else
          raise "unexpected expect value: #{expect}"
        end
      end

      test_cases.each do |test_case|
        it "passes #{test_case['description']}" do
          input = test_case['input']
          as_bytes = [input].pack('H*')

          expect = test_case['expect']
          actual = Aws::Cbor.decode(as_bytes)
          expect(actual).to eq(expected_value(expect))
        end
      end
    end

    context 'decode error tests' do
      file = File.expand_path('decode-error-tests.json', __dir__)
      test_cases = JSON.load_file(file)

      test_cases.each do |test_case|
        it "passes #{test_case['description']}" do
          input = test_case['input']
          as_bytes = [input].pack('H*')

          # TODO: break this down into several errors somehow?
          expect { Aws::Cbor.decode(as_bytes) }.to raise_error(OutOfBytesError)
        end
      end
    end

  end
end