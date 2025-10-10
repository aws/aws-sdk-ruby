# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module S3
    describe DefaultExecutor do
      let(:subject) { DefaultExecutor.new }

      describe '#post' do
        it 'executes a block with arguments' do
          block = double('block')
          expect(block).to receive(:call).with('hello')

          subject.post('hello') { |arg| block.call(arg) }
          sleep 0.01
        end

        it 'returns true when a task is submitted' do
          expect(subject.post('hello') { |_arg| }).to be(true)
        end

        it 'raises when executor is shutdown' do
          subject.shutdown
          expect { subject.post }.to raise_error(RuntimeError)
        end
      end

      describe '#shutdown' do
        it 'waits for running tasks to be complete' do
          result = nil
          subject.post { result = 'done' }
          expect(subject.shutdown).to be(true)
          expect(result).to eq('done')
        end

        it 'kills threads after timeout' do
          result = nil
          subject.post do
            sleep 0.02
            result = 'done'
          end
          expect(subject.shutdown(0.01)).to be(true)
          expect(result).to be_nil
        end
      end

      describe '#kill' do
        it 'stops all threads immediately and returns true' do
          completed = false
          subject.post do
            sleep 0.01
            completed = true
          end
          result = subject.kill

          expect(result).to be(true)
          expect(completed).to be(false)
        end
      end
    end
  end
end
