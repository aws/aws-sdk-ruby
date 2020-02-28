require_relative '../../../spec_helper'
require_relative '../../../support/retry_errors_helper'

module Aws
  module Plugins
    describe Retries::ClientRateLimiter do
      let(:client_rate_limiter) { Retries::ClientRateLimiter.new }

      let(:mutex) { client_rate_limiter.instance_variable_get(:@mutex) }

      ######
      # Cubic Calculator tests
      #  Inspired by: https://github.com/jamesls/botocore/blob/f6bec32a13d6b45d29dc054726edd3c1cdf99b26/tests/unit/retries/test_throttling.py
      it 'sets the time window correctly from max rate' do
        client_rate_limiter.instance_variable_set(:@last_max_rate, 10)
        client_rate_limiter.send(:calculate_time_window)
        expect(client_rate_limiter.instance_variable_get(:@time_window))
          .to be_within(0.1).of(1.9)
      end

      it 'decreases rate by beta when throttled' do
        rate_when_throttled = 8
        new_rate = client_rate_limiter.send(
          :cubic_throttle, rate_when_throttled
        )
        expect(new_rate).to eq(rate_when_throttled * 0.7)
      end

      it 'should match beta decrease' do
        stub_const('Aws::Plugins::Retries::ClientRateLimiter::BETA', 0.6)
        client_rate_limiter.instance_variable_set(:@last_max_rate, 10)

        new_rate = client_rate_limiter.send(:cubic_throttle, 10)
        client_rate_limiter.instance_variable_set(:@last_throttle_time, 1)
        client_rate_limiter.send(:calculate_time_window)
        expect(new_rate).to eq(6.0)

        new_rate = client_rate_limiter.send(:cubic_success, 1)
        expect(new_rate).to be_within(0.1).of(6.0)
      end

      #######
      # Rate Clocker tests
      # Inspired by: https://github.com/jamesls/botocore/blob/f6bec32a13d6b45d29dc054726edd3c1cdf99b26/tests/unit/retries/test_adaptive.py#L91
      it 'updates rate if after bucket range' do
        client_rate_limiter.instance_variable_set(:@last_tx_rate_bucket, 0)
        allow(Util).to receive(:monotonic_seconds).and_return(1)

        client_rate_limiter.send(:update_measured_rate)
        # This should be 1 * 0.8 + 0 * 0.2, or just 0.8
        expect(client_rate_limiter.instance_variable_get(:@measured_tx_rate))
          .to be_within(0.1).of(0.8)
      end

      it 'can measure a constant rate' do
        client_rate_limiter.instance_variable_set(:@last_tx_rate_bucket, 0)

        # send a constant 2 TPS
        (1..8).each do |t|
          allow(Util).to receive(:monotonic_seconds).and_return(t / 2.0)
          client_rate_limiter.send(:update_measured_rate)
        end

        expect(client_rate_limiter.instance_variable_get(:@measured_tx_rate))
          .to be_within(0.1).of(2.0)

        # if we now wait 10 seconds (0.1 TPS)
        # our rate is somewhere between 2 TPS and 0.1 TPS
        allow(Util).to receive(:monotonic_seconds).and_return(14)
        client_rate_limiter.send(:update_measured_rate)
        rate = client_rate_limiter.instance_variable_get(:@measured_tx_rate)
        expect(rate).to be_between(0.1, 2)
      end

      #######
      # Token Bucket Tests
      # Inspired by: https://github.com/jamesls/botocore/blob/f6bec32a13d6b45d29dc054726edd3c1cdf99b26/tests/unit/retries/test_bucket.py
      it 'can acquire amount' do
        client_rate_limiter.instance_variable_set(:@enabled, true)
        allow(Util).to receive(:monotonic_seconds).and_return(0)
        client_rate_limiter.send(:token_bucket_update_rate, 10)

        # Request tokens every second which is well below max 10 TPS fill rate
        expect(mutex).not_to receive(:sleep)
        (1..5).each do |t|
          allow(Util).to receive(:monotonic_seconds).and_return(t)
          client_rate_limiter.token_bucket_acquire(1)
        end
      end

      it 'waits until capacity is available to acquire a token' do
        client_rate_limiter.instance_variable_set(:@enabled, true)
        allow(Util).to receive(:monotonic_seconds).and_return(0)
        client_rate_limiter.send(:token_bucket_update_rate, 10)
        client_rate_limiter.instance_variable_set(:@max_capacity, 100)

        expect(mutex).to receive(:sleep).with(10) # 100 / fill_rate = 10
        allow(Util).to receive(:monotonic_seconds).and_return(0, 10)

        client_rate_limiter.token_bucket_acquire(100, true)
      end

      it 'raises CapacityNotAvailableError when it fails to acquire a token' do
        client_rate_limiter.instance_variable_set(:@enabled, true)
        allow(Util).to receive(:monotonic_seconds).and_return(0)
        client_rate_limiter.send(:token_bucket_update_rate, 10)

        expect { client_rate_limiter.token_bucket_acquire(100, false) }
          .to raise_error(Aws::Errors::RetryCapacityNotAvailableError)
      end

      it 'can retrieve at max send rate' do
        client_rate_limiter.instance_variable_set(:@enabled, true)
        allow(Util).to receive(:monotonic_seconds).and_return(0)
        client_rate_limiter.send(:token_bucket_update_rate, 10)

        # Request a new token every 100ms (10 TPS) for 2 seconds.
        expect(mutex).not_to receive(:sleep)
        (0..20).each do |t|
          allow(Util).to receive(:monotonic_seconds).and_return(1 + 0.1 * t)
          client_rate_limiter.token_bucket_acquire(1)
        end
      end

      it 'wont set rate below the min fill rate' do
        client_rate_limiter.instance_variable_set(:@enabled, true)
        client_rate_limiter.send(:token_bucket_update_rate, 0.1)

        expect(client_rate_limiter.instance_variable_get(:@fill_rate))
          .to eq(Retries::ClientRateLimiter::MIN_FILL_RATE)
      end

      it 'acquires a token only when enabled' do
        client_rate_limiter.instance_variable_set(:@enabled, false)
        expect(mutex).not_to receive(:sleep)
        client_rate_limiter.token_bucket_acquire(1)
      end

      it 'enables the token bucket on throttling errors' do
        client_rate_limiter.update_sending_rate(true)
        expect(client_rate_limiter.instance_variable_get(:@enabled)).to be(true)
      end

      context 'thread safety' do
        it 'can change max rate while blocking' do
          # This isn't a stress test - we just verify we can change the
          # rate while we acquire a token
          client_rate_limiter.instance_variable_set(:@enabled, true)
          # Set a rate to 0.5 (the min rate).  This means it will take
          # 2 seconds to acquire a single token
          client_rate_limiter.send(:token_bucket_update_rate, 0.5)

          # Start a thread to acquire a token
          test_thread = Thread.new do
            client_rate_limiter.token_bucket_acquire(1)
          end

          # ensure the new thread has a chance to start
          sleep(0.1)

          # Now in the main thread, update the rate to something really quick.
          # This should let us get a token back very quickly (~0.01 seconds)
          mutex.synchronize do
            client_rate_limiter.send(:token_bucket_update_rate, 100)
          end
          start_time = Aws::Util.monotonic_seconds
          client_rate_limiter.token_bucket_acquire(1)
          main_thread_time = Aws::Util.monotonic_seconds - start_time

          test_thread.join # wait for the first thread to finish
          test_thread_time = Aws::Util.monotonic_seconds - start_time

          expect(main_thread_time).to be < 0.1
          expect(test_thread_time).to be > 1.0
        end

        it 'doesnt starve any threads during a stress test' do
          client_rate_limiter.instance_variable_set(:@enabled, true)
          client_rate_limiter.send(:token_bucket_update_rate, 500)

          shutdown_threads = false
          threads = []
          n_test_threads = 5
          acquisitions = Array.new(n_test_threads, 0)

          n_test_threads.times do |i|
            threads << Thread.new do
              until shutdown_threads
                client_rate_limiter.token_bucket_acquire(1)
                acquisitions[i] += 1
              end
            end
          end

          # run a stress test for a few seconds.
          # Increase this to stress test more locally
          sleep(3)
          shutdown_threads = true
          threads.each(&:join)

          # We can't really rely on any guarantees about evenly distributing
          # thread acquisitions. But we can sanity check that our implementation
          # isn't drastically starving a thread. Check that no thread has
          # less than 20% of mean acquisitions
          mean = acquisitions.reduce(:+).to_f / acquisitions.size
          expect(acquisitions.all? { |x| x > 0.2 * mean }).to be true
        end
      end
    end
  end
end
