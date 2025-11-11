# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module DynamoDB
    describe AttributeValue do
      let(:value) { AttributeValue.new }

      describe '#marshal' do
        it 'converts hashes to :m (map)' do
          formatted = value.marshal(foo: 'bar', abc: 'mno')
          expect(formatted).to eq(
            m: {
              'foo' => { s: 'bar' },
              'abc' => { s: 'mno' }
            }
          )
        end

        it 'converts empty hashes to :m (empty map)' do
          formatted = value.marshal({})
          expect(formatted).to eq(m: {})
        end

        it 'converts arrays to :l (list)' do
          formatted = value.marshal(%w[abc mno])
          expect(formatted).to eq(
            l: [
              { s: 'abc' },
              { s: 'mno' }
            ]
          )
        end

        it 'converts empty arrays to :l (empty list)' do
          formatted = value.marshal([])
          expect(formatted).to eq(l: [])
        end

        it 'converts IO objects to :b (binary)' do
          io = StringIO.new('bar')
          formatted = value.marshal(foo: io)
          expect(formatted[:m]['foo'][:b].read).to eq('bar')
        end

        it 'directly converts StringIO objects to :b (binary)' do
          io = StringIO.new('binary data')
          formatted = value.marshal(io)
          expect(formatted[:b]).to eq(io)
        end

        it 'converts string sets to :ss (string set)' do
          formatted = value.marshal(Set.new(%w[abc mno]))
          expect(formatted).to eq(ss: %w[abc mno])
        end

        it 'converts symbol sets to :ss (string set)' do
          formatted = value.marshal(Set.new(%i[abc mno]))
          expect(formatted).to eq(ss: %w[abc mno])
        end

        it 'converts empty sets to :ss (string set)' do
          formatted = value.marshal(Set.new)
          expect(formatted).to eq(ss: [])
        end

        it 'converts objects sets responding to #to_str to :ss (string set)' do
          stringy_class = Class.new do
            attr_reader :val
            alias_method :to_str, :val

            def initialize(val)
              @val = val
            end
          end
          set = Set.new([stringy_class.new('abc'), stringy_class.new('mno')])
          formatted = value.marshal(set)
          expect(formatted).to eq(ss: %w[abc mno])
        end

        it 'converts numeric sets to :ns (number set)' do
          formatted = value.marshal(Set.new([123, 456]))
          expect(formatted).to eq(ns: %w[123 456])
        end

        it 'converts binary sets to :bs (binary set)' do
          io_obj = StringIO.new('data')
          formatted = value.marshal(Set.new([io_obj]))
          expect(formatted).to eq(bs: [io_obj])
        end

        it 'converts sets with multiple binary objects' do
          io1 = StringIO.new('data1')
          io2 = StringIO.new('data2')
          formatted = value.marshal(Set.new([io1, io2]))
          expect(formatted[:bs]).to contain_exactly(io1, io2)
        end

        it 'converts numerics to :n (number)' do
          # supports integers, floats, and big decimals
          expect(value.marshal(123)).to eq(n: '123')
          expect(value.marshal(12.34)).to eq(n: '12.34')
          big_decimal_value = value.marshal(BigDecimal('0.1E125'))
          expect(big_decimal_value.keys).to eq([:n])
          expect(big_decimal_value[:n]).to match(/0.1E125/i)
        end

        it 'converts strings to :s' do
          expect(value.marshal('abc')).to eq(s: 'abc')
        end

        it 'converts symbol to :s' do
          expect(value.marshal(:abc)).to eq(s: 'abc')
        end

        it 'converts objects responding to #to_str to :s' do
          obj = Class.new { def to_str = 'abc' }.new
          expect(value.marshal(obj)).to eq(s: 'abc')
        end

        it 'converts objects responding to #to_h to :m (map)' do
          obj = Class.new { def to_h = { foo: 'bar', abc: 'mno' } }.new
          formatted = value.marshal(obj)
          expect(formatted).to eq(
            m: {
              'foo' => { s: 'bar' },
              'abc' => { s: 'mno' }
            }
          )
        end

        it 'converts booleans :bool' do
          expect(value.marshal(true)).to eq(bool: true)
          expect(value.marshal(false)).to eq(bool: false)
        end

        it 'converts nil to :null' do
          expect(value.marshal(nil)).to eq(null: true)
        end

        it 'recursively converted mixed types' do
          formatted = value.marshal(
            {
              name: { first: 'John', last: 'Doe' },
              age: 40,
              married: false,
              hobbies: Set.new(%w[scuba hiking]),
              parents: [
                {
                  name: { first: 'John Sr.', last: 'Doe' },
                  age: 70
                },
                {
                  name: { first: 'Jane', last: 'Doe' },
                  age: nil
                }
              ],
              scores: [4.5, 5, 3.9, nil, 'perfect']
            }
          )
          expect(formatted).to eq(
            {
              m: {
                'name' => {
                  m: {
                    'first' => { s: 'John' },
                    'last' => { s: 'Doe' }
                  }
                },
                'age' => { n: '40' },
                'married' => { bool: false },
                'hobbies' => { ss: %w[scuba hiking] },
                'parents' => { l:
                  [
                    {
                      m: {
                        'name' => { m: {
                          'first' => { s: 'John Sr.' },
                          'last' => { s: 'Doe' }
                        } },
                        'age' => { n: '70' }
                      }
                    },
                    {
                      m: {
                        'name' => { m: {
                          'first' => { s: 'Jane' },
                          'last' => { s: 'Doe' }
                        } },
                        'age' => { null: true }
                      }
                    }
                  ] },
                'scores' => {
                  l: [
                    { n: '4.5' },
                    { n: '5' },
                    { n: '3.9' },
                    { null: true },
                    { s: 'perfect' }
                  ]
                }
              }
            }
          )
        end

        it 'raises an argument error for unhandled types' do
          expect do
            value.marshal(Time.now)
          end.to raise_error(ArgumentError, /unsupported type/)
        end

        it 'handles mixed types in sets based on the first element' do
          # When first element is a string, all elements are converted to strings
          set1 = Set.new(['string', 123])
          expect(value.marshal(set1)).to eq(ss: %w[string 123])

          # When first element is a number, attempting to call to_s on non-number elements
          set2 = Set.new([123, 'string'])
          expect(value.marshal(set2)).to eq(ns: %w[123 string])
        end

        it 'raises an error for unsupported set element types' do
          set_with_time = Set.new([Time.now])
          expect do
            value.marshal(set_with_time)
          end.to raise_error(ArgumentError, /set types only support String, Numeric, or IO objects/)
        end
      end

      describe '#unmarshal' do
        it 'converts :m to a hash with string keys (not symbols)' do
          expect(
            value.unmarshal(
              m: {
                'foo' => { s: 'bar' },
                'abc' => { s: 'mno' }
              }
            )
          ).to eq('foo' => 'bar', 'abc' => 'mno')
        end

        it 'converts :l to an array' do
          expect(
            value.unmarshal(
              l: [
                { s: 'abc' },
                { s: 'mno' }
              ]
            )
          ).to eq(%w[abc mno])
        end

        it 'converts :ss to a set of strings' do
          expect(value.unmarshal(ss: %w[abc mno])).to eq(Set.new(%w[abc mno]))
        end

        it 'converts :ns to a set of big decimals (to preserve precision)' do
          expect(value.unmarshal(ns: %w[123 456])).to eq(
            Set.new([BigDecimal('123'), BigDecimal('456')])
          )
        end

        it 'converts :bs to a set of binary values' do
          simple = value.unmarshal(bs: ['data'])
          expect(simple.count).to eq(1)
          expect(simple.first).to be_kind_of(StringIO)
          expect(simple.first.string).to eq('data')
        end

        it 'converts :b to a StringIO' do
          binary_data = 'binary content'
          result = value.unmarshal(b: binary_data)
          expect(result).to be_a(StringIO)
          expect(result.string).to eq(binary_data)
        end

        it 'converts multiple binary values in :bs' do
          multiple = value.unmarshal(bs: %w[data1 data2 data3])
          expect(multiple.count).to eq(3)
          binary_contents = multiple.map(&:string)
          expect(binary_contents).to contain_exactly('data1', 'data2', 'data3')
        end

        it 'converts :n to big decimals' do
          # supports integers, floats, and big decimals
          expect(value.unmarshal(n: '123')).to eq(BigDecimal('123'))
          expect(value.unmarshal(n: '12.34')).to eq(BigDecimal('12.34'))
          expect(value.unmarshal(n: '0.1E125')).to eq(BigDecimal('0.1E125'))
        end

        it 'converts :s to a string' do
          expect(value.unmarshal(s: 'abc')).to eq('abc')
        end

        it 'converts :bool to booleans true or false' do
          expect(value.unmarshal(bool: true)).to be(true)
          expect(value.unmarshal(bool: false)).to be(false)
        end

        it 'converts :null to nil' do
          expect(value.unmarshal(null: true)).to be(nil)
        end

        it 'handles empty structures when unmarshalling' do
          expect(value.unmarshal(m: {})).to eq({})
          expect(value.unmarshal(l: [])).to eq([])
          expect(value.unmarshal(ss: [])).to eq(Set.new)
          expect(value.unmarshal(ns: [])).to eq(Set.new)
          expect(value.unmarshal(bs: [])).to eq(Set.new)
        end

        it 'can unmarshal from Struct objects' do
          # Create a struct similar to what AWS SDK might use
          attr_struct = Struct.new(:s, :n, :b, :m, :l, :null, :bool, :ss, :ns, :bs)

          # Test string attribute
          expect(value.unmarshal(attr_struct.new('test'))).to eq('test')

          # Test numeric attribute
          expect(value.unmarshal(attr_struct.new(nil, '123'))).to eq(BigDecimal('123'))

          # Test null attribute
          expect(value.unmarshal(attr_struct.new(nil, nil, nil, nil, nil, true))).to be_nil

          # Test boolean attribute
          expect(value.unmarshal(attr_struct.new(nil, nil, nil, nil, nil, nil, true))).to be(true)
        end

        it 'handles extreme numeric values' do
          very_large = '9' * 100
          very_small = '0.' + ('0' * 100) + '1'

          expect(value.unmarshal(n: very_large)).to eq(BigDecimal(very_large))
          expect(value.unmarshal(n: very_small)).to eq(BigDecimal(very_small))
        end

        it 'recursively converted mixed types' do
          expect(
            value.unmarshal(
              {
                m: {
                  'name' => {
                    m: {
                      'first' => { s: 'John' },
                      'last' => { s: 'Doe' }
                    }
                  },
                  'age' => { n: '40' },
                  'married' => { bool: false },
                  'hobbies' => { ss: %w[scuba hiking] },
                  'parents' => { l:
                    [
                      {
                        m: {
                          'name' => { m: {
                            'first' => { s: 'John Sr.' },
                            'last' => { s: 'Doe' }
                          } },
                          'age' => { n: '70' }
                        }
                      },
                      {
                        m: {
                          'name' => { m: {
                            'first' => { s: 'Jane' },
                            'last' => { s: 'Doe' }
                          } },
                          'age' => { null: true }
                        }
                      }
                    ] },
                  'scores' => {
                    l: [
                      { n: '4.5' },
                      { n: '5' },
                      { n: '3.9' },
                      { null: true },
                      { s: 'perfect' }
                    ]
                  }
                }
              }
            )
          ).to eq(
            'name' => { 'first' => 'John', 'last' => 'Doe' },
            'age' => 40,
            'married' => false,
            'hobbies' => Set.new(%w[scuba hiking]),
            'parents' => [
              {
                'name' => { 'first' => 'John Sr.', 'last' => 'Doe' },
                'age' => 70
              },
              {
                'name' => { 'first' => 'Jane', 'last' => 'Doe' },
                'age' => nil
              }
            ],
            'scores' => [
              BigDecimal('4.5'),
              BigDecimal('5'),
              BigDecimal('3.9'),
              nil,
              'perfect'
            ]
          )
        end

        it 'raises an argument error for unhandled types' do
          expect do
            value.unmarshal(year: '2006')
          end.to raise_error(ArgumentError, /unhandled type/)
        end
      end
    end
  end
end
