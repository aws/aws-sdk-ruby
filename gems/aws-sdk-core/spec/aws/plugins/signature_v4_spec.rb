# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Plugins
    describe SignatureV4 do

      Sigv4Client = ApiHelper.sample_service(metadata: {
        'signatureVersion' => 'v4',
        'endpointPrefix' => 'svc-name',
      }).const_get(:Client)

      let(:plugin) { SignatureV4.new }

      let(:options) {{
        region: 'us-east-1',
        access_key_id: 'akid',
        secret_access_key: 'secret',
      }}

      it 'raises an error when attempting to sign a request w/out credentials' do
        client = Sigv4Client.new(region: 'us-west-1')
        expect {
          client.example_operation
        }.to raise_error(Errors::MissingCredentialsError)
      end

      describe 'sigv4 signing name' do

        it 'accepts a sigv4 signing name configuration option' do
          client = Sigv4Client.new(options.merge(
            sigv4_name: 'name',
          ))
          expect(client.config.sigv4_name).to eq('name')
        end

        it 'uses the endpoint provider for service name' do
          expect(Aws::Partitions::EndpointProvider)
            .to receive(:signing_service)
                  .with('other-region', 'svc-name')
                  .and_return('override-service')

          client = Sigv4Client.new(options.merge(
            region: 'other-region',
            endpoint: 'https://svc-name.amazonaws.com'
          ))
          expect(client.config.sigv4_name).to eq('override-service')
        end

        it 'defaults the sigv4 name to the endpoint prefix' do
          svc = ApiHelper.sample_service(metadata: {
            'signatureVersion' => 'v4',
            'endpointPrefix' => 'endpoint-prefix',
          })
          client = svc::Client.new(options)
          expect(client.config.sigv4_name).to eq('endpoint-prefix')
        end

        it 'prefers the signingName over endpointPrefix' do
          svc = ApiHelper.sample_service(metadata: {
            'signatureVersion' => 'v4',
            'endpointPrefix' => 'endpoint-prefix',
            'signingName' => 'signing-name',
          })
          client = svc::Client.new(options)
          expect(client.config.sigv4_name).to eq('signing-name')
        end

      end

      describe 'sigv4 signing region' do

        it 'uses the endpoint provider for global endpoints' do
          expect(Aws::Partitions::EndpointProvider)
            .to receive(:signing_region)
                  .with('other-region', 'svc-name', nil)
                  .and_return('us-east-1')

          client = Sigv4Client.new(options.merge(
            region: 'other-region',
            endpoint: 'https://svc-name.amazonaws.com'
          ))
          expect(client.config.sigv4_region).to eq('us-east-1')
        end

        it 'defaults to configured region if it can not be extracted' do
          client = Sigv4Client.new(options.merge(
            region: 'other-region',
            endpoint: 'https://localhost:3000'
          ))
          expect(client.config.sigv4_region).to eq('other-region')
        end

        it 'uses the specified region when no endpointPrefix is present' do
          svc = ApiHelper.sample_service(metadata: {
            'signatureVersion' => 'v4',
            'signingName' => 'signing-name',
            'endpointPrefix' => nil,
          })
          client = svc::Client.new(options.merge(
            region: 'eu-west-1',
            endpoint: 'http://uniqueness.svc.us-west-2.amazonaws.com',
          ))
          expect(client.config.sigv4_name).to eq('signing-name')
          expect(client.config.sigv4_region).to eq('eu-west-1')
        end

        it 'uses the endpointPrefix to find the signing_region' do
          svc = ApiHelper.sample_service(metadata: {
            'signatureVersion' => 'v4',
            'signingName' => 'signing-name',
            'endpointPrefix' => 'api.service',
          })
          allow(Aws::Plugins::RegionalEndpoint).to receive(:warn)
          expect(Aws::Partitions::EndpointProvider)
            .to receive(:signing_region)
            .with('us-east-1', 'api.service', nil)
            .and_return('us-east-1')

          client = svc::Client.new(options.merge(
            region: 'fips-us-east-1',
            ))
          expect(client.config.sigv4_name).to eq('signing-name')
          expect(client.config.sigv4_region).to eq('us-east-1')
        end

      end

      describe 'apply authtype trait' do

        let(:api) {{
          'metadata' => {
            'protocol' => 'rest-xml',
            'signatureVersion' => 'v4',
            'endpointPrefix' => 'svc-name',
          },
          'operations' => {
            'StreamingFoo' => {
              'name' => 'StreamingFoo',
              'http' => {
                'method' => 'POST',
                'requestUri' => '/foo/{fooName}'
              },
              'input' => {
                'shape' => 'StreamingFooRequest'
              },
              'output' => {
                'shape' => 'StreamingFooResponse'
              },
              'authtype'=> 'v4-unsigned-body'
            },
            'NonStreamingBar' => {
              'name' => 'NonStreamingBar',
              'http' => {
                'method' => 'POST',
                'requestUri' => '/bar/{barName}'
              },
              'input' => {
                'shape' => 'NonStreamingBarRequest'
              },
              'output' => {
                'shape' => 'NonStreamingBarResponse'
              },
            }
          },
          'shapes' => {
            'FooName' => {
              'type' => 'string'
            },
            'BarName' => {
              'type' => 'string'
            },
            'Boolean' => {
              'type' => 'boolean'
            },
            'StreamingFooRequest' => {
              'type' => 'structure',
              'members' => {
                'fooName' => {
                  'shape' => 'FooName',
                  'location' => 'uri',
                  'locationName' => 'fooName'
                }
              }
            },
            'NonStreamingBarRequest' => {
              'type' => 'structure',
                'members' => {
                  'barName' => {
                    'shape' => 'BarName',
                    'location' => 'uri',
                    'locationName' => 'barName'
                  }
                }
              },
              'StreamingFooResponse' => {
                'type' => 'structure',
                'members' => {
                  'Return' => {
                    'shape' => 'Boolean',
                    'locationName' => 'return'
                  }
                }
              },
              'NonStreamingBarResponse' => {
                'type' => 'structure',
                'members' => {
                  'Return' => {
                  'shape' => 'Boolean',
                  'locationName' => 'return'
                }
              }
            }
          }
        }}
        let(:svc) { ApiHelper.sample_service(api: api) }
        let(:client) {
          svc::Client.new(options.merge(
            region: 'region',
            endpoint: 'https://domain.region.amazonaws.com',
            stub_responses: true
          ))
        }

        let(:datetime) { '20120101T10:11:12Z' }
        let(:now) { Time.parse(datetime) }
        let(:utc) { now.utc }

        before(:each) {
          allow(Time).to receive(:now).and_return(now)
          allow(now).to receive(:utc).and_return(utc)
          allow(utc).to receive(:strftime).and_return(datetime)
        }

        it "unsigns payload for operations has 'v4-unsigned-payload' for 'authtype'" do
          allow(Time).to receive(:now).and_return(now)
          resp = client.streaming_foo(foo_name: 'foo')
          req = resp.context.http_request
          expect(req.headers['x-amz-content-sha256']).to eq('UNSIGNED-PAYLOAD')
        end

        it "signs payload for operations without 'v4-unsigned-payload' for 'authtype'" do
          resp = client.non_streaming_bar(bar_name: 'bar')
          req = resp.context.http_request
          expect(req.headers['x-amz-content-sha256']).not_to eq('UNSIGNED-PAYLOAD')
        end

        it "signs payload for HTTP request even when 'v4-unsigned-payload' is set" do
          client = svc::Client.new(options.merge(
            region: 'region',
            endpoint: 'http://domain.region.amazonaws.com',
            stub_responses: true
          ))
          resp = client.streaming_foo(foo_name: 'foo')
          req = resp.context.http_request
          expect(req.headers['x-amz-content-sha256']).not_to eq('UNSIGNED-PAYLOAD')
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
          client = Sigv4Client.new(options.merge(
            clock_skew: nil,
            stub_responses: true
          ))
          resp = client.example_operation
          expect(resp.context.http_request.headers['X-Amz-Date']).
            to eq now.utc.strftime("%Y%m%dT%H%M%SZ")
        end

        it 'skips clock skew correction when correct_clock_skew is false' do
          client = Sigv4Client.new(options.merge(
            clock_skew: clock_skew,
            correct_clock_skew: false,
            stub_responses: true
          ))
          expect(clock_skew).not_to receive(:clock_correction)
          resp = client.example_operation
          expect(resp.context.http_request.headers['X-Amz-Date']).
            to eq now.utc.strftime("%Y%m%dT%H%M%SZ")
        end

        it 'skips clock skew correction when clock skew is 0' do
          client = Sigv4Client.new(options.merge(
            clock_skew: clock_skew,
            correct_clock_skew: true,
            stub_responses: true
          ))
          clock_skew = client.config.clock_skew
          expect(clock_skew).to receive(:clock_correction).and_return(0)
          resp = client.example_operation
          expect(resp.context.http_request.headers['X-Amz-Date']).
            to eq now.utc.strftime("%Y%m%dT%H%M%SZ")
        end

        it 'applies clock skew correction when clock skew is non zero' do
          client = Sigv4Client.new(options.merge(
            clock_skew: clock_skew,
            correct_clock_skew: true,
            stub_responses: true
          ))
          clock_skew = client.config.clock_skew
          expect(clock_skew).to receive(:clock_correction).and_return(1000)
          resp = client.example_operation
          expect(resp.context.http_request.headers['X-Amz-Date']).
            to eq (now.utc + 1000).strftime("%Y%m%dT%H%M%SZ")
        end
      end
    end
  end
end
