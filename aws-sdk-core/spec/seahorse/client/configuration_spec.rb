require 'spec_helper'

module Seahorse
  module Client
    describe Configuration do

      let(:config) { Configuration.new }

      describe '#add_option' do

        it 'defines a getter' do
          config.add_option(:name)
          expect(config.build!).to respond_to(:name)
        end

        it 'defaults the value to nil' do
          config.add_option(:name)
          expect(config.build!.name).to be(nil)
        end

        it 'accepts a default value' do
          config.add_option(:name, 'John Doe')
          expect(config.build!.name).to eq('John Doe')
        end

        it 'accepts blocks' do
          config.add_option(:name) { 'John Doe' }
          expect(config.build!.name).to eq('John Doe')
        end

        it 'accepts blocks with an arity of 1, yielding self' do
          config.add_option(:name) { 'John Doe' }
          config.add_option(:username) { |cfg| cfg.name.gsub(/\W+/, '').downcase }
          expect(config.build!.name).to eq('John Doe')
          expect(config.build!.username).to eq('johndoe')
        end

        it 'blocks can rely on other blocks' do
          config.add_option(:base) { 2 }
          config.add_option(:next) { |cfg| cfg.base * 2 }
          config.add_option(:last) { |cfg| cfg.next * 3 }
          cfg = config.build!
          expect(cfg.last).to eq(12)
          expect(cfg.next).to eq(4)
          expect(cfg.base).to eq(2)
        end

        it 'blocks work with supplied values' do
          config.add_option(:base) { 2 }
          config.add_option(:next) { |cfg| cfg.base * 2 }
          config.add_option(:last) { |cfg| cfg.next * 3 }
          cfg = config.build!(base: 1, next: 1)
          expect(cfg.base).to eq(1)
          expect(cfg.next).to eq(1)
          expect(cfg.last).to eq(3)
        end

        it 'replaces previous default values when called twice' do
          config.add_option(:name, 'abc')
          config.add_option(:name, 'xyz')
          expect(config.build!.name).to eq('xyz')
        end

        it 'returns self so it can be chained' do
          c = config.add_option(:name).add_option(:color)
          expect(c).to be(config)
          expect(c.build!.members).to eq([:color, :name])
        end

      end

      describe '#build!' do

        it 'returns a Struct' do
          expect(config.add_option(:opt).build!).to be_kind_of(Struct)
        end

        it 'accepts a hash of options' do
          config.add_option(:size, 'default')
          config.add_option(:color, 'default')
          cfg = config.build!(size: 'large', color: 'red')
          expect(cfg.size).to eq('large')
          expect(cfg.color).to eq('red')
        end

        it 'raises an argument error for uknown options' do
          config.add_option(:known)
          expect {
            config.build!(unknown: 'option')
          }.to raise_error(ArgumentError, /invalid configuration option/)
        end

        it 'resolves nested dependent options' do
          config.add_option(:base, 1)
          config.add_option(:top) { |cfg| cfg.middle }
          config.add_option(:middle) { |cfg| cfg.base }
          expect(config.build!.top).to eq(1)
        end

        it 'does not resolve procs passed as args' do
          value = lambda {}
          config.add_option(:proc, value)
          expect(config.build!.proc).to be(value)
        end

        it 'resolves defaults in LIFO order until a non-nil value is found' do
          # default cost is 10
          config.add_option(:cost) { 10 }

          # increase cost for red items
          config.add_option(:cost) { |cfg| cfg.color == 'red' ? 9001 : nil }

          config.add_option(:color)

          expect(config.build!(color: 'green').cost).to eq(10)
          expect(config.build!(color: 'red').cost).to eq(9001) # over 9000!
        end

      end
    end
  end
end
