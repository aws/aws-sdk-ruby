# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe Endpoints do
    let(:metadata) do
      {
        'apiVersion' => '2022-04-20',
        'protocol' => 'rest-json',
        'endpointPrefix' => 'service'
      }.tap do |h|
        h['signingName'] = signing_name if signing_name
        h['signatureVersion'] = signature_version if signature_version
      end
    end

    let(:api) do
      {
        'metadata' => metadata,
        'operations' => {
          'Operation' => {
            'name' => 'Operation',
            'http' => { 'method' => 'POST', 'requestUri' => '/' },
          }
        },
        'shapes' => {}
      }.tap do |h|
        h['operations']['Operation']['authtype'] = operation_authtype if operation_authtype
      end
    end

    let(:signing_name) { nil }
    let(:signature_version) { nil }
    let(:operation_authtype) { nil }

    let(:endpoints_service) do
      ApiHelper.sample_service(
        api: api,
        endpoint_rules: {
          'version' => '1.0', 'parameters' => {}, 'rules' => []
        }
      )
    end

    let(:client) do
      endpoints_service.const_get(:Client).new(stub_responses: true)
    end

    def expect_auth_scheme(auth_scheme)
      method = Aws::Endpoints.method(:resolve_auth_scheme)
      expect(Aws::Endpoints).to receive(:resolve_auth_scheme) do |*args|
        resolved = method.call(*args)
        expect(resolved).to include(auth_scheme)
        resolved
      end
    end

    let(:endpoint) do
      Aws::Endpoints::Endpoint.new(
        properties: properties,
        url: 'https://peccy-service.us-peccy-1.amazonaws.com'
      )
    end

    let(:properties) do
      {}.tap do |hash|
        hash['authSchemes'] = auth_schemes if auth_schemes
      end
    end

    before do
      expect_any_instance_of(endpoints_service.const_get(:EndpointProvider))
        .to receive(:resolve_endpoint).and_return(endpoint)
    end

    describe '#resolve_auth_scheme' do
      context 'auth defaults' do
        let(:auth_schemes) { nil }

        context 'sigv4 defaults' do
          %w[v4 v4-unsigned-body].each do |auth_type|
            let(:signature_version) { auth_type }

            it 'signs with sigv4' do
              expect_auth_scheme({ 'name' => 'sigv4' })
              client.operation
            end
          end
        end

        context 's3 sigv4 defaults' do
          %w[s3 s3v4].each do |auth_type|
            let(:signature_version) { auth_type }

            it 'signs with sigv4 with double encoding' do
              expect_auth_scheme(
                {
                  'name' => 'sigv4',
                  'disableDoubleEncoding' => true,
                  'disableNormalizePath' => true
                }
              )
              client.operation
            end
          end
        end

        context 'bearer defaults' do
          let(:signature_version) { 'bearer' }

          it 'signs with bearer' do
            expect_auth_scheme({ 'name' => 'bearer' })
            client.operation
          end
        end

        context 'none defaults' do
          let(:signature_version) { 'none' }

          it 'does not sign' do
            expect_auth_scheme({ 'name' => 'none' })
            client.operation
          end
        end

        context 'no authtype' do
          it 'does not sign' do
            expect_auth_scheme({ 'name' => 'none' })
            client.operation
          end
        end

        context 'precedence' do
          let(:operation_authtype) { 'v4' }
          let(:signature_version) { 'none' }

          it 'prefers operation authtype over signatureVersion' do
            expect_auth_scheme({ 'name' => 'sigv4' })
            client.operation
          end
        end
      end

      context 'endpoint has auth scheme' do
        context 'authtype is not supported' do
          let(:auth_schemes) { [{ 'name' => 'unknown' }] }

          it 'raises if auth type is not supported' do
            expect { client.operation }
              .to raise_error(/No supported auth scheme/)
          end
        end

        context 'sigv4a region default' do
          before do
            stub_const(
              'Aws::Plugins::Sign::SUPPORTED_AUTH_TYPES',
              Aws::Plugins::Sign::SUPPORTED_AUTH_TYPES + ['sigv4a']
            )

            mock_signature = Aws::Sigv4::Signature.new(headers: {})
            signer = double('sigv4a_signer', sign_request: mock_signature)

            expect(Aws::Sigv4::Signer).to receive(:new)
              .with(hash_including(signing_algorithm: :sigv4a))
              .and_return(signer)
          end

          let(:auth_schemes) { [{ 'name' => 'sigv4a' }] }

          it 'defaults the signing region set' do
            expect_auth_scheme({ 'signingRegionSet' => ['*'] })
            client.operation
          end
        end

        context 'sigv4 region default' do
          let(:auth_schemes) { [{ 'name' => 'sigv4' }] }

          it 'defaults the signing region from config' do
            expect_auth_scheme({ 'signingRegion' => 'us-stubbed-1' })
            client.operation
          end
        end

        context 'sigv4-s3express region default' do
          let(:auth_schemes) { [{ 'name' => 'sigv4-s3express' }] }

          it 'defaults the signing region from config' do
            expect_auth_scheme({ 'signingRegion' => 'us-stubbed-1' })
            client.operation
          end
        end

        context 'default precedence' do
          let(:auth_schemes) { [{ 'name' => 'sigv4' }] }
          let(:signing_name) { 'service-override' }

          it 'prefers signingName over endpointPrefix' do
            expect_auth_scheme({ 'signingName' => 'service-override' })
            client.operation
          end
        end

        context 'auth scheme precedence' do
          let(:auth_schemes) do
            [{ 'name' => 'sigv4', 'signingName' => 'override', 'signingRegion' => 'override' }]
          end

          it 'explicit usage of auth scheme values' do
            expect_auth_scheme({ 'signingName' => 'override', 'signingRegion' => 'override' })
            client.operation
          end
        end
      end
    end
  end
end
