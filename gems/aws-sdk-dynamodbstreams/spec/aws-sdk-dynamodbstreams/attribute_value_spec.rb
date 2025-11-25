# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module DynamoDBStreams
    describe AttributeValue do
      let(:value) { AttributeValue.new }

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
          very_small = "0.#{'0' * 100}1"
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
