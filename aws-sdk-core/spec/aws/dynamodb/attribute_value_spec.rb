require 'spec_helper'
require 'bigdecimal'
require 'set'

module Aws
  module DynamoDB
    describe AttributeValue do

      let(:value) { AttributeValue.new }

      describe '#marshal' do

        it 'converts hashes to :m (map)' do
          formatted = value.marshal(foo: 'bar', abc: 'mno')
          expect(formatted).to eq(m: {
            "foo" => { s: 'bar' },
            "abc" => { s: 'mno' },
          })
        end

        it 'converts arrays to :l (list)' do
          formatted = value.marshal(['abc', 'mno'])
          expect(formatted).to eq(l: [
            { s: 'abc' },
            { s: 'mno' },
          ])
        end

        it 'converts IO objects to :b (blob)' do
          io = StringIO.new('bar')
          formatted = value.marshal(foo: io)
          expect(formatted[:m]["foo"][:b].read).to eq('bar')
        end

        it 'converts string sets to :ss (string set)' do
          formatted = value.marshal(Set.new(%w(abc mno)))
          expect(formatted).to eq(ss: %w(abc mno))
        end

        it 'converts numeric sets to :ns (number set)' do
          formatted = value.marshal(Set.new([123, 456]))
          expect(formatted).to eq(ns: %w(123 456))
        end

        it 'converts binary sets to :bs (binary set)' do
          formatted = value.marshal(Set.new([StringIO.new('data')]))
          expect(formatted).to eq(bs: ['data'])
        end

        it 'converts numerics to :n (number)' do
          # supports integers, floats, and big decimals
          expect(value.marshal(123)).to eq(n: '123')
          expect(value.marshal(12.34)).to eq(n: '12.34')
          expect(value.marshal(BigDecimal.new("0.1E125"))).to eq(n: "0.1E125")
        end

        it 'converts strings to :s' do
          expect(value.marshal('abc')).to eq(s: 'abc')
        end

        it 'converts booleans :bool' do
          # supports both true and false
          expect(value.marshal(true)).to eq(bool: true)
          expect(value.marshal(false)).to eq(bool: false)
        end

        it 'converts nil to :null' do
          expect(value.marshal(nil)).to eq(null: true)
        end

        it 'recursively converted mixed types' do
          formatted = value.marshal({
            name: { first: 'John', last: 'Doe' },
            age: 40,
            married: false,
            hobbies: Set.new(%w(scuba hiking)),
            parents: [
              {
                name: { first: 'John Sr.', last: 'Doe' },
                age: 70,
              },
              {
                name: { first: 'Jane', last: 'Doe' },
                age: nil,
              },
            ],
            scores: [4.5, 5, 3.9, nil, 'perfect'],
          })
          expect(formatted).to eq({
            m: {
              "name" => {
                m: {
                  "first" => { s: 'John' },
                  "last" => { s: 'Doe' },
                }
              },
              "age" => { n: "40" },
              "married" => { bool: false },
              "hobbies" => { ss: ['scuba', 'hiking'] },
              "parents" => { l:
                [
                  {
                    m: {
                      "name" => { m: {
                        "first" => { s: 'John Sr.' },
                        "last" => { s: 'Doe' },
                      }},
                      "age" => { n: "70" },
                    }
                  },
                  {
                    m: {
                      "name" => { m: {
                        "first" => { s: 'Jane' },
                        "last" => { s: 'Doe' },
                      }},
                      "age" => { null: true },
                    },
                  }
                ],
              },
              "scores" => {
                l: [
                  { n: '4.5' },
                  { n: '5' },
                  { n: '3.9' },
                  { null: true },
                  { s: 'perfect' },
                ]
              }
            }
          })
        end

        it 'raises an argument error for unhandled types' do
          expect {
            value.marshal(Time.now)
          }.to raise_error(ArgumentError, /unsupported type/)
        end

      end

      describe '#unmarshal' do

        it 'converts :m to a hash with string keys (not symbols)' do
          expect(value.unmarshal(m: {
            "foo" => { s: 'bar' },
            "abc" => { s: 'mno' },
          })).to eq('foo' => 'bar', 'abc' => 'mno')
        end

        it 'converts :l to an array' do
          expect(value.unmarshal(l: [
            { s: 'abc' },
            { s: 'mno' },
          ])).to eq(%w(abc mno))
        end

        it 'converts :ss to a set of strings' do
          expect(value.unmarshal(ss: %w(abc mno))).to eq(Set.new(%w(abc mno)))
        end

        it 'converts :ns to a set of big decimals (to preserve precision)' do
          expect(value.unmarshal(ns: %w(123 456))).to eq(
            Set.new([BigDecimal.new('123'), BigDecimal.new('456')]))
        end

        it 'converts :bs to a set of binary values' do
          simple = value.unmarshal(bs: ['data'])
          expect(simple.count).to eq(1)
          expect(simple.first).to be_kind_of(StringIO)
          expect(simple.first.string).to eq('data')
        end

        it 'converts :n to big decimals' do
          # supports integers, floats, and big decimals
          expect(value.unmarshal(n: '123')).to eq(BigDecimal.new('123'))
          expect(value.unmarshal(n: '12.34')).to eq(BigDecimal.new('12.34'))
          expect(value.unmarshal(n: '0.1E125')).to eq(BigDecimal.new('0.1E125'))
        end

        it 'converts :s to a string' do
          expect(value.unmarshal(s: 'abc')).to eq('abc')
        end

        it 'converts :bool to booleans true or false' do
          # supports both true and false
          expect(value.unmarshal(bool: true)).to be(true)
          expect(value.unmarshal(bool: false)).to be(false)
        end

        it 'converts :null to nil' do
          expect(value.unmarshal(null: true)).to be(nil)
        end

        it 'recursively converted mixed types' do

          expect(value.unmarshal({
            m: {
              "name" => {
                m: {
                  "first" => { s: 'John' },
                  "last" => { s: 'Doe' },
                }
              },
              "age" => { n: "40" },
              "married" => { bool: false },
              "hobbies" => { ss: ['scuba', 'hiking'] },
              "parents" => { l:
                [
                  {
                    m: {
                      "name" => { m: {
                        "first" => { s: 'John Sr.' },
                        "last" => { s: 'Doe' },
                      }},
                      "age" => { n: "70" },
                    }
                  },
                  {
                    m: {
                      "name" => { m: {
                        "first" => { s: 'Jane' },
                        "last" => { s: 'Doe' },
                      }},
                      "age" => { null: true },
                    },
                  }
                ],
              },
              "scores" => {
                l: [
                  { n: '4.5' },
                  { n: '5' },
                  { n: '3.9' },
                  { null: true },
                  { s: 'perfect' },
                ]
              }
            }
          })).to eq(
            'name' =>  { 'first' => 'John', 'last' => 'Doe' },
            'age' => 40,
            'married' => false,
            'hobbies' => Set.new(%w(scuba hiking)),
            'parents' => [
              {
                'name' => { 'first' => 'John Sr.', 'last' => 'Doe' },
                'age' => 70,
              },
              {
                'name' => { 'first' => 'Jane', 'last' => 'Doe' },
                'age' => nil,
              },
            ],
            'scores' => [
              BigDecimal.new('4.5'),
              BigDecimal.new('5'),
              BigDecimal.new('3.9'),
              nil,
              'perfect'
            ]
          )
        end

        it 'raises an argument error for unhandled types' do
          expect {
            value.unmarshal(year: '2006')
          }.to raise_error(ArgumentError, /unhandled type/)
        end

      end
    end
  end
end
