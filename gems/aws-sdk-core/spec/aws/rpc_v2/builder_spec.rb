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

      it 'raises a Timeout::Error from the fast path without falling back' do
        builder = Builder.new(rules)
        allow_any_instance_of(Cbor::Encoder).to receive(:add_counted_map).and_raise(Timeout::Error)
        expect(builder).not_to receive(:format)
        expect { builder.serialize(string: 'x') }.to raise_error(Timeout::Error)
      end
    end
  end
end
