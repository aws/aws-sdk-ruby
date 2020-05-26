require_relative '../../spec_helper'

module Aws
  module Plugins
    describe EndpointDiscovery do

      EndpointDiscoveryClient = ApiHelper.sample_service(
        api: {
          'metadata' => {
            'apiVersion' => '2016-07-30',
            'protocol' => 'json',
            'jsonVersion' => '1.1',
            'endpointPrefix' => 'svc',
            "signatureVersion" => "v4"
          },
          'operations' => {
            'DescribeEndpoints' => {
              'http' => { 'method' => 'POST', 'requestUri' => '/' },
              'input' => { 'shape' => 'InputStructure' },
              'output' => { 'shape' => 'OutputStructure' },
              'endpointoperation' => true
            },
            'OperationRequired' => {
              'http' => { 'method' => 'POST', 'requestUri' => '/' },
              'input' => { 'shape' => 'OperationRequiredInput' },
              'endpointdiscovery' => {
                'required' => 'true'
              }
            },
            'OperationNotRequired' => {
              'http' => { 'method' => 'POST', 'requestUri' => '/' },
              'input' => { 'shape' => 'OperationNotRequiredInput' },
              'endpointdiscovery' => {}
            }
          },
          'shapes' => {
            'InputStructure' => {
              'type' => 'structure',
              'members' => {
                'Operation' => {'shape' => 'String'},
                'Identifiers' => {'shape' => 'Identifiers'}
              }
            },
            'String' => {'type' => 'string'},
            'Identifiers' => {
              'type' => 'map',
              'key' => {'shape' => 'String'},
              'value' => {'shape' => 'String'}
            },
            'OutputStructure' => {
              'type' => 'structure',
              'members' => {
                'Endpoints' => {'shape' => 'Endpoints'}
              }
            },
            'Endpoints' => {
              'type' => 'list',
              'member' => {'shape' => 'Endpoint'}
            },
            'Endpoint' => {
              'type' => 'structure',
              'members' => {
                'Address' => {'shape' => 'String'},
                'CachePeriodInMinutes' => {'shape' => 'Long'}
              }
            },
            'Long' => { 'type' => 'long' },
            'OperationRequiredInput' => {
              'type' => 'structure',
              'members' => {
                'ResourceId' => {
                  'shape' => 'String',
                  'endpointdiscoveryid' => true
                },
                'ResourceName' => {
                  'shape' => 'String',
                  'endpointdiscoveryid' => true
                }
              }
            },
            'OperationNotRequiredInput' => {
              'type' => 'structure',
              'members' => {
                'Foo' => {'shape' => 'String'}
              }
            }
          }
        }
      ).const_get(:Client)

      let(:creds) { Aws::Credentials.new('akid', 'secert') }
      let(:env) {{}}

      before do
        stub_const("ENV", env)
      end

      it 'enables endpoint discovery from ENV' do
        # env['AWS_ENABLE_ENDPOINT_DISCOVERY'] = true
        # expect(
        #   EndpointDiscoveryClient.new(region: 'us-east-1').config.endpoint_discovery
        # ).to be_truthy
        #
        # env['AWS_ENABLE_ENDPOINT_DISCOVERY'] = "true"
        # expect(
        #   EndpointDiscoveryClient.new(region: 'us-east-1').config.endpoint_discovery
        # ).to be_truthy

        env['AWS_ENABLE_ENDPOINT_DISCOVERY'] = "false"
        expect(
          EndpointDiscoveryClient.new(region: 'us-east-1').config.endpoint_discovery
        ).to be_falsey
      end

      it 'can be set directly, overriding the ENV' do
        env['AWS_ENABLE_ENDPOINT_DISCOVERY'] = true
        expect(
          EndpointDiscoveryClient.new(endpoint_discovery: false, region: 'us-east-1').config.endpoint_discovery
        ).to be_falsey
      end

      it 'does nothing when :endpoint is specified' do
        stub_request(:post, "https://foo.com/")
          .to_return(:status => 200, :body => "", :headers => {})
        c = EndpointDiscoveryClient.new(credentials: creds, endpoint: 'https://foo.com', region: 'us-east-1')
        resp = c.operation_required(resource_name: 'foo', resource_id: '123')
        expect(resp.context.http_request.headers['user-agent']).not_to include('endpoint-discovery')
      end

      it 'fetches endpoint from cache when available' do
        c = EndpointDiscoveryClient.new(credentials: creds, region: 'us-east-1', endpoint_discovery: true, stub_responses: true)
        c.config.endpoint_cache['akid_operation_not_required'] = {:address => "https://bar.com/foo", :cache_period_in_minutes => 20}
        c.config.endpoint_cache['akid_operation_required_123_foo'] = {:address => "https://bar.com/foo", :cache_period_in_minutes => 20}

        resp = c.operation_not_required(foo: 'foo')
        expect(resp.context.http_request.headers['user-agent']).to include('endpoint-discovery')
        expect(c.api_requests.size).to eq(1)

        resp = c.operation_required(resource_name: 'foo', resource_id: '123')
        expect(resp.context.http_request.headers['user-agent']).to include('endpoint-discovery')
        expect(c.api_requests.size).to eq(2)
      end

      it 'adds apiVersion header for endpoint operation' do
        stub_request(:post, "https://svc.us-east-1.amazonaws.com/")
          .to_return(:status => 200, :body => "", :headers => {})
        c = EndpointDiscoveryClient.new(credentials: creds, region: 'us-east-1')
        resp = c.describe_endpoints
        expect(resp.context.http_request.headers['x-amz-api-version']).to eq('2016-07-30')
      end

      it 'caches endpoint when request endpoint succeed' do
        c = EndpointDiscoveryClient.new(credentials: creds, region: 'us-east-1', stub_responses: true)
        c.stub_responses(
          :describe_endpoints,
          {
            endpoints: [
              { address: "https://foo.com/bar", cache_period_in_minutes: 60 }
            ]
          }
        )
        c.operation_required(resource_name: 'foo', resource_id: '123')
        expect(c.config.endpoint_cache['akid_operation_required_123_foo'].address).to eq('https://foo.com/bar')
        c.operation_required(resource_name: 'foo', resource_id: '123')
        expect(c.api_requests.size).to eq(3)
      end

      it 'makes requests to fetch endpoints when required and enabled' do
        c = EndpointDiscoveryClient.new(credentials: creds, region: 'us-east-1', endpoint_discovery: true, stub_responses: true)
        c.stub_responses(
          :describe_endpoints,
          {
            endpoints: [
              { address: "foo.com/bar", cache_period_in_minutes: 60 }
            ]
          }
        )
        c.operation_required(resource_name: 'foo', resource_id: '123')
        expect(c.api_requests.size).to eq(2)
      end

      it 'raises an exception when required and disabled' do
        c = EndpointDiscoveryClient.new(credentials: creds, region: 'us-east-1',
                                        endpoint_discovery: false,
                                        stub_responses: true)
        expect do
          c.operation_required(resource_name: 'foo', resource_id: '123')
        end.to raise_exception(ArgumentError)
      end

      it 'fails when fetching endpoint failed but required' do
        c = EndpointDiscoveryClient.new(credentials: creds, region: 'us-east-1',
                                        stub_responses: true)
        c.stub_responses(
          :describe_endpoints,
          'ServiceUnavaiable'
        )
        expect {
          c.operation_required(resource_name: 'foo', resource_id: '123')
        }.to raise_error(Aws::Errors::EndpointDiscoveryError)
      end

      it 'makes requests to fetch endpoints when enabled but not required' do
        c = EndpointDiscoveryClient.new(credentials: creds, region: 'us-east-1',
                                        endpoint_discovery: true,
                                        stub_responses: true)
        c.stub_responses(
          :describe_endpoints,
          {
            endpoints: [
              { address: "https://foo.com/bar", cache_period_in_minutes: 60 }
            ]
          }
        )
        c.operation_not_required(foo: 'foo')
        expect(c.api_requests.size).to eq(2)
      end

      it 'does not fail when fetching endpoint failed when enabled but not required' do
        c = EndpointDiscoveryClient.new(credentials: creds, region: 'us-east-1', endpoint_discovery: true, stub_responses: true)
        c.stub_responses(
          :describe_endpoints,
          'ServiceUnavaiable'
        )
        expect {
          c.operation_not_required(foo: 'foo')
        }.to_not raise_error
        expect(c.api_requests.size).to eq(2)
      end

      it 'does nothing when disabled and not required' do
        c = EndpointDiscoveryClient.new(credentials: creds, region: 'us-east-1',
                                        stub_responses: true,
                                        endpoint_discovery: false)
        c.operation_not_required(foo: 'foo')
        expect(c.api_requests.size).to eq(1)
      end

      it 'async makes requests to fetch endpoint when enabled but not required and :active_endpoint_cache is enabled' do
        c = EndpointDiscoveryClient.new(
          credentials: creds,
          region: 'us-east-1',
          endpoint_discovery: true,
          active_endpoint_cache: true,
          endpoint_cache_poll_interval: 0.01,
          stub_responses: true
        )
        c.stub_responses(
          :describe_endpoints,
          'ServiceUnavaiable',
          {
            endpoints: [
              { address: "https://foo.com/bar", cache_period_in_minutes: 60 }
            ]
          }
        )
        c.operation_not_required(foo: 'foo')
        sleep(0.1)
        expect(c.api_requests.size).to eq(3)
        c.operation_not_required(foo: 'foo')
        expect(c.api_requests.size).to eq(4)
      end

      it 'can set endpoint cache max entries limit' do
        c = EndpointDiscoveryClient.new(credentials: creds, region: 'us-east-1', endpoint_cache_max_entries: 5)
        expect(c.config.endpoint_cache.max_entries).to eq(5)
      end

      it 'can set endpoint cache max threads limit' do
        c = EndpointDiscoveryClient.new(credentials: creds, region: 'us-east-1', endpoint_cache_max_threads: 5)
        expect(c.config.endpoint_cache.max_threads).to eq(5)
      end

    end
  end
end
