require 'spec_helper'

module Aws
  module Plugins
    describe RequestSigner do

      let(:plugin) { RequestSigner.new }

      let(:config) {
        api = Api::Builder.build(
          'metadata' => { 'endpointPrefix' => 'svc-name' }
        )
        cfg = Seahorse::Client::Configuration.new
        cfg.add_option(:endpoint, 'http://svc-name.us-west-2.amazonaws.com')
        cfg.add_option(:api, api)
        cfg.add_option(:region) { 'region-name' }
        cfg.add_option(:region_defaults) {{}}
        cfg
      }

      it 'raises an error when attempting to sign a request w/out credentials' do
        klass = Class.new(Seahorse::Client::Base)
        klass.set_api(Api::Builder.build(
          'operations' => {
            'DoSomething' => {}
          }
        ))
        klass.add_plugin(RegionalEndpoint)
        klass.add_plugin(RequestSigner)
        client = klass.new(
          signature_version: 'v4',
          endpoint: 'http://domain.region.amazonaws.com',
          region: 'region'
        )
        expect {
          client.do_something
        }.to raise_error(Errors::MissingCredentialsError)
      end

      describe 'sigv4 signing name' do

        it 'accepts a sigv4 signing name configuration option' do
          plugin.add_options(config)
          expect(config.build!(sigv4_name: 'name').sigv4_name).to eq('name')
        end

        it 'defaults the sigv4 name to the endpoint prefix' do
          plugin.add_options(config)
          expect(config.build!.sigv4_name).to eq('svc-name')
        end

        it 'prefers the signing_name metdata to endpoint_prefix' do
          plugin.add_options(config)
          expect(config.build!.sigv4_name).to eq('svc-name')
        end

      end

      describe 'sigv4 signing region' do

        it 'defaults to us-east-1 for global endpoints' do
          plugin.add_options(config)
          cfg = config.build!(endpoint: 'svc-name.amazonaws.com')
          expect(cfg.sigv4_region).to eq('us-east-1')
        end

        it 'defaults to configured region if it can not be extracted' do
          plugin.add_options(config)
          cfg = config.build!(region: 'eu-west-1', endpoint: 'localhost' )
          expect(cfg.sigv4_region).to eq('eu-west-1')
        end

        context 'services requiring endpoint specification' do
          let(:config) {
            api = Api::Builder.build({})
            cfg = Seahorse::Client::Configuration.new
            cfg.add_option(:endpoint, 'http://uniqueness.svc-name.us-west-2.amazonaws.com')
            cfg.add_option(:api, api)
            cfg.add_option(:region) { 'us-west-2' }
            cfg.add_option(:region_defaults) {{}}
            cfg
          }

          it 'uses the specified region when no endpointPrefix is present' do
            plugin.add_options(config)
            cfg = config.build!(region: 'eu-west-1')
            expect(cfg.sigv4_region).to eq('eu-west-1')
          end
        end

      end

      describe 'apply authtype trait' do

        let(:dummy_credentials) { Aws::Credentials.new('akid', 'secret') }
        let(:klass) {
          klass = Class.new(Seahorse::Client::Base)
          klass.set_api(Api::Builder.build(
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
                'authtype': 'none'
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
          ))
          klass.add_plugin(RegionalEndpoint)
          klass.add_plugin(RequestSigner)
          klass
        }

        it `unsigns payload for operations has 'v4-unsigned-payload' for 'authtype'` do
          plugin.add_options(config)
          client = klass.new(
            signature_version: 'v4',
            endpoint: 'https://domain.region.amazonaws.com',
            credentials: dummy_credentials,
            region: 'region',
            sigv4_name: 'svc_name'
          )
          stub_request(:get, "https://domain.region.amazonaws.com/")
          resp = client.streaming_foo(foo_name: 'foo')
          req = resp.context.http_request
          expect(req.headers['x-amz-content-sha256']).to eq('UNSIGNED-PAYLOAD')
        end

        it `signs payload for operations without 'v4-unsigned-payload' for 'authtype'` do
          plugin.add_options(config)
          client = klass.new(
            signature_version: 'v4',
            endpoint: 'https://domain.region.amazonaws.com',
            credentials: dummy_credentials,
            region: 'region',
            sigv4_name: 'svc_name'
          )
          stub_request(:get, "https://domain.region.amazonaws.com/")
          resp = client.non_streaming_bar(bar_name: 'bar')
          req = resp.context.http_request
          expect(req.headers['x-amz-content-sha256']).not_to eq('UNSIGNED-PAYLOAD')
        end

        it `signs payload for HTTP request even when 'v4-unsigned-payload' is set` do
          plugin.add_options(config)
          client = klass.new(
            signature_version: 'v4',
            endpoint: 'http://domain.region.amazonaws.com',
            credentials: dummy_credentials,
            region: 'region',
            sigv4_name: 'svc_name'
          )
          stub_request(:get, "http://domain.region.amazonaws.com/")
          resp = client.streaming_foo(foo_name: 'foo')
          req = resp.context.http_request
          expect(req.headers['x-amz-content-sha256']).not_to eq('UNSIGNED-PAYLOAD')
        end

      end
    end
  end
end
