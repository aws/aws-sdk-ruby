# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module RpcV2
    describe Builder do
      let(:rules) { ApiHelper.sample_api.operation(:example_operation).input }

      def build(params)
        Builder.new(rules).serialize(params)
      end

      it 'serializes non-ASCII strings in structures, nested structures and maps' do
        params = {
          string: 'héllo',
          string_map: { 'ключ' => 'значение', 'k' => '👍' },
          nested: { string: 'naïve' }
        }
        expected = {
          'String' => 'héllo',
          'StringMap' => { 'ключ' => 'значение', 'k' => '👍' },
          'Nested' => { 'String' => 'naïve' }
        }
        bytes = build(params)
        expect(bytes.encoding).to eq(Encoding::BINARY)
        expect(bytes).to eq(Cbor::Encoder.new.add(expected).bytes)
        expect(Cbor::Decoder.new(bytes).decode).to eq(expected)
      end
    end
  end
end
