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
          expect { subject.post }.to raise_error(DefaultExecutor::RejectedExecutionError)
        end
      end

      context 'when the queue is full' do
        let(:executor) { DefaultExecutor.new(max_threads: 1, max_queue: 1) }
        let(:release) { Queue.new }
        let(:errors) { [] }

        # occupies the only worker, then fills the single queue slot
        def fill_queue
          started = Queue.new
          executor.post do
            started << :running
            release.pop
          end
          started.pop
          executor.post {}
        end

        def park_producer
          fill_queue
          producer = Thread.new do
            executor.post {}
          rescue DefaultExecutor::RejectedExecutionError => e
            errors << e
          end
          sleep(0.1)
          raise 'producer did not park' unless producer.status == 'sleep'

          producer
        end

        it 'blocks the caller until a worker frees a slot' do
          fill_queue
          parked = Thread.new { executor.post {} }
          sleep(0.1)
          expect(parked.status).to eq('sleep')

          release << :go
          expect(parked.value).to be(true)
          executor.shutdown
        end

        it 'kill unblocks the producer instead of silently dropping the task' do
          producer = park_producer
          expect(executor.kill).to be(true)
          expect(producer.join(2)).to_not be_nil
          expect(errors.first).to be_a(DefaultExecutor::RejectedExecutionError)
        end

        it 'shutdown does not deadlock while holding the lock' do
          producer = park_producer
          shutdown = Thread.new { executor.shutdown(0.5) }
          expect(shutdown.join(2)).to_not be_nil
          expect(producer.join(2)).to_not be_nil
          expect(errors.first).to be_a(DefaultExecutor::RejectedExecutionError)
        end

        it 'replaces a worker killed by a task so a parked producer is not stranded' do
          # Threads copy this at creation.
          previous = Thread.report_on_exception
          Thread.report_on_exception = false
          ran = Queue.new
          started = Queue.new
          executor.post do
            started << :running
            release.pop
            raise NoMemoryError, 'worker died'
          end
          started.pop
          executor.post { ran << :queued }
          parked = Thread.new { executor.post { ran << :parked } }
          sleep(0.1)
          expect(parked.status).to eq('sleep')

          release << :go
          expect(parked.join(2)).to_not be_nil
          expect([ran.pop, ran.pop]).to contain_exactly(:queued, :parked)
          expect { executor.shutdown(2) }.to raise_error(NoMemoryError, 'worker died')
        ensure
          Thread.report_on_exception = previous
        end
      end

      describe '#shutdown' do
        it 'waits for running tasks to be complete' do
          result = nil
          subject.post { result = true }
          expect(subject.shutdown).to be(true)
          expect(result).to be(true)
        end

        it 'runs remaining tasks and re-raises the error that killed a worker' do
          previous = Thread.report_on_exception
          Thread.report_on_exception = false
          executor = DefaultExecutor.new(max_threads: 1)
          ran = Queue.new
          executor.post { raise NoMemoryError, 'worker died' }
          executor.post { ran << :after }
          # Wait for the replacement so the error can only come from #shutdown, not a join.
          expect(ran.pop).to eq(:after)
          expect { executor.shutdown }.to raise_error(NoMemoryError, 'worker died')
        ensure
          Thread.report_on_exception = previous
        end

        it 'waits for all tasks when a worker dies during shutdown' do
          previous = Thread.report_on_exception
          Thread.report_on_exception = false
          executor = DefaultExecutor.new(max_threads: 1)
          done = Queue.new
          executor.post do
            sleep(0.1)
            raise NoMemoryError, 'worker died'
          end
          # all left for the replacement, which starts after shutdown began joining
          3.times do
            executor.post do
              sleep(0.1)
              done << :queued
            end
          end
          expect { executor.shutdown }.to raise_error(NoMemoryError, 'worker died')
          expect(done.size).to eq(3)
        ensure
          Thread.report_on_exception = previous
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
