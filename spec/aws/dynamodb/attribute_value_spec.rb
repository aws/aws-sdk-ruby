require 'spec_helper'
require 'bigdecimal'
require 'set'

module Aws
  module DynamoDB
    describe AttributeValue do

      let(:value) { AttributeValue.new }

      describe '#marshal' do

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

        it 'raises an argument error for unhandled types' do
          expect {
            value.marshal(Time.now)
          }.to raise_error(ArgumentError, /unsupported type/)
        end

      end

      describe '#unmarshal' do

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

        it 'raises an argument error for unhandled types' do
          expect {
            value.unmarshal(year: '2006')
          }.to raise_error(ArgumentError, /unhandled type/)
        end

      end
    end
  end
end
