# frozen_string_literal: true

require_relative '../../spec_helper'
require 'bigdecimal'
require 'set'
require 'stringio'

module Aws
  module RpcV2
    # The fast paths must behave exactly like the original format/decode-then-walk code, which both classes
    # keep as their fallback: same bytes or struct, or the same exception class and message.
    describe 'Builder and Parser parity with the original algorithms' do
      let(:api) do
        ApiHelper.sample_api(api: {
          'metadata' => {
            'protocol' => 'smithy-rpc-v2-cbor', 'apiVersion' => '2020-01-01', 'endpointPrefix' => 'svc',
            'serviceId' => 'Svc', 'signatureVersion' => 'v4', 'targetPrefix' => 'Svc'
          },
          'operations' => {
            'Op' => {
              'name' => 'Op', 'http' => { 'method' => 'POST', 'requestUri' => '/' },
              'input' => { 'shape' => 'Item' }, 'output' => { 'shape' => 'Item' }
            }
          },
          'shapes' => {
            'Item' => {
              'type' => 'structure',
              'members' => {
                'S' => { 'shape' => 'Str' }, 'I' => { 'shape' => 'Int' }, 'F' => { 'shape' => 'Dbl' },
                'B' => { 'shape' => 'Bool' }, 'T' => { 'shape' => 'Time' }, 'Bl' => { 'shape' => 'Blob' },
                'L' => { 'shape' => 'StrList' }, 'M' => { 'shape' => 'StrMap' }, 'U' => { 'shape' => 'Un' },
                'Child' => { 'shape' => 'Item' }, 'Renamed' => { 'shape' => 'Str', 'locationName' => 'wire' },
                'Wide' => { 'shape' => 'Wide' }
              }
            },
            'Wide' => {
              'type' => 'structure',
              'members' => (1..25).to_h { |i| ["W#{i}", { 'shape' => 'Str' }] }
            },
            'Un' => {
              'type' => 'structure', 'union' => true,
              'members' => { 'A' => { 'shape' => 'Str' }, 'N' => { 'shape' => 'Int' } }
            },
            'StrList' => { 'type' => 'list', 'member' => { 'shape' => 'Str' } },
            'StrMap' => { 'type' => 'map', 'key' => { 'shape' => 'Str' }, 'value' => { 'shape' => 'Str' } },
            'Str' => { 'type' => 'string' }, 'Int' => { 'type' => 'integer' }, 'Dbl' => { 'type' => 'double' },
            'Bool' => { 'type' => 'boolean' }, 'Time' => { 'type' => 'timestamp' }, 'Blob' => { 'type' => 'blob' }
          }
        })
      end
      let(:input) { api.operation(:op).input }
      let(:output) { api.operation(:op).output }

      def outcome
        [:ok, yield]
      rescue StandardError => e
        [:error, e.class, e.message]
      end

      describe Builder do
        def expect_parity(params)
          builder = Builder.new(input)
          old = outcome { RpcV2.encode(builder.send(:format, input, params.call)) }
          new = outcome { builder.serialize(params.call) }
          expect(new).to eq(old)
        end

        {
          'matching types' => lambda {
            { s: 'héllo', i: 7, f: 1.5, b: true, t: Time.at(1_600_000_000), bl: 'raw',
              l: %w[a b], m: { 'k' => 'v' }, u: { a: 'x' }, child: { s: 'nested' }, renamed: 'w' }
          },
          'Symbol and BINARY String for a string member' => -> { { s: :sym, child: { s: "\xff".b } } },
          'Integer for a float member, Float for an integer member' => -> { { f: 1, i: 2.5 } },
          'String for an integer member, BigDecimal for a float member' => -> { { i: '3', f: BigDecimal('1.25') } },
          'non-boolean for a boolean member, Integer for a timestamp member' => -> { { b: 'yes', t: 5 } },
          'nil elements and values' => -> { { l: ['a', nil], m: { 'k' => nil } } },
          'Set for a list, Array of pairs for a map' => -> { { l: Set['a'], m: [%w[k v]] } },
          'map keys that are Symbols, BINARY Strings and Integers' => -> { { m: { k: 'a', "\xfe".b => 'b', 1 => 'c' } } },
          'IO for a blob' => -> { { bl: StringIO.new('io bytes') } },
          'nil for a structure inside a list' => -> { { child: { l: [nil] } } },
          'a structure with 24+ members set' => -> { { wide: (1..25).to_h { |i| [:"w#{i}", "v#{i}"] } } },
          'a structure with exactly 23 and 24 members set' => lambda {
            { wide: (1..23).to_h { |i| [:"w#{i}", 'v'] }, child: { wide: (1..24).to_h { |i| [:"w#{i}", 'v'] } } }
          },
          'String keys' => -> { { 's' => 'x', 'child' => { 'i' => 1 }, 'renamed' => 'w' } },
          'a non-Symbol, non-String key with a nil value' => -> { { s: 'x', 1 => nil } },
          'a non-Symbol, non-String key with a value' => -> { { 1 => 'x' } },
          'unknown keys and nil values' => -> { { s: nil, nope: 'x', 'nope' => 'y', i: 3 } },
          'a Struct for a structure' => -> { { child: Struct.new(:s, :i).new('x', 2) } },
          'the same member as Symbol and String' => -> { { s: 'a', 's' => 'b' } },
          'the same member as Symbol and String, custom location_name' => -> { { renamed: 'a', 'renamed' => 'b', i: 1 } },
          'String before Symbol for the same member' => -> { { i: 1, 'renamed' => 'b', renamed: 'a' } },
          'nil Symbol value plus String value for the same member' => -> { { renamed: nil, 'renamed' => 'b' } }
        }.each do |name, params|
          it("matches for #{name}") { expect_parity(params) }
        end
      end

      describe Parser do
        def expect_parity(bytes)
          parser = Parser.new(output)
          old = outcome { normalize(parser.send(:parse_ref, output, RpcV2.decode(bytes.dup), nil)) }
          new = outcome { normalize(parser.parse(bytes.dup)) }
          expect(new).to eq(old)
        end

        def normalize(value)
          value.respond_to?(:to_h) ? [value.class.name, value.to_h] : value
        end

        def cbor(value)
          Cbor::Encoder.new.add(value).bytes
        end

        def b(*bytes)
          bytes.pack('C*').force_encoding(Encoding::BINARY)
        end

        {
          'matching types' => -> { cbor('S' => 'x', 'I' => 1, 'L' => %w[a], 'M' => { 'k' => 'v' }, 'U' => { 'A' => 'y' }) },
          'renamed and unknown members' => -> { cbor('wire' => 'w', 'Nope' => [1, { 'x' => 2 }]) },
          # {"S": null, "L": [null, undefined], "M": {"k": undefined}, "I": undefined}
          'CBOR null and undefined values' => lambda {
            b(0xa4, 0x61, 0x53, 0xf6, 0x61, 0x4c, 0x82, 0xf6, 0xf7,
              0x61, 0x4d, 0xa1, 0x61, 0x6b, 0xf7, 0x61, 0x49, 0xf7)
          },
          'Integer for a string member, String for an integer member' => -> { cbor('S' => 5, 'I' => 'five') },
          'array for a structure member, map for a list member' => -> { cbor('Child' => [1, 2], 'L' => { 'a' => 'b' }) },
          # {"S": "ab" as indefinite text, "L": indefinite ["a"], "M": indefinite {"k": "v"}} as an indefinite map
          'indefinite-length maps, arrays and strings' => lambda {
            b(0xbf, 0x61, 0x53, 0x7f, 0x61, 0x61, 0x61, 0x62, 0xff,
              0x61, 0x4c, 0x9f, 0x61, 0x61, 0xff,
              0x61, 0x4d, 0xbf, 0x61, 0x6b, 0x61, 0x76, 0xff, 0xff)
          },
          'union with an unknown member' => -> { cbor('U' => { 'Z' => 1 }) },
          'empty union' => -> { cbor('U' => {}) },
          'union with only __type' => -> { cbor('U' => { '__type' => 't' }) },
          'union member with a null value' => -> { cbor('U' => { 'A' => nil }) },
          'union with two members' => -> { cbor('U' => { 'N' => 1, 'A' => 'x' }) },
          'trailing bytes after the body' => -> { cbor('S' => 'x') + cbor(1) },
          'a CBOR null body' => -> { b(0xf6) },
          'nesting deeper than the decoder limit' => lambda {
            deep = (1..130).reduce('S' => 'leaf') { |inner, _| { 'Child' => inner } }
            cbor(deep)
          },
          'truncated body' => -> { cbor('S' => 'abcdef')[0..-3] }
        }.each do |name, body|
          it("matches for #{name}") { expect_parity(instance_exec(&body)) }
        end

        it 'raises the same error as before for an empty union' do
          expect { Parser.new(output).parse(cbor('U' => {})) }.to raise_error(NoMethodError)
        end
      end
    end
  end
end
