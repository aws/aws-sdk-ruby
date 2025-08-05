# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Core
    describe ContainerCredentials do
      before do
        allow_any_instance_of(ContainerCredentials).to receive(:warn)
      end

      let(:path) { '/latest/credentials?id=foobarbaz' }

      context 'without container credential service present' do
        [
          Errno::EHOSTUNREACH,
          Errno::ECONNREFUSED,
          SocketError,
          Timeout::Error
        ].each do |error_class|
          it "returns no credentials for #{error_class}" do
            stub_request(:get, "http://169.254.170.2#{path}").to_raise(error_class)
            provider = ContainerCredentials.new(credential_path: path, backoff: 0, retries: 0)
            expect { provider.identity }.to raise_error(/Error retrieving HTTP Credentials/)
          end
        end
      end

      context 'with container credential service present' do
        before do
          ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI'] = path
        end

        let(:expiration) { Time.now.utc + 3600 }
        let(:expiration2) { expiration + 3600 }

        let(:resp) { <<~JSON.strip }
          {
            "RoleArn": "arn:aws:iam::123456789012:role/BarFooRole",
            "AccessKeyId": "akid",
            "SecretAccessKey": "secret",
            "Token": "session-token",
            "Expiration": "#{expiration.strftime('%Y-%m-%dT%H:%M:%SZ')}"
          }
        JSON

        let(:resp2) { <<~JSON.strip }
          {
            "RoleArn": "arn:aws:iam::123456789012:role/BarFooRole",
            "AccessKeyId": "akid-2",
            "SecretAccessKey": "secret-2",
            "Token": "session-token-2",
            "Expiration": "#{expiration2.strftime('%Y-%m-%dT%H:%M:%SZ')}"
          }
        JSON

        before(:each) do
          stub_request(:get, "http://169.254.170.2#{path}")
            .to_return(status: 200, body: resp)
            .to_return(status: 200, body: resp2)
        end

        it 'populates credentials from the instance profile' do
          creds = ContainerCredentials.new(backoff: 0, retries: 0).identity
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq('session-token')
          expect(creds.expiration.to_s).to eq(expiration.to_s)
        end

        it 're-queries the metadata service when refreshing' do
          provider = ContainerCredentials.new
          creds = provider.identity
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq('session-token')
          expect(creds.expiration.to_s).to eq(expiration.to_s)
          provider.send(:refresh)
          creds = provider.identity
          expect(creds.access_key_id).to eq('akid-2')
          expect(creds.secret_access_key).to eq('secret-2')
          expect(creds.session_token).to eq('session-token-2')
          expect(creds.expiration.to_s).to eq(expiration2.to_s)
        end

        it "ignores ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI'] if also set" do
          # is not stubbed and should not be used
          ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI'] = 'https://amazon.com:1234/path'
          creds = ContainerCredentials.new(backoff: 0, retries: 0).identity
          expect(creds.access_key_id).to eq('akid')
          expect(creds.secret_access_key).to eq('secret')
          expect(creds.session_token).to eq('session-token')
          expect(creds.expiration.to_s).to eq(expiration.to_s)
        end

        it_behaves_like 'a refreshing credentials provider'

        context 'failure cases' do
          let(:resp) { '{}' }

          it 'given an empty response, empty credentials are returned' do
            # This handles the case when the service response but returns
            # a JSON document without credentials (error cases)
            stub_request(:get, "http://169.254.170.2#{path}").to_return(status: 200, body: resp)
            creds = ContainerCredentials.new.identity
            expect(creds.access_key_id).to be(nil)
            expect(creds.secret_access_key).to be(nil)
            expect(creds.session_token).to be(nil)
            expect(creds.expiration).to be(nil)
          end

          it 'raises if credential path or endpoint is not set' do
            ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI'] = nil
            expect { ContainerCredentials.new }.to raise_error(ArgumentError, /without a credential path/)
          end

          it 'raises for invalid JSON after retries are exhausted' do
            stub_request(:get, "http://169.254.170.2#{path}")
              .to_return(status: 200, body: '')
              .to_return(status: 200, body: '{')
              .to_return(status: 200, body: ' ')
            expect do
              ContainerCredentials.new(backoff: 0, retries: 2).identity
            end.to raise_error('Failed to parse HTTP service response.')
          end
        end

        context 'retries' do
          it 'defaults to 5' do
            stub_request(:get, "http://169.254.170.2#{path}").to_raise(SocketError)
            expect(ContainerCredentials.new(backoff: 0).retries).to be(5)
          end

          it 'retries with exponential backoff' do
            expected_request = stub_request(:get, "http://169.254.170.2#{path}").to_raise(Errno::ECONNREFUSED)
            expect(Kernel).to receive(:sleep).with(1)
            expect(Kernel).to receive(:sleep).with(2)
            expect(Kernel).to receive(:sleep).with(4)
            expect do
              ContainerCredentials.new(backoff: ->(n) { Kernel.sleep(2**n) }, retries: 3).identity
            end.to raise_error(/Error retrieving HTTP Credentials/)
            assert_requested(expected_request, times: 4)
          end

          it 'retries if get profile response is invalid JSON' do
            stub_request(:get, "http://169.254.170.2#{path}")
              .to_return(status: 200, body: ' ')
              .to_return(status: 200, body: '')
              .to_return(status: 200, body: '{')
              .to_return(status: 200, body: resp2)
            creds = ContainerCredentials.new(backoff: 0, retries: 3).identity
            expect(creds.access_key_id).to eq('akid-2')
            expect(creds.secret_access_key).to eq('secret-2')
            expect(creds.session_token).to eq('session-token-2')
            expect(creds.expiration.to_s).to eq(expiration2.to_s)
          end

          it 'retries errors parsing expiration time' do
            stub_request(:get, "http://169.254.170.2#{path}")
              .to_return(status: 200, body: '{ "Expiration": "Expiration" }')
              .to_return(status: 200, body: resp2)
            creds = ContainerCredentials.new(backoff: 0, retries: 2).identity
            expect(creds.access_key_id).to eq('akid-2')
            expect(creds.secret_access_key).to eq('secret-2')
            expect(creds.session_token).to eq('session-token-2')
            expect(creds.expiration.to_s).to eq(expiration2.to_s)
          end
        end

        context 'validating token' do
          context 'AWS_CONTAINER_AUTHORIZATION_TOKEN' do
            before do
              ENV['AWS_CONTAINER_AUTHORIZATION_TOKEN'] = "bad\r\ntoken"
            end

            it 'validates the token for carriage return and newline' do
              expect do
                ContainerCredentials.new(backoff: 0, retries: 0).identity
              end.to raise_error(ContainerCredentials::InvalidTokenError)
            end
          end

          context 'AWS_CONTAINER_AUTHORIZATION_TOKEN_FILE' do
            before do
              expect(File).to receive(:read).and_return("bad\r\ntoken")
              ENV['AWS_CONTAINER_AUTHORIZATION_TOKEN_FILE'] = '/some/path/to/file'
            end

            it 'validates the token for carriage return and newline' do
              expect do
                ContainerCredentials.new(backoff: 0, retries: 0).identity
              end.to raise_error(ContainerCredentials::InvalidTokenError)
            end
          end
        end
      end

      context 'request construction' do
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
                error = ContainerCredentials::TokenFileReadError
              end
              expect { ContainerCredentials.new.identity }.to raise_error(error)
            elsif expect['type'] == 'success'
              setup_request(expect['request'])
              ContainerCredentials.new.identity
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
              expect { ContainerCredentials.new(backoff: 0, retries: 0).identity }
                .to raise_error(RuntimeError)
            elsif expect['type'] == 'success'
              creds = ContainerCredentials.new(backoff: 0, retries: 0).identity
              credentials = expect['credentials']
              expect(creds.access_key_id).to eq(credentials['access_key_id'])
              expect(creds.secret_access_key).to eq(credentials['secret_access_key'])
              expect(creds.session_token).to eq(credentials['session_token'])
              expect(creds.expiration).to eq(Time.parse(credentials['expiration']))
            end
          end
        end
      end
    end
  end
end
