require 'spec_helper'

module Seahorse
  module Client
    describe HandlerList do

      let(:handlers) { HandlerList.new }

      it 'is enumerable' do
        expect(handlers).to be_kind_of(Enumerable)
      end

      describe '#add' do

        it 'adds a handler' do
          handler = Class.new
          handlers.add(handler)
          expect(handlers.to_a).to eq([handler])
        end

        it 'handlers added first have a higher priority' do
          handler1 = Class.new
          handler2 = Class.new
          handlers.add(handler1)
          handlers.add(handler2)
          expect(handlers.to_a).to eq([handler2, handler1])
        end

        it 'returns the handler class' do
          handler_class = Class.new(Handler)
          expect(handlers.add(handler_class)).to be(handler_class)
        end

        describe ':step' do

          it 'sorts handlers by step priority order' do
            handlers.add('validate', step: :validate)
            handlers.add('build', step: :build)
            handlers.add('sign', step: :sign)
            handlers.add('send', step: :send)
            expect(handlers.to_a).to eq(%w(send sign build validate))
          end

          it 'defaults step to :build' do
            handlers.add('validate', step: :validate)
            handlers.add('build')
            handlers.add('sign', step: :sign)
            expect(handlers.to_a).to eq(['sign', 'build', 'validate'])
          end

          it 'accepts multiple handlers with the same step' do
            handlers.add('h1', step: :validate)
            handlers.add('h2', step: :validate)
            handlers.add('h3', step: :build)
            handlers.add('h4', step: :build)
            expect(handlers.to_a).to eq(%w(h4 h3 h2 h1))
          end

        end

        describe ':priority' do

          it 'accepts a priority' do
            handlers.add('medium', priority: 50)
            handlers.add('high', priority: 80)
            handlers.add('low', priority: 20)
            expect(handlers.to_a).to eq(%w(low medium high))
          end

          it 'sorts handler with the same priority in FIFO order' do
            handlers.add('a', priority: 20, step: :sign)
            handlers.add('b', priority: 20, step: :sign)
            handlers.add('c', priority: 20, step: :sign)
            handlers.add('m', priority: 20, step: :build)
            handlers.add('n', priority: 20, step: :build)
            handlers.add('o', priority: 20, step: :build)
            handlers.add('x', priority: 20, step: :validate)
            handlers.add('y', priority: 20, step: :validate)
            handlers.add('z', priority: 20, step: :validate)
            handlers.add('-', step: :send)
            expect(handlers.to_a).to eq(%w(- c b a o n m z y x))
          end

        end

        describe 'errors' do

          it 'raises an error if :step is not valid' do
            msg = "invalid :step `:bogus', must be one of :validate, :build, "
            msg << ":sign or :send"
            expect {
              handlers.add('handler', step: :bogus)
            }.to raise_error(ArgumentError, msg)
          end

          it 'raises an error if :priority is less than 0' do
            msg = "invalid :priority `-1', must be between 0 and 99"
            expect {
              handlers.add('handler', priority: -1)
            }.to raise_error(ArgumentError, msg)
          end

          it 'raises an error if :priority is greater than 99' do
            msg = "invalid :priority `100', must be between 0 and 99"
            expect {
              handlers.add('handler', priority: 100)
            }.to raise_error(ArgumentError, msg)
          end

        end

        describe ':step => :send' do

          it 'only keeps the latest send handler' do
            handlers.add('handler1', step: :send)
            handlers.add('handler2', step: :send)
            handlers.add('handler3', step: :send)
            expect(handlers.to_a).to eq(['handler3'])
          end

          it 'ignores :priority when adding :send handlers' do
            handlers.add('handler1', step: :send, priority: 80)
            handlers.add('handler2', step: :send, priority: 50)
            handlers.add('handler3', step: :send, priority: 20)
            expect(handlers.to_a).to eq(['handler3'])
          end

        end

        describe ':operations' do

          it 'adds a handler that is not enumerated by default' do
            handlers.add('handler', operations: ['operation_name'])
            expect(handlers.to_a).to eq([])
          end

          it 'adds a handler that is enumerated for a given :operation' do
            handlers.add('handler1', operations: ['operation1'])
            handlers.add('handler2', operations: ['operation1'])
            handlers.add('handler3', operations: ['operation2'])
            expect(handlers.for('operation1').to_a).to eq(%w(handler2 handler1))
          end

        end

      end

      describe '#copy_from' do

        it 'copies handlers from one list to another' do
          handlers.add('send', step: :send)
          handlers.add('handler')
          handlers2 = HandlerList.new
          handlers2.copy_from(handlers)
          expect(handlers2.to_a).to eq(handlers.to_a)
        end

      end

      describe '#for' do

        it 'returns a handler list' do
          expect(handlers.for('operation')).to be_kind_of(HandlerList)
        end

        it 'returns a different handler list' do
          expect(handlers.for('operation')).to_not be(handlers)
        end

        it 'copies the send handler' do
          handlers.add('send', step: :send)
          expect(handlers.for('operation').to_a).to eq(['send'])
        end

        it 'copies the common handlers' do
          handlers.add('validate', step: :validate)
          handlers.add('build', step: :build)
          handlers.add('sign', step: :sign)
          expect(handlers.for('operation').to_a).to eq(%w(sign build validate))
        end

        it 'deep copies handlers' do
          handlers.add('handler1')
          handlers2 = handlers.for('operation')
          handlers2.add('handler2')
          expect(handlers.to_a).to eq(['handler1'])
          expect(handlers2.to_a).to eq(['handler2', 'handler1'])
        end

        it 'copies operation handlers with the given name' do
          handlers.add('handler', operations: ['operation'])
          expect(handlers.for('operation').to_a).to eq(['handler'])
        end

        it 'does not copy operation handlers that have a different name' do
          handlers.add('handler', operations: ['operation'])
          expect(handlers.for('operation2').to_a).to eq([])
        end

        it 'merges operation and common handlers preserving priority' do
          handlers.add('high', priority: 30, operation: 'operation')
          handlers.add('medium', priority: 20, operation: 'operation')
          handlers.add('low', priority: 10)
          expect(handlers.for('operation').to_a).to eq(%w(low medium high))
        end

        it 'accpets operation names as symbols' do
          handlers.add('handler1', operations: [:operation])
          handlers.add('handler2', operations: ['operation'])
          expect(handlers.for('operation').to_a).to eq(%w(handler2 handler1))
          expect(handlers.for(:operation).to_a).to eq(%w(handler2 handler1))
        end

      end

      describe '#to_stack' do

        it 'constructs a handler stack' do
          handler = Handler
          expect(handler).to receive(:new).with(nil).and_return(1)
          expect(handler).to receive(:new).with(1).and_return(2)
          expect(handler).to receive(:new).with(2).and_return(3)
          handlers.add(handler)
          handlers.add(handler)
          handlers.add(handler)
          expect(handlers.to_stack).to eq(3)
        end

        it 'does not construct handlers that are not classes' do
          handler1 = double('handler1')
          handler2 = double('handler2')
          expect(handler2).to receive(:handler=).with(nil)
          expect(handler1).to receive(:handler=).with(handler2)
          handlers.add(handler1)
          handlers.add(handler2)
          handlers.to_stack
        end

      end

    end
  end
end
