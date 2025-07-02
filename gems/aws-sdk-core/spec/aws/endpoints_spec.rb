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
        h['auth'] = auth if auth
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
        h['operations']['Operation']['auth'] = operation_auth if operation_auth
      end
    end

    let(:signing_name) { nil }
    let(:signature_version) { nil }
    let(:auth) { nil }
    let(:operation_authtype) { nil }
    let(:operation_auth) { nil }

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
        .to receive(:resolve_endpoint).at_least(:once).and_return(endpoint)
    end

    describe '#resolve_auth_scheme' do
      context 'auth scheme defaults' do
        let(:auth_schemes) { nil }

        context 'auth trait' do
          context 'sigv4 defaults' do
            let(:auth) { ['aws.auth#sigv4'] }

            it 'signs with sigv4' do
              expect_auth({ 'name' => 'sigv4' })
              client.operation
            end

            context 's3 signature version' do
              let(:signature_version) { 's3' }

              it 'disables double encoding and normalize path' do
                expect_auth(
                  {
                    'name' => 'sigv4',
                    'disableDoubleEncoding' => true,
                    'disableNormalizePath' => true
                  }
                )
                client.operation
              end
            end

            context 's3v4 signature version' do
              let(:signature_version) { 's3v4' }

              it 'disables double encoding and normalize path' do
                expect_auth(
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

          context 'sigv4a defaults' do
            let(:auth) { ['aws.auth#sigv4a'] }

            it 'signs with sigv4' do
              expect_auth({ 'name' => 'sigv4a' })
              client.operation
            end

            context 's3 signature version' do
              let(:signature_version) { 's3' }

              it 'disables double encoding and normalize path' do
                expect_auth(
                  {
                    'name' => 'sigv4a',
                    'disableDoubleEncoding' => true,
                    'disableNormalizePath' => true
                  }
                )
                client.operation
              end
            end

            context 's3v4 signature version' do
              let(:signature_version) { 's3v4' }

              it 'disables double encoding and normalize path' do
                expect_auth(
                  {
                    'name' => 'sigv4a',
                    'disableDoubleEncoding' => true,
                    'disableNormalizePath' => true
                  }
                )
                client.operation
              end
            end
          end

          context 'bearer defaults' do
            let(:auth) { ['smithy.api#httpBearerAuth'] }

            it 'signs with bearer' do
              expect_auth({ 'name' => 'bearer' })
              client.operation
            end
          end

          context 'none defaults' do
            let(:auth) { ['smithy.api#noAuth'] }

            it 'does not sign' do
              expect_auth({ 'name' => 'none' })
              client.operation
            end
          end

          context 'unsupported' do
            before do
              stub_const(
                'Aws::Endpoints::SUPPORTED_AUTH_TRAITS',
                Aws::Endpoints::SUPPORTED_AUTH_TRAITS - ['aws.auth#sigv4a']
              )
            end

            let(:auth) { ['aws.auth#sigv4a'] }

            it 'raises if auth type is not supported' do
              expect { client.operation }
                .to raise_error(/No supported auth trait/)
            end
          end

          context 'operation precedence' do
            let(:operation_auth) { ['smithy.api#noAuth'] }
            let(:auth) { ['aws.auth#sigv4'] }

            it 'prefers operation auth over service auth' do
              expect_auth({ 'name' => 'none' })
              client.operation
            end
          end

          context 'resolution order' do
            before do
              stub_const(
                'Aws::Endpoints::SUPPORTED_AUTH_TRAITS',
                Aws::Endpoints::SUPPORTED_AUTH_TRAITS - ['aws.auth#sigv4a']
              )
            end

            let(:auth) { %w[aws.auth#sigv4a aws.auth#sigv4] }

            it 'prefers the first supported auth trait' do
              expect_auth({ 'name' => 'sigv4' })
              client.operation
            end
          end
        end

        context 'legacy signatureVersion and authtype' do
          context 'sigv4 defaults' do
            %w[v4 v4-unsigned-body].each do |auth_type|
              let(:signature_version) { auth_type }

              it 'signs with sigv4' do
                expect_auth({ 'name' => 'sigv4' })
                client.operation
              end
            end
          end

          context 's3 sigv4 defaults' do
            %w[s3 s3v4].each do |auth_type|
              let(:signature_version) { auth_type }

              it 'signs with sigv4 with double encoding' do
                expect_auth(
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
              expect_auth({ 'name' => 'bearer' })
              client.operation
            end
          end

          context 'none defaults' do
            let(:signature_version) { 'none' }

            it 'does not sign' do
              expect_auth({ 'name' => 'none' })
              client.operation
            end
          end

          context 'operation precedence' do
            let(:operation_authtype) { 'none' }
            let(:signature_version) { 'v4' }

            it 'prefers operation authtype over signatureVersion' do
              expect_auth({ 'name' => 'none' })
              client.operation
            end
          end
        end

        context 'no authtype' do
          it 'does not sign' do
            expect_auth({ 'name' => 'none' })
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
          let(:auth_schemes) { [{ 'name' => 'sigv4a' }] }

          it 'defaults the signing region set from config' do
            expect_auth({ 'name' => 'sigv4a', 'signingRegionSet' => [client.config.region] })
            client.operation
          end
        end

        context 'sigv4 region default' do
          let(:auth_schemes) { [{ 'name' => 'sigv4' }] }

          it 'defaults the signing region from config' do
            expect_auth({ 'signingRegion' => client.config.region })
            client.operation
          end
        end

        context 'sigv4-s3express region default' do
          let(:auth_schemes) { [{ 'name' => 'sigv4-s3express' }] }

          it 'defaults the signing region from config' do
            expect_auth({ 'signingRegion' => 'us-stubbed-1' })
            client.operation
          end
        end

        context 'sigv4/sigv4a signingName default' do
          let(:auth_schemes) { [{ 'name' => 'sigv4' }] }
          let(:signing_name) { 'service-override' }

          it 'prefers signingName over endpointPrefix' do
            expect_auth({ 'signingName' => 'service-override' })
            client.operation
          end
        end

        context 'sigv4 auth scheme precedence' do
          let(:auth_schemes) do
            [{ 'name' => 'sigv4', 'signingName' => 'override', 'signingRegion' => 'override' }]
          end

          it 'explicit usage of auth scheme values' do
            expect_auth({ 'name' => 'sigv4', 'signingName' => 'override', 'signingRegion' => 'override' })
            client.operation
          end
        end

        context 'sigv4a auth scheme precedence' do
          let(:auth_schemes) do
            [{ 'name' => 'sigv4a', 'signingName' => 'override', 'signingRegionSet' => ['override1', 'override2'] }]
          end

          it 'explicit usage of auth scheme values' do
            expect_auth({ 'name' => 'sigv4a', 'signingName' => 'override', 'signingRegionSet' => ['override1', 'override2'] })
            client.operation
          end

          it 'allows config to override auth scheme' do
            client.config.sigv4a_signing_region_set = ['config-override']
            expect_auth({ 'name' => 'sigv4a', 'signingName' => 'override', 'signingRegionSet' => ['config-override'] })
            client.operation
          end
        end
      end
    end
  end
end
