# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::OpenSearchMemory
  describe EndpointProvider do
    subject { Aws::OpenSearchMemory::EndpointProvider.new }

    context "A space ID that is not a host label is rejected rather than put in the host name." do
      let(:expected) do
        {"error" => "Invalid SpaceId: must be a valid host label"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", space_id: "evil.example/#"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "A Region that is not a host label is rejected." do
      let(:expected) do
        {"error" => "Invalid Configuration: Region must be a valid host label"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1/#"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "A space ID containing a dot is rejected rather than split across host labels." do
      let(:expected) do
        {"error" => "Invalid SpaceId: must be a valid host label"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", space_id: "sp-abc.def123"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "GetMemory goes to the endpoint of the space in its input." do
      let(:expected) do
        {"endpoint" => {"url" => "https://sp-abc123def456.osm.us-east-1.on.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", space_id: "sp-abc123def456"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_memory' do
        client = Client.new(
          region: 'us-east-1',
          stub_responses: true
        )
        resp = client.get_memory(
          space_id: 'sp-abc123def456',
          memory_id: 'mem-0123456789abcdef',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "ListSpaces goes to the regional endpoint." do
      let(:expected) do
        {"endpoint" => {"url" => "https://osm.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_spaces' do
        client = Client.new(
          region: 'us-east-1',
          stub_responses: true
        )
        resp = client.list_spaces(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "With a space ID: the space's endpoint." do
      let(:expected) do
        {"endpoint" => {"url" => "https://sp-abc123def456.osm.us-east-1.on.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", space_id: "sp-abc123def456"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Without a space ID: the regional endpoint." do
      let(:expected) do
        {"endpoint" => {"url" => "https://osm.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Endpoint override with a space ID: the override URL." do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", space_id: "sp-000000000000", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Endpoint override without a space ID: the override URL." do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "FIPS without a space ID fails: the service has no FIPS endpoint." do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS is not supported with OpenSearch Memory."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "FIPS with a space ID fails: the service has no FIPS endpoint." do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS is not supported with OpenSearch Memory."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", space_id: "sp-abc123def456", use_fips: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "FIPS with an endpoint override fails." do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", endpoint: "https://example.com", use_fips: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "GetMemory with FIPS on fails rather than going to the space's endpoint." do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS is not supported with OpenSearch Memory."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", space_id: "sp-abc123def456", use_fips: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_memory' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect do
          client.get_memory(
            space_id: 'sp-abc123def456',
            memory_id: 'mem-0123456789abcdef',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ListSpaces with FIPS on fails rather than going to the regional endpoint." do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS is not supported with OpenSearch Memory."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_spaces' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect do
          client.list_spaces(
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

  end
end
