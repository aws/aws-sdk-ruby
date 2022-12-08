# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Plugins
    describe Sign do

      TestClient = ApiHelper.sample_service(
        operations: {
          'Operation' => {
            'name' => 'Operation',
            'http' => { 'method' => 'POST', 'requestUri' => '/' },
          },
          'StreamingOperation' => {
            'name' => 'Operation',
            'http' => { 'method' => 'POST', 'requestUri' => '/streaming' },
            'authtype' => 'v4-unsigned-body'
          },
        },
        endpoint_rules: {
          'version' => '1.0', 'parameters' => {}, 'rules' => []
        }
      ).const_get(:Client)

      let(:region) { 'us-west-2' }
      let(:auth_scheme) { {'name' => 'none'} }
      let(:endpoint) { 'https://svc.amazonaws.com' }
      let(:client_options) do
        {
          stub_responses: true,
          region: region,
          endpoint_provider:
            double(
              resolve_endpoint:
                Aws::Endpoints::Endpoint.new(
                  url: endpoint,
                  properties: {
                    'authSchemes' => [auth_scheme]
                  }
                )
            )
        }
      end

      let(:client) { TestClient.new(client_options) }

      context 'sigv4' do
        let(:auth_scheme) do
          {
            'name' => 'sigv4',
            'signingRegion' => region,
            'signingName' => 'svc',
          }
        end

        it 'signs the request with sigv4' do
          resp = client.operation
          req = resp.context.http_request
          expect(req.headers['authorization']).to include('AWS4-HMAC-SHA256')
        end

        it 'prefers the configured sigv4_name' do
          client = TestClient.new(
            client_options.merge(sigv4_name: 'override-name'))
          resp = client.operation
          req = resp.context.http_request
          expect(req.headers['authorization']).to include('override-name')
        end

        it 'prefers the configured sigv4_region over the authscheme' do
          client = TestClient.new(
            client_options.merge(sigv4_region: 'config-region'))
          resp = client.operation
          req = resp.context.http_request
          expect(req.headers['authorization']).to include('config-region')
        end

        it 'prefers the context sigv4_region over configured sigv4_region' do
          client = TestClient.new(
            client_options.merge(sigv4_region: 'config-region'))

          allow_any_instance_of(Aws::Plugins::Sign::Handler).to receive(:call).and_wrap_original do |m, *args|
            args[0][:sigv4_region] = 'context-region'
            m.call(*args)
          end

          resp = client.operation
          req = resp.context.http_request
          expect(req.headers['authorization']).to include('context-region')
        end

        it 'raises an error when attempting to sign a request w/out credentials' do
          client = TestClient.new(client_options.merge(credentials: nil) )
          expect {
            client.operation
          }.to raise_error(Errors::MissingCredentialsError)
        end

        describe 'authtype trait' do
          it "uses unsigned payload for operations with 'v4-unsigned-payload' for 'authtype'" do
            resp = client.streaming_operation
            req = resp.context.http_request
            expect(req.headers['x-amz-content-sha256']).to eq('UNSIGNED-PAYLOAD')
          end

          it "signs payload for operations without 'v4-unsigned-payload' for 'authtype'" do
            resp = client.operation
            req = resp.context.http_request
            expect(req.headers['x-amz-content-sha256']).not_to eq('UNSIGNED-PAYLOAD')
          end

          context 'http endpoint' do
            let(:endpoint) { 'http://insecure.com' }
            it "signs payload for HTTP request even when 'v4-unsigned-payload' is set" do
              resp = client.streaming_operation
              req = resp.context.http_request
              expect(req.headers['x-amz-content-sha256']).not_to eq('UNSIGNED-PAYLOAD')
            end
          end
        end

        describe 'clock skew correction' do
          let(:clock_skew) { Retries::ClockSkew.new }
          let(:now) { Time.now }
          let(:utc) { now.utc }

          before(:each) do
            allow(Time).to receive(:now).and_return(now)
            allow(now).to receive(:utc).and_return(utc)
          end

          it 'skips clock skew correction when clock_skew is not available on the configuration' do
            client = TestClient.new(client_options.merge(
              clock_skew: nil,
            ))
            resp = client.operation
            expect(resp.context.http_request.headers['X-Amz-Date']).
              to eq now.utc.strftime("%Y%m%dT%H%M%SZ")
          end

          it 'skips clock skew correction when correct_clock_skew is false' do
            client = TestClient.new(client_options.merge(
              clock_skew: clock_skew,
              correct_clock_skew: false
            ))
            expect(clock_skew).not_to receive(:clock_correction)
            resp = client.operation
            expect(resp.context.http_request.headers['X-Amz-Date']).
              to eq now.utc.strftime("%Y%m%dT%H%M%SZ")
          end

          it 'skips clock skew correction when clock skew is 0' do
            client = TestClient.new(client_options.merge(
              clock_skew: clock_skew,
              correct_clock_skew: true
            ))
            clock_skew = client.config.clock_skew
            expect(clock_skew).to receive(:clock_correction).and_return(0)
            resp = client.operation
            expect(resp.context.http_request.headers['X-Amz-Date']).
              to eq now.utc.strftime("%Y%m%dT%H%M%SZ")
          end

          it 'applies clock skew correction when clock skew is non zero' do
            client = TestClient.new(client_options.merge(
              clock_skew: clock_skew,
              correct_clock_skew: true
            ))
            clock_skew = client.config.clock_skew
            expect(clock_skew).to receive(:clock_correction).and_return(1000)
            resp = client.operation
            expect(resp.context.http_request.headers['X-Amz-Date']).
              to eq (now.utc + 1000).strftime("%Y%m%dT%H%M%SZ")
          end
        end
      end

      context 'sigv4a' do
        let(:auth_scheme) do
          {
            'name' => 'sigv4a',
            'signingRegionSet' => ['*'],
            'signingName' => 'svc',
          }
        end

        it 'signs the request with sigv4a' do
          expect_auth(auth_scheme)
          client.operation
        end

        it "uses unsigned payload for operations with 'v4-unsigned-payload' for 'authtype'" do
          expect_auth(auth_scheme)
          resp = client.streaming_operation
          req = resp.context.http_request
          expect(req.headers['x-amz-content-sha256']).to eq('UNSIGNED-PAYLOAD')
        end
      end

      context 'bearer' do
        let(:auth_scheme) do
          {
            'name' => 'bearer',
          }
        end

        it 'signs the request with bearer' do
          resp = client.operation
          req = resp.context.http_request
          expect(req.headers['authorization']).to include("Bearer")
        end

        context 'http endpoint' do
          let(:endpoint) { 'http://insecure.com' }

          it 'raises an ArgumentError and does not sign the request' do
            expect do
              client.operation
            end.to raise_error(ArgumentError)
          end
        end

        it 'raises an error when attempting to sign a request w/out a token' do
          client = TestClient.new(client_options.merge(token_provider: nil))
          expect do
            client.operation
          end.to raise_error(Errors::MissingBearerTokenError)
        end
      end

      context 'sigv2' do
        before do
          allow(Struct).to receive(:responds_to?).with(:signature_version).and_return(true)
          allow(Struct).to receive(:signature_version).and_return('s3')
        end

        it 'skips signing' do
          resp = client.operation
          req = resp.context.http_request
          expect(req.headers['authorization']).to be_nil
        end
      end

      context 'none' do
        let(:auth_scheme) do
          {
            'name' => 'none',
          }
        end

        it 'does not sign the request' do
          resp = client.operation
          req = resp.context.http_request
          expect(req.headers.key?('authorization')).to be(false)
        end
      end
    end
  end
end
