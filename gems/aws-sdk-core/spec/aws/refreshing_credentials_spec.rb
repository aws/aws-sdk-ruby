# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  # test-only error the fake source raises for a non-recoverable response
  class RefreshingCredentialsTestError < StandardError; end

  describe RefreshingCredentials do
    let(:resolver_class) do
      Class.new do
        include RefreshingCredentials

        attr_reader :source_calls

        # Bypasses the eager fetch in RefreshingCredentials#initialize and
        # seeds the cache state directly.
        def initialize(seed = {})
          @mutex = Mutex.new
          @static_stability = true
          @next_refresh_allowed_at = nil
          @cached_error = nil
          @cached_error_expires_at = nil
          @configured_advisory_window = seed[:configured_advisory_window]
          @advisory_window = seed[:advisory_window]
          @credentials = seed[:credentials]
          @expiration = seed[:expiration]
        end

        def expect_response(response, lifetime)
          @next = [response, lifetime]
        end

        def refresh
          @source_calls = (@source_calls || 0) + 1
          response, lifetime = @next
          case response
          when 'freshCredentials' then set_creds(lifetime || 3600)
          when 'staleCredentials' then set_creds(-1)
          when 'error' then raise 'recoverable refresh failure'
          when 'nonRecoverableError' then raise RefreshingCredentialsTestError
          end
        end

        def non_recoverable_error?(error)
          error.is_a?(RefreshingCredentialsTestError)
        end

        private

        def set_creds(lifetime)
          @credentials = Credentials.new('FRESH-AKID', 'secret', 'token')
          @expiration = Time.now + lifetime
        end
      end
    end

    before do
      @now = Time.now
      allow(Time).to receive(:now) { @now }
    end

    def build_resolver(klass, given)
      @seeded_akid = given['accessKeyId'] || 'CACHED-AKID'
      seed = { configured_advisory_window: given['configuredAdvisoryWindowSeconds'] }
      unless given['cachedCredentials'] == 'none'
        seed[:credentials] = Credentials.new(@seeded_akid, 'secret', 'token')
        seed[:advisory_window] = 15 * 60
        ttl = { 'valid' => 1000, 'advisory' => 300, 'mandatory' => 30, 'expired' => -10 }
              .fetch(given['cachedCredentials'])
        seed[:expiration] = Time.now + ttl
      end
      resolver = klass.new(seed)
      allow(resolver).to receive(:refresh_backoff).and_return(given['refreshBackoffSeconds'] || 300)
      resolver
    end

    def fake_identity(access_key_id)
      double('identity', access_key_id: access_key_id)
    end

    def assert_result(resolver, expected)
      case expected
      when 'newCredentials'
        expect(resolver.credentials.access_key_id).to eq('FRESH-AKID')
      when 'cachedCredentials'
        expect(resolver.credentials.access_key_id).to eq(@seeded_akid)
      when 'noCredentialsError'
        expect { resolver.credentials }.to raise_error(Errors::NoCredentialsError)
      when 'nonRecoverableError'
        expect { resolver.credentials }.to raise_error(RefreshingCredentialsTestError)
      end
    end

    tests = JSON.load_file(File.join(File.dirname(__FILE__), 'refreshing_credentials_tests.json'))

    tests.each_with_index do |test, index|
      it "case #{index + 1}: #{test['documentation']}" do
        resolver = build_resolver(resolver_class, test['given'])
        test['steps'].each do |step|
          case step['type']
          when 'advanceTime'
            @now += step['seconds']
          when 'invalidate'
            resolver.invalidate(fake_identity(step['rejectedAccessKeyId']))
          when 'getCredentials'
            source_calls_before = resolver.source_calls || 0
            entering_rate_limited = resolver.rate_limited?
            resolver.expect_response(step['response'], step['lifetimeSeconds'])

            expected = step['expected']
            assert_result(resolver, expected['result'])
            expect((resolver.source_calls || 0) > source_calls_before)
              .to eq(expected['sourceContacted'])
            if expected.key?('rateLimited')
              expect(entering_rate_limited).to eq(expected['rateLimited'])
            end
            if expected.key?('advisoryWindowSeconds')
              expect(resolver.advisory_window).to eq(expected['advisoryWindowSeconds'])
            end
          end
        end
      end
    end
  end
end
