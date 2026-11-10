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
      let(:api) { ApiHelper.sample_api(api: JSON.load_file(File.expand_path('rpcv2-parity-api.json', __dir__))) }
      let(:input) { api.operation(:op).input }
      let(:output) { api.operation(:op).output }

      def outcome
        [:ok, yield]
      rescue StandardError => e
        # Ruby 3.2 and older include object addresses in NoMethodError messages.
        [:error, e.class, e.message.gsub(/0x\h+/, '0x')]
      end

      # Every case compares the fast path with the original code. Each group also pins the expected outcome, so a
      # case cannot pass by taking the same unexpected path (for example an error) in both.
      #   fast path:    serialize succeeds without calling the original #format
      #   same result:  serialize succeeds; it may use the original #format
      #   same error:   serialize raises what the original raises
      describe Builder do
        def expect_parity(params, expectation)
          builder = Builder.new(input)
          old = outcome { RpcV2.encode(builder.send(:format, input, params.call)) }
          expect(builder).not_to receive(:format) if expectation == :fast_path
          new = outcome { builder.serialize(params.call) }
          expect(new).to eq(old)
          expect(new.first).to eq(expectation == :same_error ? :error : :ok)
        end

        {
          'params served by the fast path' => [:fast_path, {
            'every member type' => lambda {
              { string: 'héllo', integer: 7, double: 1.5, boolean: true, timestamp: Time.at(1_600_000_000),
                blob: +'raw', string_list: %w[a b], string_map: { 'k' => 'v' }, union: { text: 'x' },
                child: { string: 'nested' }, children: [{ string: 'a' }, { integer: 1 }], renamed: 'w' }
            },
            'a structure with 24+ members set' => -> { { wide: (1..25).to_h { |i| [:"field#{i}", "v#{i}"] } } },
            'structures with exactly 23 and 24 members set' => lambda {
              { wide: (1..23).to_h { |i| [:"field#{i}", 'v'] },
                child: { wide: (1..24).to_h { |i| [:"field#{i}", 'v'] } } }
            },
            'String keys' => -> { { 'string' => 'x', 'child' => { 'integer' => 1 }, 'renamed' => 'w' } },
            'a Struct for a structure' => -> { { child: Struct.new(:string, :integer).new('x', 2) } },
            'unknown keys and nil values' => -> { { string: nil, not_a_member: 'x', 'not_a_member' => 'y', integer: 3 } },
            'a Symbol and a BINARY String for string members' => -> { { string: :sym, child: { string: "\xff".b } } },
            'valid non-UTF-8 strings' => lambda {
              { string: 'abc'.encode('US-ASCII'), string_list: ['abc'.encode('UTF-16LE'), 'é'.encode('UTF-16BE')],
                string_map: { 'k'.encode('ISO-8859-1') => 'v'.encode('Shift_JIS') } }
            },
            'an Integer for a double, a Float for an integer' => -> { { double: 1, integer: 2.5 } },
            'a String for an integer, a BigDecimal for a double' => -> { { integer: '3', double: BigDecimal('1.25') } },
            'a String for a boolean, an Integer for a timestamp' => -> { { boolean: 'yes', timestamp: 5 } },
            'nil list elements and map values' => -> { { string_list: ['a', nil], string_map: { 'k' => nil } } },
            'map keys that are Symbols, BINARY Strings and Integers' => lambda {
              { string_map: { k: 'a', "\xfe".b => 'b', 1 => 'c' } }
            }
          }],
          'params the fast path hands to the original code, with the same result' => [:same_result, {
            'a Set for a list, an Array of pairs for a map' => -> { { string_list: Set['a'], string_map: [%w[k v]] } },
            'an IO for a blob' => -> { { blob: StringIO.new('io bytes') } },
            'an IO for a list' => -> { { string_list: StringIO.new("a\nb\n") } },
            'a member as Symbol and String' => -> { { string: 'a', 'string' => 'b' } },
            'a member with a location_name as Symbol and String' => -> { { renamed: 'a', 'renamed' => 'b', integer: 1 } },
            'a member as String, then Symbol' => -> { { integer: 1, 'renamed' => 'b', renamed: 'a' } },
            'a member as Symbol with nil, then String' => -> { { renamed: nil, 'renamed' => 'b' } },
            'a member as Symbol and BINARY String' => -> { { renamed: 'a', 'renamed'.b => 'b' } },
            'a member as two String keys of a compare_by_identity structure Hash' => lambda {
              {}.compare_by_identity.tap { |h| h[+'renamed'] = 'a'; h[+'renamed'] = 'b' }
            },
            'two equal String keys of a compare_by_identity map' => lambda {
              { string_map: {}.compare_by_identity.tap { |h| h[+'k'] = 'a'; h[+'k'] = 'b' } }
            },
            'an IO blob before a member as Symbol and String' => lambda {
              { blob: StringIO.new('payload'), renamed: 'a', 'renamed' => 'b' }
            },
            'a nested IO blob before a member as Symbol and String' => lambda {
              { child: { blob: StringIO.new('payload') }, string: 'a', 'string' => 'b' }
            },
            'an unencodable value overwritten by its String twin' => lambda {
              { string: { 'x' => Set['a'] }, 'string' => 'ok' }
            }
          }],
          'params the original rejects, so the fast path raises the same error' => [:same_error, {
            'a frozen String for a blob' => -> { { blob: 'frozen' } },
            'non-UTF-8 strings with invalid bytes' => lambda {
              { string: "a\xffb".dup.force_encoding('US-ASCII'), string_list: ['abc'.encode('UTF-16LE')],
                string_map: { "caf\xe9".dup.force_encoding('ISO-8859-1') => 'v' } }
            },
            'a nil element in a list of structures' => -> { { children: [nil, { string: 'x' }] } },
            'a non-Symbol, non-String key with a nil value' => -> { { string: 'x', 1 => nil } },
            'a non-Symbol, non-String key with a value' => -> { { 1 => 'x' } },
            'an IO for a structure' => -> { { child: StringIO.new('x') } },
            'an unencodable value before a value that fails to format' => -> { { boolean: Set['a'], child: 'x' } }
          }]
        }.each do |group, (expectation, cases)|
          context(group) do
            cases.each do |name, params|
              it("matches for #{name}") { expect_parity(params, expectation) }
            end
          end
        end
      end

      # Each case in rpcv2-parity-parse-tests.json has CBOR diagnostic notation for its input, and the
      # original's result (structs as their non-nil members, unions with their __class) or error class.
      describe Parser do
        # Hash equality ignores order, so compare containers as ordered pairs.
        def ordered(value)
          case value
          when Struct then [value.class.name, value.each_pair.map { |k, v| [k, ordered(v)] }]
          when Hash then [:hash, value.map { |k, v| [k, ordered(v)] }]
          when Array then value.map { |v| ordered(v) }
          else value
          end
        end

        def plain(value)
          case value
          when Aws::Structure::Union
            { '__class' => value.class.name.split('::').last }.merge(plain_members(value))
          when Struct then plain_members(value)
          when Hash then value.to_h { |k, v| [k, plain(v)] }
          when Array then value.map { |v| plain(v) }
          when Symbol then value.to_s
          else value
          end
        end

        def plain_members(struct)
          struct.each_pair.reject { |_, v| v.nil? }.to_h { |k, v| [k.to_s, plain(v)] }
        end

        JSON.load_file(File.expand_path('rpcv2-parity-parse-tests.json', __dir__)).each do |test|
          it("matches for #{test['description']}") do
            bytes = [test['input']].pack('H*')
            parser = Parser.new(output, query_compatible: test.fetch('queryCompatible', false))
            old = outcome { parser.send(:parse_ref, output, RpcV2.decode(bytes.dup), nil) }
            new = outcome { parser.parse(bytes.dup) }
            expect(ordered(new)).to eq(ordered(old))

            if test.key?('error')
              expect(new[0..1]).to eq([:error, Object.const_get(test['error'])])
            else
              expect(new[0]).to eq(:ok)
              expect(ordered(plain(new[1]))).to eq(ordered(test['expect']))
            end
          end
        end
      end
    end
  end
end
