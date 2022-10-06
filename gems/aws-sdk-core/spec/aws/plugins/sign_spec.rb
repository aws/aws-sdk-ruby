# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Plugins
    describe Sign do

      TestClient = ApiHelper.sample_service(
        api: {
        'metadata' => {
          'protocol' => 'rest-xml',
          'signatureVersion' => 'v4',
          'endpointPrefix' => 'svc',
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
      },
        endpoint_rules:
          ApiHelper.regionalized_endpoint_rules('svc')
      ).const_get(:Client)

      class OverrideAuthScheme < Seahorse::Client::Plugin
        option(:override_auth_scheme)

        def add_handlers(handlers, cfg)
          handlers.add(Handler, step: :sign, priority: 51)
        end
        class Handler < Seahorse::Client::Handler
          def call(context)
            if (context.config.override_auth_scheme)
              context[:auth_scheme] = context.config.override_auth_scheme
            end
            @handler.call(context)
          end
        end
      end

      TestClient.add_plugin(OverrideAuthScheme)

      let(:region) { 'us-west-2' }
      let(:auth_scheme) do
        {
          'name' => 'sigv4',
          'signingRegion' => region,
          'signingName' => 'svc',
          'disableDoubleEncoding' => false
        }
      end
      let(:client_options) do
        {
          stub_responses: true,
          region: region,
          override_auth_scheme: auth_scheme
        }
      end

      let(:client) { TestClient.new(client_options) }
      context 'sigv4' do

        it 'signs the request with sigv4' do
          resp = client.non_streaming_bar(bar_name: 'bar')
          req = resp.context.http_request
          expect(req.headers['authorization']).to include('AWS4-HMAC-SHA256')
        end

        it 'prefers the configured sigv4_name' do
          client = TestClient.new(
            client_options.merge(sigv4_name: 'override-name'))
          resp = client.non_streaming_bar(bar_name: 'bar')
          req = resp.context.http_request
          expect(req.headers['authorization']).to include('override-name')
        end

        it 'prefers the configured sigv4_region over the authscheme' do
          client = TestClient.new(
            client_options.merge(sigv4_region: 'config-region'))
          resp = client.non_streaming_bar(bar_name: 'bar')
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

          resp = client.non_streaming_bar(bar_name: 'bar')
          req = resp.context.http_request
          expect(req.headers['authorization']).to include('context-region')
        end

        it 'raises an error when attempting to sign a request w/out credentials' do
          client = TestClient.new(region: 'us-west-1')
          expect {
            client.non_streaming_bar(bar_name: 'bar')
          }.to raise_error(Errors::MissingCredentialsError)
        end

        describe 'authtype trait' do
          it "uses unsigned payload for operations with 'v4-unsigned-payload' for 'authtype'" do
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
            client = TestClient.new(
              client_options.merge(endpoint: 'http://insecure.com'))
            resp = client.streaming_foo(foo_name: 'foo')
            req = resp.context.http_request
            expect(req.headers['x-amz-content-sha256']).not_to eq('UNSIGNED-PAYLOAD')
          end
        end

        describe 'clock skew correction' do
          let(:clock_skew) { Retries::ClockSkew.new }
          let(:datetime) { '20120101T10:11:12Z' }
          let(:now) { Time.parse(datetime) }
          let(:utc) { now.utc }

          before(:each) {
            allow(Time).to receive(:now).and_return(now)
            allow(now).to receive(:utc).and_return(utc)
            allow(utc).to receive(:strftime).and_return(datetime)
          }

          it 'skips clock skew correction when clock_skew is not available on the configuration' do
            client = TestClient.new(client_options.merge(
              clock_skew: nil,
            ))
            resp = client.non_streaming_bar(bar_name: 'bar')
            expect(resp.context.http_request.headers['X-Amz-Date']).
              to eq now.utc.strftime("%Y%m%dT%H%M%SZ")
          end

          it 'skips clock skew correction when correct_clock_skew is false' do
            client = TestClient.new(client_options.merge(
              clock_skew: clock_skew,
              correct_clock_skew: false
            ))
            expect(clock_skew).not_to receive(:clock_correction)
            resp = client.non_streaming_bar(bar_name: 'bar')
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
            resp = client.non_streaming_bar(bar_name: 'bar')
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
            resp = client.non_streaming_bar(bar_name: 'bar')
            expect(resp.context.http_request.headers['X-Amz-Date']).
              to eq (now.utc + 1000).strftime("%Y%m%dT%H%M%SZ")
          end
        end
      end

    end
  end
end
