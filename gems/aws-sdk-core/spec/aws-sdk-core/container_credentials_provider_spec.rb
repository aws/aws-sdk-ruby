# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Core
    describe ContainerCredentialsProvider do
      let(:options) { { backoff: 0, retries: 0 } }
      let(:path) { '/latest/credentials?id=foobarbaz' }

      let(:expiration) { Time.now.round + 3600 }
      let(:resp) { <<~JSON.strip }
        {
          "RoleArn": "arn:aws:iam::123456789012:role/BarFooRole",
          "AccessKeyId": "akid",
          "SecretAccessKey": "secret",
          "Token": "session-token",
          "AccountId": "123456789012",
          "Expiration": "#{expiration.utc.iso8601}"
        }
      JSON

      let(:expiration2) { expiration + 3600 }
      let(:resp2) { <<~JSON.strip }
        {
          "RoleArn": "arn:aws:iam::123456789012:role/BarFooRole",
          "AccessKeyId": "akid-2",
          "SecretAccessKey": "secret-2",
          "Token": "session-token-2",
          "AccountId": "120987654321",
          "Expiration": "#{expiration2.utc.iso8601}"
        }
      JSON

      before do
        ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI'] = path
        stub_request(:get, "http://169.254.170.2#{path}")
          .to_return(status: 200, body: resp)
          .to_return(status: 200, body: resp2)
      end

      it 'populates credentials from the instance profile' do
        provider = ContainerCredentialsProvider.new(options)
        creds = provider.identity
        expect(creds.access_key_id).to eq('akid')
        expect(creds.secret_access_key).to eq('secret')
        expect(creds.session_token).to eq('session-token')
        expect(creds.account_id).to eq('123456789012')
        expect(provider.expiration).to eq(expiration)
      end

      it 're-queries the metadata service when refreshing' do
        provider = ContainerCredentialsProvider.new(options)
        creds = provider.identity
        expect(creds.access_key_id).to eq('akid')
        expect(creds.secret_access_key).to eq('secret')
        expect(creds.session_token).to eq('session-token')
        expect(creds.account_id).to eq('123456789012')
        expect(provider.expiration).to eq(expiration)
        provider.refresh!
        creds = provider.identity
        expect(creds.access_key_id).to eq('akid-2')
        expect(creds.secret_access_key).to eq('secret-2')
        expect(creds.session_token).to eq('session-token-2')
        expect(creds.account_id).to eq('120987654321')
        expect(provider.expiration).to eq(expiration2)
      end

      it "ignores ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI'] if also set" do
        # relative URI is stubbed with webmock so this should not fail
        ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI'] = 'https://do-not-call-me.com:1234/path'
        provider = ContainerCredentialsProvider.new(options)
        creds = provider.identity
        expect(creds.access_key_id).to eq('akid')
        expect(creds.secret_access_key).to eq('secret')
        expect(creds.session_token).to eq('session-token')
        expect(creds.account_id).to eq('123456789012')
        expect(provider.expiration).to eq(expiration)
      end

      context 'failure cases' do
        let(:resp) { '{}' }

        it 'given an empty response, empty credentials are returned' do
          # This handles the case when the service response but returns
          # a JSON document without credentials (error cases)
          stub_request(:get, "http://169.254.170.2#{path}").to_return(status: 200, body: resp)
          provider = ContainerCredentialsProvider.new(options)
          creds = provider.identity
          expect(creds.access_key_id).to be(nil)
          expect(creds.secret_access_key).to be(nil)
          expect(creds.session_token).to be(nil)
          expect(creds.account_id).to be(nil)
          expect(provider.expiration).to be(nil)
        end

        it 'raises if credential path or endpoint is not set' do
          ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI'] = nil
          expect do
            ContainerCredentialsProvider.new(options)
          end.to raise_error(ArgumentError, /without a credential path/)
        end

        it 'raises for invalid JSON after retries are exhausted' do
          stub_request(:get, "http://169.254.170.2#{path}")
            .to_return(status: 200, body: '')
            .to_return(status: 200, body: '{')
            .to_return(status: 200, body: ' ')
          expect do
            ContainerCredentialsProvider.new(options)
          end.to raise_error('Failed to parse HTTP service response')
        end
      end

      context 'retries' do
        it 'defaults to 3' do
          expected_request = stub_request(:get, "http://169.254.170.2#{path}").to_raise(SocketError)
          expect { ContainerCredentialsProvider.new(backoff: 0) }
            .to raise_error(/Error retrieving HTTP Credentials/)
          assert_requested(expected_request, times: 4)
        end

        it 'retries with exponential backoff' do
          expected_request = stub_request(:get, "http://169.254.170.2#{path}").to_raise(Errno::ECONNREFUSED)
          expect(Kernel).to receive(:sleep).with(1)
          expect(Kernel).to receive(:sleep).with(2)
          expect(Kernel).to receive(:sleep).with(4)
          expect do
            ContainerCredentialsProvider.new(backoff: ->(n) { Kernel.sleep(2**n) })
          end.to raise_error(/Error retrieving HTTP Credentials/)
          assert_requested(expected_request, times: 4)
        end

        it 'retries if get profile response is invalid JSON' do
          stub_request(:get, "http://169.254.170.2#{path}")
            .to_return(status: 200, body: ' ')
            .to_return(status: 200, body: '')
            .to_return(status: 200, body: '{')
            .to_return(status: 200, body: resp)
          provider = ContainerCredentialsProvider.new(backoff: 0)
          creds = provider.identity
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq('session-token')
          expect(creds.account_id).to eq('123456789012')
          expect(provider.expiration).to eq(expiration)
        end

        it 'retries errors parsing expiration time' do
          stub_request(:get, "http://169.254.170.2#{path}")
            .to_return(status: 200, body: '{ "Expiration": "Expiration" }')
            .to_return(status: 200, body: resp)
          provider = ContainerCredentialsProvider.new(backoff: 0)
          creds = provider.identity
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq('session-token')
          expect(creds.account_id).to eq('123456789012')
          expect(provider.expiration).to eq(expiration)
        end
      end

      context 'validating token' do
        context 'AWS_CONTAINER_AUTHORIZATION_TOKEN' do
          it 'sets the token from the environment variable' do
            ENV['AWS_CONTAINER_AUTHORIZATION_TOKEN'] = 'good-token'
            expected_request =
              stub_request(:get, "http://169.254.170.2#{path}")
              .with(headers: { 'Authorization' => 'good-token' })
              .to_return(status: 200, body: resp)
            ContainerCredentialsProvider.new(options)
            assert_requested(expected_request)
          end

          it 'validates the token for carriage return and newline' do
            ENV['AWS_CONTAINER_AUTHORIZATION_TOKEN'] = "bad\r\ntoken"
            expect do
              ContainerCredentialsProvider.new(options)
            end.to raise_error(ContainerCredentialsProvider::InvalidTokenError)
          end
        end

        context 'AWS_CONTAINER_AUTHORIZATION_TOKEN_FILE' do
          before do
            ENV['AWS_CONTAINER_AUTHORIZATION_TOKEN_FILE'] = '/some/path/to/file'
          end

          it 'sets the token from the file' do
            expect(File).to receive(:read).and_return('good-token')
            expected_request =
              stub_request(:get, "http://169.254.170.2#{path}")
              .with(headers: { 'Authorization' => 'good-token' })
              .to_return(status: 200, body: resp)
            ContainerCredentialsProvider.new(options)
            assert_requested(expected_request)
          end

          it 'validates the token for carriage return and newline' do
            expect(File).to receive(:read).and_return("bad\r\ntoken")
            expect do
              ContainerCredentialsProvider.new(options)
            end.to raise_error(ContainerCredentialsProvider::InvalidTokenError)
          end
        end
      end

      context 'container credential service unreachable' do
        [
          Errno::EHOSTUNREACH,
          Errno::ECONNREFUSED,
          Errno::EHOSTDOWN,
          Errno::ENETUNREACH,
          SocketError,
          Timeout::Error
        ].each do |error_class|
          it "returns no credentials for #{error_class}" do
            stub_request(:get, "http://169.254.170.2#{path}").to_raise(error_class)
            expect do
              ContainerCredentialsProvider.new(options)
            end.to raise_error(/Error retrieving HTTP Credentials/)
          end
        end
      end

      context 'generalized HTTP endpoint: request' do
        file = File.expand_path('container_credentials_request.json', __dir__)
        test_cases = JSON.load_file(file)

        def setup_token_file(token_file)
          return unless token_file

          if token_file['type'] == 'error'
            expect(File).to receive(:read).and_raise(Errno::ENOENT) if token_file['errno'] == 'ENOENT'
          elsif token_file['type'] == 'success'
            expect(File).to receive(:read).and_return(token_file['content'])
          end
        end

        def setup_request(request)
          method = request['method'].downcase.to_sym
          uri = URI(request['uri'])
          headers = request['headers']

          resp = { body: '{}', status: 200 }
          if headers.empty?
            stub_request(method, uri).and_return(**resp)
          else
            stub_request(method, uri).with(headers: headers).and_return(**resp)
          end
        end

        test_cases.each do |test_case|
          it "test_case: #{test_case['description']}" do
            stub_const('ENV', test_case['env'])
            setup_token_file(test_case['token_file'])
            expect = test_case['expect']

            if expect['type'] == 'error'
              error = ArgumentError
              if expect['reason'] =~ /failed to read authorization token/
                error = ContainerCredentialsProvider::TokenFileReadError
              end
              expect { ContainerCredentialsProvider.new.identity }.to raise_error(error)
            elsif expect['type'] == 'success'
              setup_request(expect['request'])
              ContainerCredentialsProvider.new.identity
            end
          end
        end
      end

      context 'generalized HTTP endpoint: response' do
        let(:path) { '/relative/path/to/credentials' }

        before do
          ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI'] = path
        end

        file = File.expand_path('container_credentials_response.json', __dir__)
        test_cases = JSON.load_file(file)

        def setup_response(response)
          stub_request(:get, "http://169.254.170.2#{path}").to_return(
            status: response['status'],
            headers: response['headers'],
            body: response['body']
          )
        end

        test_cases.each do |test_case|
          it "test_case: #{test_case['description']}" do
            setup_response(test_case['response'])
            expect = test_case['expect']

            if expect['type'] == 'error'
              expect { ContainerCredentialsProvider.new(options) }.to raise_error(RuntimeError)
            elsif expect['type'] == 'success'
              provider = ContainerCredentialsProvider.new(options)
              creds = provider.identity
              expected = expect['credentials']
              expect(creds.access_key_id).to eq(expected['access_key_id'])
              expect(creds.secret_access_key).to eq(expected['secret_access_key'])
              expect(creds.session_token).to eq(expected['session_token'])
              expect(creds.account_id).to eq(expected['account_id'])
              expect(provider.expiration).to eq(Time.parse(expected['expiration']))
            end
          end
        end
      end
    end
  end
end
