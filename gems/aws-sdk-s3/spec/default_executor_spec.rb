# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module S3
    describe DefaultExecutor do
      let(:subject) { DefaultExecutor.new }

      describe '#post' do
        it 'executes a block with arguments' do
          queue = Queue.new
          subject.post('hello') { |arg| queue << arg }
          expect(queue.pop).to eq('hello')
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
          subject.post { result = true }
          expect(subject.shutdown).to be(true)
          expect(result).to be(true)
        end

        it 'kills threads after timeout' do
          started = Queue.new
          counter = 0
          subject.post do
            counter += 1
            started << 'work started'
            sleep 1
            counter += 1
          end
          started.pop
          expect(subject.shutdown(0.01)).to be(true)
          expect(counter).to eq(1)
        end
      end

      describe '#kill' do
        it 'stops all threads immediately and returns true' do
          started = Queue.new
          counter = 0
          subject.post do
            counter += 1
            started << 'work started'
            sleep 1
            counter += 1
          end
          started.pop
          result = subject.kill
          expect(result).to be(true)
          expect(counter).to eq(1)
        end
      end
    end
  end
end
