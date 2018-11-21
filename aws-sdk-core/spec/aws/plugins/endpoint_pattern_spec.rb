require_relative '../../spec_helper'

module Aws
  module Plugins
    describe EndpointPattern do

      let(:metadata) {{
        'apiVersion' => '2018-11-07',
        'protocol' => 'rest-xml',
        'endpointPrefix' => 'svc',
        'signatureVersion' => 'v4'
      }}

      let(:operations) {{
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
      }}

      let(:shapes) {{
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
      }}
      
      let(:api) {
        Aws::Api::Builder.build(
          'metadata' => metadata,
          'operations' => operations,
          'shapes' => shapes
        )
      }

      let(:svc) {
        Aws.add_service(:Svc, api: api)::Client
      }
      let(:creds) { Aws::Credentials.new('akid', 'secert') }

      before do
        Aws.send(:remove_const, :Svc) if Aws.const_defined?(:Svc)
        svc.add_plugin(EndpointPattern)
      end

      it 'does nothing when custom endpoint is provided' do
        c = svc.new(credentials: creds, endpoint: 'https://abc.com', region: 'us-west-2', stub_responses: true)
        resp = c.foo
        expect(resp.context.http_request.endpoint.host).to eq('abc.com')
      end

      it 'does nothing when :disable_host_prefix_injection is true' do
        c = svc.new(credentials: creds, region: 'us-west-2', stub_responses: true, disable_host_prefix_injection: true)
        resp = c.foo
        expect(resp.context.http_request.endpoint.host).to eq('svc.us-west-2.amazonaws.com')
      end

      it 'updates endpoint host according to host prefix' do
        c = svc.new(credentials: creds, region: 'us-west-2', stub_responses: true)
        resp = c.foo
        expect(resp.context.http_request.endpoint.host).to eq('fancy123-svc.us-west-2.amazonaws.com')
      end

      it 'raise an error if label value is not provided' do
        c = svc.new(credentials: creds, region: 'us-west-2', stub_responses: true, validate_params: false)
        expect {
          c.bar
        }.to raise_error(Aws::Errors::MissingEndpointHostLabelValue)
      end

      it 'updates endpoint host with label values' do
        c = svc.new(credentials: creds, region: 'us-west-2', stub_responses: true)
        resp = c.bar(member_a: 'hello', member_b: 'world')
        expect(resp.context.http_request.endpoint.host).to eq('hello-world.svc.us-west-2.amazonaws.com')
      end
    end
  end
end

