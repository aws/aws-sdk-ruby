# frozen_string_literal: true

require_relative '../spec_helper'
require 'timeout'

module Aws
  describe CredentialDaemonCredentials do
    let(:options) { { credential: 'dev', connect_timeout: 0.2, call_timeout: 0.5 } }

    around(:each) do |example|
      Timeout.timeout(10) { example.run }
    end

    after(:each) do
      stop_credential_daemons
    end

    def reply_with(reply = nil, &block)
      block ||= proc { |_req, _line| reply }
      d = start_credential_daemon(&block)
      ENV['AWS_CREDENTIAL_DAEMON_SOCKET'] = d.path
      d
    end

    def provider(opts = {})
      CredentialDaemonCredentials.new(options.merge(opts))
    end

    describe 'request' do
      it 'sends one JSON-RPC request line' do
        d = reply_with(daemon_session_reply)
        provider(account_id: '123456789012', role_name: 'Admin')
        expect(d.requests).to eq(
          [%({"jsonrpc":"2.0","id":1,"method":"credential/get","params":{"credential":"dev",) +
            %("account_id":"123456789012","role_name":"Admin"}}\n)]
        )
      end

      it 'does not send account_id without role_name' do
        d = reply_with(daemon_session_reply)
        provider(account_id: '123456789012')
        expect(JSON.parse(d.requests.first)['params']).to eq('credential' => 'dev')
      end
    end

    describe 'reply' do
      it 'treats empty optional strings as absent' do
        reply_with(daemon_session_reply(material: { 'session_token' => '', 'account_id' => '' }))
        creds = provider.credentials
        expect(creds.session_token).to be_nil
        expect(creds.account_id).to be_nil
      end

      [
        '2100-01-02T03:04:05.1234567890Z',
        '2100-01-02T03:04:05',
        '2100-01-02T03:04:05+00:00',
        '2100-01-02T03:04:05z',
        '2100-13-02T03:04:05Z',
        '2100-02-31T03:04:05Z',
        12
      ].each do |ts|
        it "rejects expires_at #{ts.inspect}" do
          reply_with(daemon_session_reply(expires_at: ts))
          expect_daemon_error('PROTOCOL_ERROR', /expires_at/) { provider }
        end
      end

      [nil, '', 5].each do |type|
        it "rejects material type #{type.inspect} as a missing field" do
          reply_with(daemon_session_reply(material: { 'type' => type }))
          expect_daemon_error('PROTOCOL_ERROR', /type/) { provider }
        end
      end

      it 'rejects an optional field that is not a string' do
        reply_with(daemon_session_reply(material: { 'session_token' => 5 }))
        expect_daemon_error('PROTOCOL_ERROR', /session_token/) { provider }
      end

      {
        'invalid UTF-8' => "{\"jsonrpc\":\"2.0\",\"result\":\"\xFF\"}\n".b,
        'a JSON array' => "[1,2]\n",
        'an error that is not an object' => "{\"jsonrpc\":\"2.0\",\"error\":\"no\"}\n",
        'a reply with no newline past the limit' => 'x' * 200_000
      }.each do |desc, raw|
        it "raises PROTOCOL_ERROR for #{desc}" do
          reply_with(raw)
          expect_daemon_error('PROTOCOL_ERROR') { provider }
        end
      end

      it 'strips control characters from the daemon message and code' do
        reply_with(daemon_error_reply("FO\e[31mO\n", "bad\e[31m\nthing\u0085\u0000"))
        expect_daemon_error('REQUEST_REJECTED', /\(daemon code FO\[31mO\): bad\[31mthing/) { provider }
      end
    end

    describe 'connect and timeouts' do
      it 'raises NOT_RUNNING at once when the listen backlog is full' do
        # macOS accepts a connect even with listen(0), and JRuby has no Socket#listen.
        unless RUBY_ENGINE == 'ruby' && RbConfig::CONFIG['host_os'] =~ /linux/
          skip 'needs CRuby on Linux to fill the listen backlog'
        end
        dir = Dir.mktmpdir('cd', '/tmp')
        path = File.join(dir, 'd.sock')
        server = Socket.new(:UNIX, :STREAM)
        server.bind(Socket.pack_sockaddr_un(path))
        server.listen(0)
        fillers = []
        begin
          10.times do
            s = Socket.new(:UNIX, :STREAM)
            fillers << s
            begin
              s.connect_nonblock(Socket.pack_sockaddr_un(path))
            rescue Errno::EAGAIN, IO::WaitWritable
              break
            end
          end
          ENV['AWS_CREDENTIAL_DAEMON_SOCKET'] = path
          started = Process.clock_gettime(Process::CLOCK_MONOTONIC)
          expect { provider(connect_timeout: 5, call_timeout: 5) }
            .to raise_error(Errors::CredentialDaemonError) do |e|
              expect(e.code).to eq('NOT_RUNNING')
              expect(e.message).not_to include('timeout')
            end
          expect(Process.clock_gettime(Process::CLOCK_MONOTONIC) - started).to be < 0.25
        ensure
          fillers.each(&:close)
          server.close
          FileUtils.rm_rf(dir)
        end
      end

      context 'when the connect does not complete' do
        before do
          allow_any_instance_of(Socket).to receive(:connect_nonblock).and_return(:wait_writable)
          ENV['AWS_CREDENTIAL_DAEMON_SOCKET'] = '/tmp/cd-never-connects.sock'
        end

        it 'raises NOT_RUNNING naming the connect timeout' do
          started = Process.clock_gettime(Process::CLOCK_MONOTONIC)
          expect_daemon_error('NOT_RUNNING', /connect timeout of 0.2s/) { provider }
          expect(Process.clock_gettime(Process::CLOCK_MONOTONIC) - started).to be < 0.45
        end

        it 'names the call timeout when it ends the connect window' do
          expect_daemon_error('NOT_RUNNING', /call timeout of 0.1s/) do
            provider(connect_timeout: 1, call_timeout: 0.1)
          end
        end
      end

      it 'raises NOT_RUNNING naming the call timeout when no reply comes' do
        reply_with(:hang)
        expect_daemon_error('NOT_RUNNING', /call timeout of 0.5s/) { provider }
      end

      it 'raises NOT_RUNNING for a path that is too long' do
        ENV['AWS_CREDENTIAL_DAEMON_SOCKET'] = "/#{'a' * 200}"
        expect_daemon_error('NOT_RUNNING') { provider }
      end
    end

    describe 'socket location' do
      let(:home) { Dir.mktmpdir('cd', '/tmp') }
      let(:link) { File.join(home, '.aws', 'credential-daemon.sock') }

      before do
        ENV['HOME'] = home
        FileUtils.mkdir_p(File.dirname(link))
      end

      after { FileUtils.rm_rf(home) }

      it 'skips the HOME location when HOME is empty' do
        ENV['HOME'] = ''
        expect(Socket).not_to receive(:new)
        expect_daemon_error('NOT_RUNNING', /AWS_CREDENTIAL_DAEMON_SOCKET/) { provider }
      end

      it 'dials a regular file at the HOME location and names it' do
        File.write(link, '')
        expect_daemon_error('NOT_RUNNING', /at #{Regexp.escape(link)} /) { provider }
      end

      it 'looks up the socket again on each refresh' do
        first = reply_with(daemon_session_reply)
        second = start_credential_daemon { daemon_session_reply(material: { 'access_key_id' => 'ASIASECOND' }) }
        p = provider
        ENV.delete('AWS_CREDENTIAL_DAEMON_SOCKET')
        File.symlink(second.path, link)
        p.refresh!
        expect(p.credentials.access_key_id).to eq('ASIASECOND')
        expect([first.requests.size, second.requests.size]).to eq([1, 1])
      end

      context 'with the socket_path option' do
        let!(:env_daemon) { reply_with(daemon_session_reply(material: { 'access_key_id' => 'ASIAENV' })) }

        it 'dials the option ahead of AWS_CREDENTIAL_DAEMON_SOCKET and the HOME location' do
          File.symlink(start_credential_daemon { daemon_session_reply }.path, link)
          d = start_credential_daemon { daemon_session_reply(material: { 'access_key_id' => 'ASIAOPTION' }) }
          expect(provider(socket_path: d.path).credentials.access_key_id).to eq('ASIAOPTION')
          expect(env_daemon.requests).to be_empty
        end

        it 'raises NOT_RUNNING without trying another location when nothing listens there' do
          missing = File.join(home, 'missing.sock')
          expect_daemon_error('NOT_RUNNING', /at #{Regexp.escape(missing)} /) { provider(socket_path: missing) }
          expect(env_daemon.requests).to be_empty
        end

        it 'skips an empty path' do
          expect(provider(socket_path: '').credentials.access_key_id).to eq('ASIAENV')
        end

        it 'skips a relative path' do
          start_credential_daemon(path: File.join(home, 'rel.sock')) { daemon_session_reply }
          Dir.chdir(home) do
            expect(provider(socket_path: 'rel.sock').credentials.access_key_id).to eq('ASIAENV')
          end
        end

        it 'raises ArgumentError for a value that is not a String' do
          expect { provider(socket_path: :'/x.sock') }.to raise_error(ArgumentError)
        end
      end
    end

    describe 'platform' do
      it 'raises UNSUPPORTED_PLATFORM on another OS' do
        allow_any_instance_of(CredentialDaemonCredentials).to receive(:platform).and_return(nil)
        expect_daemon_error('UNSUPPORTED_PLATFORM', /#{Regexp.escape(CredentialDaemonCredentials::CREDENTIAL_DAEMON_DOC)}/) { provider }
      end

      it 'raises UNSUPPORTED_PLATFORM without UNIXSocket' do
        hide_const('UNIXSocket')
        expect_daemon_error('UNSUPPORTED_PLATFORM') { provider }
      end
    end

    describe 'options' do
      ['.dev', 'a' * 65, 'has space', 'ünï', nil, 5].each do |name|
        it "raises INVALID_CONFIG for credential #{name.inspect}" do
          expect(Socket).not_to receive(:new)
          expect_daemon_error('INVALID_CONFIG') { provider(credential: name) }
        end
      end

      ['A-b_c.d', '_x', '-x', 'a' * 64].each do |name|
        it "accepts credential #{name.inspect}" do
          d = reply_with(daemon_session_reply)
          provider(credential: name)
          expect(JSON.parse(d.requests.first)['params']['credential']).to eq(name)
        end
      end

      [0, -1, '1'].each do |value|
        it "raises ArgumentError for timeout #{value.inspect}" do
          expect { provider(connect_timeout: value) }.to raise_error(ArgumentError)
          expect { provider(call_timeout: value) }.to raise_error(ArgumentError)
        end
      end

      it 'calls before_refresh and sets metrics' do
        reply_with(daemon_session_reply)
        called = []
        p = provider(before_refresh: proc { |c| called << c })
        expect(called).to eq([p])
        expect(p.metrics).to eq(['CREDENTIAL_DAEMON'])
      end
    end

    describe 'refresh' do
      it 'does not call the daemon again far from expiration' do
        d = reply_with(daemon_session_reply)
        p = provider
        3.times { p.credentials }
        expect(d.requests.size).to eq(1)
      end

      it 'raises a failure inside the refresh window' do
        d = reply_with(daemon_session_reply(expires_at: (Time.now.utc + 200).strftime('%Y-%m-%dT%H:%M:%SZ')))
        p = provider
        d.stop
        expect_daemon_error('NOT_RUNNING') { p.credentials }
      end

      it 'calls the daemon again after an expired token error and signs the retry with the new key' do
        allow(Kernel).to receive(:sleep)
        responses = [
          { status: 400, body: '<ErrorResponse><Error><Type>Sender</Type><Code>ExpiredToken</Code>' \
                               '<Message>expired</Message></Error></ErrorResponse>' },
          { status: 200, body: '<GetCallerIdentityResponse><GetCallerIdentityResult><Arn>a</Arn>' \
                               '</GetCallerIdentityResult></GetCallerIdentityResponse>' }
        ]
        auth = []
        stub_request(:post, /sts/).to_return do |request|
          auth << request.headers['Authorization']
          responses.shift
        end
        replies = [daemon_session_reply, daemon_session_reply(material: { 'access_key_id' => 'ASIANEW' })]
        d = reply_with { replies.shift }
        STS::Client.new(region: 'us-east-1', credentials: provider).get_caller_identity
        expect(d.requests.size).to eq(2)
        expect(auth.map { |a| a[%r{Credential=([^/]+)/}, 1] }).to eq(%w[ASIADAEMON ASIANEW])
      end
    end

    context 'SEP test cases' do
      # Runs each case through a client's default credential chain.
      cases = JSON.load_file(
        File.expand_path('../fixtures/credentials/credential-daemon-provider-test-cases.json', __dir__)
      ).select { |c| c['appliesTo'].nil? || c['appliesTo'].include?('ruby') }

      # Cases that need the Credential Refresh SEP and fail with today's
      # RefreshingCredentials.
      expected_failures = %w[expiry-past invalidated-same-key]

      let(:dir) { Dir.mktmpdir('cdsep', '/tmp') }
      let(:cwd) { File.join(dir, 'cwd') }
      let(:sts_requests) { [] }
      let(:daemons) { {} }

      before(:each) do
        FileUtils.mkdir_p(cwd)
        ENV['HOME'] = File.join(dir, 'home')
        allow(Time).to receive(:now).and_return(Time.utc(2026, 11, 1))
        allow(InstanceProfileCredentials).to receive(:new).and_return(
          Credentials.new('AKIDNEXTPROVIDER', 's')
        )
        stub_request(:post, /sts/).to_return do |request|
          sts_requests << request
          { status: 200, body: sts_response(request.body) }
        end
      end

      after(:each) do
        FileUtils.rm_rf(dir)
      end

      def sts_response(body)
        if body.include?('Action=AssumeRole')
          '<AssumeRoleResponse><AssumeRoleResult><Credentials><AccessKeyId>ASIAROLE</AccessKeyId>' \
            '<SecretAccessKey>s</SecretAccessKey><SessionToken>t</SessionToken>' \
            '<Expiration>2026-11-01T01:00:00Z</Expiration></Credentials></AssumeRoleResult></AssumeRoleResponse>'
        else
          '<GetCallerIdentityResponse><GetCallerIdentityResult><Arn>a</Arn></GetCallerIdentityResult>' \
            '</GetCallerIdentityResponse>'
        end
      end

      # The reply lines of one exchange, joined into the bytes the fake writes.
      def reply_bytes(exchange, request)
        Array(exchange['replyLines']).map do |line|
          next "#{line}\n" if line.is_a?(String)

          line = JSON.parse(JSON.generate(line))
          line['id'] = request && request['id'] if line['id'] == '$id'
          if (size = line.delete('$padTo'))
            line['result']['padding'] = ''
            line['result']['padding'] = 'x' * (size - JSON.generate(line).bytesize)
          end
          "#{JSON.generate(line)}\n"
        end.join
      end

      def start_daemons(test_case, exchanges)
        env = ENV['AWS_CREDENTIAL_DAEMON_SOCKET']
        home = ENV['HOME'].to_s
        link = File.join(home.start_with?('/') ? home : File.join(cwd, home), '.aws', 'credential-daemon.sock')
        FileUtils.mkdir_p(File.dirname(link))
        handler = proc do |request, _line|
          (exchange = exchanges.shift) ? reply_bytes(exchange, request) : nil
        end
        ENV['AWS_CREDENTIAL_DAEMON_SOCKET'] = File.join(dir, 'missing-env.sock') if env == 'env'
        test_case['daemon']['sockets'].each do |role|
          case role
          when 'link'
            daemons['link'] = start_credential_daemon(&handler)
            File.symlink(daemons['link'].path, link)
          when 'link-stale'
            target = File.join(dir, 'stale.sock')
            UNIXServer.new(target).close
            File.symlink(target, link)
          when 'link-dangling'
            File.symlink(File.join(dir, 'missing-daemon.sock'), link)
          when 'home-socket'
            daemons['home-socket'] = start_credential_daemon(path: link, &handler)
          when 'env'
            path = env == 'relative' ? File.join(cwd, 'env.sock') : File.join(dir, 'env.sock')
            daemons['env'] = start_credential_daemon(path: path, &handler)
            ENV['AWS_CREDENTIAL_DAEMON_SOCKET'] = env == 'relative' ? 'env.sock' : path
          when 'env-file'
            ENV['AWS_CREDENTIAL_DAEMON_SOCKET'] = File.join(dir, 'env-file')
            File.write(ENV['AWS_CREDENTIAL_DAEMON_SOCKET'], '')
          end
        end
      end

      # Resolves credentials through a client, then makes one call with them.
      # Returns the provider, the error and the User-Agent metrics of that call.
      def run_case(test_case)
        ENV['AWS_PROFILE'] = test_case['profile']
        (test_case['environment'] || {}).each { |k, v| ENV[k] = v }
        (test_case['unsetEnvironment'] || []).each { |k| ENV.delete(k) }
        File.write(config = File.join(dir, 'config'), test_case['configContents'])
        File.write(credentials = File.join(dir, 'credentials'), test_case['credentialsContents'] || '')
        Aws.shared_config.fresh(config_enabled: true, config_path: config, credentials_path: credentials)
        exchanges = Array(test_case['daemon']['exchanges']).dup
        if (key = test_case['invalidatedAccessKeyId'])
          # The first fetch caches the credentials that a service then rejects.
          exchanges.unshift(
            'replyLines' => [daemon_session_reply(material: { 'access_key_id' => key })]
          )
        end
        start_daemons(test_case, exchanges)
        Dir.chdir(cwd) do
          client = STS::Client.new(region: 'us-east-1')
          provider = client.config.credentials
          provider.refresh! if test_case['invalidatedAccessKeyId']
          client.get_caller_identity
          metrics = sts_requests.last.headers['User-Agent'][%r{ m/(\S+)}, 1].split(',')
          [provider, nil, metrics]
        end
      rescue StandardError => e
        [nil, e, nil]
      end

      def dialed
        daemons.select { |_, d| d.requests.any? }.keys
      end

      def expect_outcome(test_case, provider, error, metrics)
        outcome = test_case['outcome']
        if outcome['result'] == 'error'
          expect(error).not_to be_nil
          expect(sts_requests).to be_empty
          if outcome['errorCode']
            expect(error).to be_a(Errors::CredentialDaemonError)
            expect(error.code).to eq(outcome['errorCode'])
          end
          Array(outcome['messageContains']).each { |s| expect(error.message).to include(s) }
          Array(outcome['messageNotContains']).each { |s| expect(error.message).not_to include(s) }
          expect(InstanceProfileCredentials).not_to have_received(:new) if outcome['terminal']
        else
          raise error if error

          expect(source(provider)).to eq(outcome['source'])
          creds = provider.credentials
          expect(creds.access_key_id).to eq(outcome['accessKeyId']) if outcome.key?('accessKeyId')
          expect(creds.secret_access_key).to eq(outcome['secretAccessKey']) if outcome.key?('secretAccessKey')
          expect(creds.session_token).to eq(outcome['sessionToken']) if outcome.key?('sessionToken')
          expect(creds.account_id).to eq(outcome['accountId']) if outcome.key?('accountId')
          expect(provider.expiration).to eq(Time.iso8601(outcome['expiresAt'])) if outcome['expiresAt']
          expect(metrics).to include(*outcome['featureIds']) if outcome['featureIds']
        end
        # A dialed socket with no fake (stale, dangling, a file) leaves every fake idle.
        expect(dialed).to eq(daemons.key?(outcome['dialed']) ? [outcome['dialed']] : [])
      end

      def expect_requests(test_case)
        d = daemons[test_case['outcome']['dialed']]
        return unless d

        requests = d.requests.last(Array(test_case['daemon']['exchanges']).size).map { |l| JSON.parse(l) }
        test_case['daemon']['exchanges'].zip(requests).each do |exchange, request|
          expect(request).to include('jsonrpc' => '2.0', 'id' => anything)
          expect(request['method']).to eq(exchange['expectedRequest']['method'])
          expect(request['params']).to eq(exchange['expectedRequest']['params'])
        end
      end

      def source(provider)
        case provider
        when CredentialDaemonCredentials then 'daemon'
        when AssumeRoleCredentials then 'assumeRole'
        else
          { 'AKIDNEXTPROVIDER' => 'nextProvider', 'AKIDENV' => 'environment' }[provider.credentials.access_key_id]
        end
      end

      cases.each do |test_case|
        it "#{test_case['id']}: #{test_case['documentation']}" do
          pending 'needs the Credential Refresh SEP' if expected_failures.include?(test_case['id'])
          provider, error, metrics = run_case(test_case)

          case test_case['id']
          when 'sso-neither-key', 'sso-neither-key-role-arn'
            # Ruby resolves an SSO token whenever it builds a client, so these
            # profiles fail the same way with credential_daemon removed.
            expect(error).to be_a(Errors::InvalidSSOToken)
            expect(dialed).to be_empty
          when 'env-web-identity-and-daemon-profile'
            # Ruby checks the web identity environment variables first, so it
            # fails on the missing token file without dialing.
            expect(error).to be_a(Errors::MissingWebIdentityTokenFile)
            expect(dialed).to be_empty
          else
            expect_outcome(test_case, provider, error, metrics)
            expect_requests(test_case)
          end
        end
      end
    end
  end
end
