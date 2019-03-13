require_relative '../../spec_helper'

module Seahorse
  module Client
    describe AsyncResponse do

      describe '#context' do

        it 'defaults to a new context' do
          expect(AsyncResponse.new.context).to be_kind_of(RequestContext)
        end

        it 'can be set in the constructor' do
          context = RequestContext.new
          expect(AsyncResponse.new(context: context).context).to be(context)
        end

      end

      describe 'callbacks' do

        let(:http_resp) { Http::AsyncResponse.new }

        let(:response) {
          AsyncResponse.new(context: RequestContext.new(http_response: http_resp))
        }

        describe '#on' do

          it 'triggers the callback when status code matches' do
            http_resp.signal_done(
              headers: [[':status', '200']],
              body: '')
            expect { |b| response.on(200,&b) }.to yield_control
          end

          it 'triggers the callback when status code included' do
            http_resp.signal_done(
              headers: [[':status', '307']],
              body: '')
            expect { |b| response.on(300..599,&b) }.to yield_control
          end

          it 'does not trigger when when a response is not included' do
            http_resp.signal_done(
              headers: [[':status', '300']],
              body: '')
            expect { |b| response.on(200..299,&b) }.not_to yield_control
          end

          it 'returns self' do
            http_resp.signal_done(
              headers: [[':status', '300']],
              body: '')
            expect(response.on(300) { |r| }).to be(response)
          end

        end

      end

      describe 'async' do

        it '#wait on stream mutex to finalize the response' do
          stream = double('stream')
          queue = Queue.new
          mutex = Mutex.new
          condition = ConditionVariable.new

          # mock stream close callback
          signal_thread = Thread.new do
            queue.pop
            mutex.synchronize {
              condition.signal
            }
          end

          a_resp = AsyncResponse.new(context: RequestContext.new, stream: stream, sync_queue: queue, stream_mutex: mutex, close_condition: condition)
          expect(queue).to receive(:<<)
          expect(condition).to receive(:wait)
          a_resp.wait
          Thread.kill(signal_thread)
        end

        it 'use #join! to close stream and finalize response immediately' do
          stream = double('stream')
          allow(stream).to receive(:close)
          a_resp = AsyncResponse.new(context: RequestContext.new, stream: stream, sync_queue: Queue.new)
          expect(stream).to receive(:close)
          a_resp.join!
        end

        it 'raises error by default when finalize response' do
          http_resp = Http::AsyncResponse.new
          a_resp = AsyncResponse.new(
            context: RequestContext.new(
              http_response: http_resp, config: double('config', raise_response_errors: true)
            )
          )

          http_resp.signal_error(RuntimeError.new('error'))
          expect{ a_resp.join! }.to raise_error(RuntimeError)
        end

        it 'can disable error raise when :raise_response_errors false' do
          http_resp = Http::AsyncResponse.new
          a_resp = AsyncResponse.new(
            context:  RequestContext.new(
              http_response: http_resp, config: double('config', raise_response_errors: false)
            )
          )

          http_resp.signal_error(RuntimeError.new('error'))
          expect{ a_resp.join! }.to_not raise_error
        end

      end

    end
  end
end
