# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  # test error the fake source raises for a non-recoverable response
  class RefreshingCredentialsTestError < StandardError; end

  describe ResilientRefreshingCredentials do
    let(:resolver_class) do
      Class.new do
        include ResilientRefreshingCredentials

        attr_reader :source_calls

        # Bypasses the eager fetch in ResilientRefreshingCredentials#initialize and
        # sets the cache state directly.
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
      allow(resolver).to receive(:warn)
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
        expect { resolver.credentials }.to raise_error(Errors::MissingCredentialsError)
      when 'nonRecoverableError'
        expect { resolver.credentials }.to raise_error(RefreshingCredentialsTestError)
      end
    end

    describe 'failed refresh messaging' do
      it 'logs the source error and next-attempt delay when backing off' do
        resolver = build_resolver(resolver_class, 'cachedCredentials' => 'advisory')
        allow(resolver).to receive(:refresh_backoff).and_return(300)
        resolver.expect_response('error', nil)

        expect(resolver).to receive(:warn).with(
          'Credential refresh failed: recoverable refresh failure. The SDK ' \
          'will continue using cached credentials. A refresh of these ' \
          'credentials will be attempted again after 300 seconds.'
        )

        expect(resolver.credentials.access_key_id).to eq(@seeded_akid)
      end

      it 'does not log for a non-recoverable error (it is raised instead)' do
        resolver = build_resolver(resolver_class, 'cachedCredentials' => 'advisory')
        resolver.expect_response('nonRecoverableError', nil)

        expect(resolver).not_to receive(:warn)

        expect { resolver.credentials }.to raise_error(RefreshingCredentialsTestError)
      end
    end

    describe 'advisory window configuration' do
      let(:validating_resolver_class) do
        Class.new do
          include ResilientRefreshingCredentials

          def refresh
            @credentials = Credentials.new('AKID', 'secret', 'token')
            @expiration = Time.now + 3600
          end
        end
      end

      it 'rejects an advisory window smaller than the mandatory window' do
        expect { validating_resolver_class.new(advisory_refresh_window: 30) }
          .to raise_error(ArgumentError, /must be at least the mandatory refresh window/)
      end

      it 'accepts an advisory window at or above the mandatory window' do
        expect { validating_resolver_class.new(advisory_refresh_window: 60) }
          .not_to raise_error
      end
    end

    tests = JSON.load_file(File.join(File.dirname(__FILE__), 'resilient_refreshing_credentials_tests.json'))

    tests.each do |test|
      it "#{test['id']}: #{test['documentation']}" do
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

    it 'raises MissingCredentialsError when the initial fetch returns a stale response, then recovers' do
      resolver = build_resolver(resolver_class, 'cachedCredentials' => 'none')

      resolver.expect_response('staleCredentials', nil)
      expect { resolver.credentials }.to raise_error(Errors::MissingCredentialsError)

      resolver.expect_response('freshCredentials', nil)
      expect(resolver.credentials.access_key_id).to eq('FRESH-AKID')
    end

    it 'treats invalidate as a no-op when no credentials are cached yet' do
      resolver = build_resolver(resolver_class, 'cachedCredentials' => 'none')

      expect { resolver.invalidate(fake_identity('AKID-1')) }.not_to raise_error

      # the next resolution still performs the initial fetch
      resolver.expect_response('freshCredentials', nil)
      expect(resolver.credentials.access_key_id).to eq('FRESH-AKID')
    end

    describe 'concurrency' do
      let(:gated_resolver_class) do
        Class.new do
          include ResilientRefreshingCredentials

          attr_reader :source_calls, :entered, :release

          def initialize(seed)
            @mutex = Mutex.new
            @static_stability = true
            @async_refresh = seed[:async_refresh]
            @next_refresh_allowed_at = nil
            @cached_error = nil
            @cached_error_expires_at = nil
            @advisory_window = seed[:advisory_window]
            @credentials = seed[:credentials]
            @expiration = seed[:expiration]
            @source_calls = 0
            @entered = Queue.new
            @release = Queue.new
          end

          # Signals that the source has been entered, then blocks until the
          # test releases it. Runs under the refresh lock, so @source_calls
          # increments are already serialized.
          def refresh
            @source_calls += 1
            @entered << :in
            @release.pop
            @credentials = Credentials.new('FRESH-AKID', 'secret', 'token')
            @expiration = Time.now + 3600
          end

          def non_recoverable_error?(_error)
            false
          end
        end
      end

      def build_gated_resolver(ttl:, advisory_window:, async: false)
        gated_resolver_class.new(
          credentials: Credentials.new('CACHED-AKID', 'secret', 'token'),
          expiration: Time.now + ttl,
          advisory_window: advisory_window,
          async_refresh: async
        )
      end

      SWARM_SIZE = 8

      it 'runs a single advisory refresh while other callers get cached credentials immediately' do
        # advisory window (600s), outside the mandatory window (60s)
        resolver = build_gated_resolver(ttl: 300, advisory_window: 600)

        refresher = Thread.new { resolver.credentials }
        resolver.entered.pop # refresher now holds the lock inside #refresh

        callers = Array.new(SWARM_SIZE) { Thread.new { resolver.credentials.access_key_id } }
        results = callers.map(&:value)

        expect(results).to all(eq('CACHED-AKID'))
        expect(resolver.source_calls).to eq(1)

        resolver.release << :go
        refresher.join

        expect(resolver.source_calls).to eq(1)
        expect(resolver.credentials.access_key_id).to eq('FRESH-AKID')
      end

      it 'refreshes in the background during the advisory window without blocking callers' do
        resolver = build_gated_resolver(ttl: 300, advisory_window: 600, async: true)

        expect(resolver.credentials.access_key_id).to eq('CACHED-AKID')
        resolver.entered.pop # background thread now holds the lock inside #refresh
        expect(resolver.source_calls).to eq(1)

        # further callers get cached credentials without starting a second refresh
        expect(resolver.credentials.access_key_id).to eq('CACHED-AKID')
        expect(resolver.source_calls).to eq(1)

        resolver.release << :go
        sleep 0.1 # let the background refresh publish new credentials

        expect(resolver.credentials.access_key_id).to eq('FRESH-AKID')
        expect(resolver.source_calls).to eq(1)
      end

      it 'runs a single mandatory refresh while other callers wait and reuse the result' do
        # mandatory window (60s)
        resolver = build_gated_resolver(ttl: 30, advisory_window: 600)

        refresher = Thread.new { resolver.credentials }
        resolver.entered.pop # refresher now holds the lock inside #refresh

        waiters = Array.new(SWARM_SIZE) { Thread.new { resolver.credentials.access_key_id } }

        sleep 0.1 # let waiters queue on the lock
        expect(resolver.source_calls).to eq(1)

        resolver.release << :go
        refresher.join
        results = waiters.map(&:value)

        expect(resolver.source_calls).to eq(1)
        expect(results).to all(eq('FRESH-AKID'))
      end

      it 'does not block or mutate state when invalidate runs while a refresh holds the lock' do
        resolver = build_gated_resolver(ttl: 30, advisory_window: 600)

        refresher = Thread.new { resolver.credentials }
        resolver.entered.pop # refresher now holds the lock inside #refresh

        rejected = double('identity', access_key_id: 'CACHED-AKID')
        expect { resolver.invalidate(rejected) }.not_to raise_error

        resolver.release << :go
        refresher.join

        expect(resolver.source_calls).to eq(1)
        expect(resolver.credentials.access_key_id).to eq('FRESH-AKID')
      end
    end
  end
end
