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
          when 'partialFailure'
            # Simulates a provider whose #refresh reassigns @credentials
            # successfully but raises before reaching the @expiration
            # assignment (for example a response whose Expiration string
            # failed to parse), leaving @expiration untouched.
            @credentials = Credentials.new('MISMATCHED-AKID', 'secret', 'token')
            raise 'partial refresh failure'
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

      it 'logs through client.config.logger instead of Kernel#warn when the resolver exposes a client' do
        logger = double('logger')
        client = double('client', config: double('config', logger: logger))
        resolver = build_resolver(resolver_class, 'cachedCredentials' => 'advisory')
        allow(resolver).to receive(:client).and_return(client)
        resolver.expect_response('error', nil)

        expect(logger).to receive(:warn).with(/Credential refresh failed: recoverable refresh failure/)
        expect(resolver).not_to receive(:warn).with(/Credential refresh failed/)

        resolver.credentials
      end

      it 'logs an initial fetch failure through client.config.logger when the resolver exposes a client' do
        logger = double('logger')
        client = double('client', config: double('config', logger: logger))
        resolver = build_resolver(resolver_class, 'cachedCredentials' => 'none')
        allow(resolver).to receive(:client).and_return(client)
        resolver.expect_response('error', nil)

        expect(logger).to receive(:warn).with(/Initial credential fetch failed: recoverable refresh failure/)
        expect(resolver).not_to receive(:warn).with(/Initial credential fetch failed/)

        expect { resolver.credentials }.to raise_error(Errors::MissingCredentialsError)
      end
    end

    describe 'nil expiration' do
      it 'treats a nil expiration as always eligible for refresh rather than perpetually valid' do
        resolver = resolver_class.new(
          credentials: Credentials.new('CACHED-AKID', 'secret', 'token'),
          expiration: nil
        )
        allow(resolver).to receive(:warn)
        resolver.expect_response('freshCredentials', nil)

        expect(resolver.credentials.access_key_id).to eq('FRESH-AKID')
      end
    end

    describe 'partial refresh failure' do
      it 'rolls back rather than pairing new credentials with a stale leftover expiration' do
        resolver = build_resolver(resolver_class, 'cachedCredentials' => 'advisory')
        cached_expiration = resolver.instance_variable_get(:@expiration)
        resolver.expect_response('partialFailure', nil)

        expect(resolver.credentials.access_key_id).to eq(@seeded_akid)
        expect(resolver.instance_variable_get(:@expiration)).to eq(cached_expiration)
      end
    end

    describe '#refresh_backoff' do
      it 'stays within 60 to 90 seconds once credentials are expired' do
        resolver = resolver_class.new(expiration: Time.now - 1)
        100.times { expect(resolver.send(:refresh_backoff)).to be_between(60, 90) }
      end

      it 'defaults to 60-90 seconds when there is no expiration' do
        resolver = resolver_class.new(expiration: nil)
        100.times { expect(resolver.send(:refresh_backoff)).to be_between(60, 90) }
      end

      it 'scales the upper bound down to half the remaining lifetime' do
        resolver = resolver_class.new(expiration: Time.now + 400) # remaining / 2 = 200
        100.times { expect(resolver.send(:refresh_backoff)).to be_between(60, 200) }
      end

      it 'caps the upper bound at 600 seconds for long-lived credentials' do
        resolver = resolver_class.new(expiration: Time.now + 2000) # remaining / 2 = 1000, capped at 600
        100.times { expect(resolver.send(:refresh_backoff)).to be_between(60, 600) }
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

    it 'caches and returns a stale initial fetch response rather than raising, then mandatorily refreshes' do
      resolver = build_resolver(resolver_class, 'cachedCredentials' => 'none')

      resolver.expect_response('staleCredentials', nil)
      expect(resolver.credentials.access_key_id).to eq('FRESH-AKID')
      expect(resolver.rate_limited?).to be(false)

      resolver.expect_response('freshCredentials', 120)
      expect(resolver.credentials.access_key_id).to eq('FRESH-AKID')
      expect(resolver.source_calls).to eq(2) # the cached (expired) response is not reused
    end

    it 'preserves the underlying source error as the cause of MissingCredentialsError' do
      resolver = build_resolver(resolver_class, 'cachedCredentials' => 'none')
      resolver.expect_response('error', nil)

      expect(resolver).to receive(:warn).with(/Initial credential fetch failed: recoverable refresh failure/)

      expect { resolver.credentials }.to raise_error(Errors::MissingCredentialsError) do |error|
        expect(error.message).to include('recoverable refresh failure')
        expect(error.cause).to be_a(RuntimeError)
        expect(error.cause.message).to eq('recoverable refresh failure')
      end
    end

    describe '#refresh!' do
      it 'clears backoff and cached error state and recomputes the advisory window on success' do
        resolver = build_resolver(resolver_class, 'cachedCredentials' => 'advisory')
        resolver.expect_response('error', nil)
        resolver.credentials # fails, sets refresh backoff
        expect(resolver.rate_limited?).to be(true)

        resolver.expect_response('freshCredentials', 120)
        resolver.refresh!

        expect(resolver.rate_limited?).to be(false)
        expect(resolver.advisory_window).to eq(5 * 60) # 120s lifetime <= 20 minutes
        expect(resolver.credentials.access_key_id).to eq('FRESH-AKID')
      end

      it 'raises StaleCredentialsError and keeps the prior credentials when the response is already expired' do
        resolver = build_resolver(resolver_class, 'cachedCredentials' => 'valid')
        resolver.expect_response('staleCredentials', nil)

        expect { resolver.refresh! }.to raise_error(ResilientRefreshingCredentials::StaleCredentialsError)
        expect(resolver.credentials.access_key_id).to eq(@seeded_akid)
      end

      it 'raises without applying refresh backoff on a recoverable failure' do
        resolver = build_resolver(resolver_class, 'cachedCredentials' => 'valid')
        resolver.expect_response('error', nil)

        expect { resolver.refresh! }.to raise_error('recoverable refresh failure')
        expect(resolver.rate_limited?).to be(false)
        expect(resolver.credentials.access_key_id).to eq(@seeded_akid)
      end
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

      def build_gated_resolver(ttl:, advisory_window:)
        gated_resolver_class.new(
          credentials: Credentials.new('CACHED-AKID', 'secret', 'token'),
          expiration: Time.now + ttl,
          advisory_window: advisory_window
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

    # End to end through a real client: a target-service rejection must route
    # through Invalidate() and the lifecycle, never through #refresh!, so a
    # credential source outage keeps static stability and the refresh backoff.
    describe 'target-service rejection during a credential source outage' do
      let(:provider_class) do
        Class.new do
          include CredentialProvider
          include ResilientRefreshingCredentials

          attr_reader :source_calls

          def initialize(options = {})
            @source_calls = 0
            super
          end

          def refresh
            @source_calls += 1
            raise Errno::ECONNREFUSED, 'credential source down' if @source_calls > 1

            @credentials = Credentials.new('AKID-1', 'secret', 'token')
            @expiration = Time.now + 3600
          end
        end
      end

      def error_body(code)
        '<ErrorResponse><Error><Type>Sender</Type>' \
          "<Code>#{code}</Code><Message>rejected</Message></Error>" \
          '<RequestId>id</RequestId></ErrorResponse>'
      end

      %w[standard legacy].each do |retry_mode|
        %w[ExpiredToken InvalidClientTokenId].each do |code|
          it "keeps cached credentials and applies the backoff for #{code} (#{retry_mode} retries)" do
            stub_request(:post, 'https://sts.us-east-1.amazonaws.com/')
              .to_return(status: 403, body: error_body(code))
            provider = provider_class.new
            client = STS::Client.new(
              region: 'us-east-1',
              credentials: provider,
              retry_mode: retry_mode,
              retry_backoff: ->(_context) {}
            )
            allow(provider).to receive(:warn)

            3.times do
              expect { client.get_caller_identity }.to raise_error(STS::Errors.const_get(code))
            end

            # initial fetch + at most one refresh attempt; the backoff gates the rest
            expect(provider.source_calls).to be <= 2
            expect(provider.credentials.access_key_id).to eq('AKID-1')
          end

          it "refreshes through invalidation and retries successfully for #{code} when the source is healthy (#{retry_mode} retries)" do
            healthy_class = Class.new(provider_class) do
              def refresh
                @source_calls += 1
                @credentials = Credentials.new("AKID-#{@source_calls}", 'secret', 'token')
                @expiration = Time.now + 3600
              end
            end
            stub_request(:post, 'https://sts.us-east-1.amazonaws.com/')
              .to_return({ status: 403, body: error_body(code) },
                         { status: 200, body: get_caller_identity_body })
            provider = healthy_class.new
            client = STS::Client.new(
              region: 'us-east-1',
              credentials: provider,
              retry_mode: retry_mode,
              retry_backoff: ->(_context) {}
            )

            expect(client.get_caller_identity.account).to eq('123456789012')
            expect(provider.source_calls).to eq(2) # initial fetch + one mandatory refresh
            expect(provider.credentials.access_key_id).to eq('AKID-2')
          end
        end
      end

      def get_caller_identity_body
        '<GetCallerIdentityResponse><GetCallerIdentityResult><Arn>arn:aws:iam::123456789012:user/u</Arn>' \
          '<UserId>u</UserId><Account>123456789012</Account></GetCallerIdentityResult>' \
          '<ResponseMetadata><RequestId>id</RequestId></ResponseMetadata></GetCallerIdentityResponse>'
      end
    end
  end
end
