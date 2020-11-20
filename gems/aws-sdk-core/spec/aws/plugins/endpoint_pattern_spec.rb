# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Plugins
    describe EndpointPattern do

      EndpointPatternClient = ApiHelper.sample_service(
        api: {
          'metadata' => {
            'apiVersion' => '2018-11-07',
            'protocol' => 'rest-xml',
            'endpointPrefix' => 'svc',
            'signatureVersion' => 'v4'
          },
          'operations' => {
            'Foo' => {
              'name' => 'Foo',
              'http' => { 'method' => 'POST', 'requestUri' => '/' },
              'input' => { 'shape' => 'FooInput'},
              'endpoint' => {
                'hostPrefix' => 'fancy123-'
              }
            },
            'Bar' => {
              'name' => 'Bar',
              'http' => { 'method' => 'POST', 'requestUri' => '/' },
              'input' => { 'shape' => 'BarInput'},
              'endpoint' => {
                'hostPrefix' => '{MemberA}-{MemberB}.'
              }
            }
          },
          'shapes' => {
            'FooInput' => {
              'type' => 'structure',
              'members' => {}
            },
            'BarInput' => {
              'required' => [
                'MemberA',
                'MemberB'
              ],
              'type' => 'structure',
              'members' => {
                'MemberA' => {
                  'shape' => 'String',
                  'hostLabel' => true
                },
                'MemberB' => {
                  'shape' => 'String',
                  'hostLabel' => true
                }
              }
            },
            'String' => { 'type' => 'string' }
          }
        }
      ).const_get(:Client)

      let(:creds) { Aws::Credentials.new('akid', 'secret') }

      it 'does nothing when :disable_host_prefix_injection is true' do
        c = EndpointPatternClient.new(credentials: creds, region: 'us-west-2', stub_responses: true, disable_host_prefix_injection: true)
        resp = c.foo
        expect(resp.context.http_request.endpoint.host).to eq('svc.us-west-2.amazonaws.com')
      end

      it 'updates endpoint host according to host prefix' do
        c = EndpointPatternClient.new(credentials: creds, region: 'us-west-2', stub_responses: true)
        resp = c.foo
        expect(resp.context.http_request.endpoint.host).to eq('fancy123-svc.us-west-2.amazonaws.com')
      end

      it 'raise an error if label value is not provided' do
        c = EndpointPatternClient.new(credentials: creds, region: 'us-west-2', stub_responses: true, validate_params: false)
        expect {
          c.bar
        }.to raise_error(Aws::Errors::MissingEndpointHostLabelValue)
      end

      it 'updates endpoint host with label values' do
        c = EndpointPatternClient.new(credentials: creds, region: 'us-west-2', stub_responses: true)
        resp = c.bar(member_a: 'hello', member_b: 'world')
        expect(resp.context.http_request.endpoint.host).to eq('hello-world.svc.us-west-2.amazonaws.com')
      end
    end
  end
end
