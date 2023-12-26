# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::NeptuneGraph
  describe EndpointProvider do
    subject { Aws::NeptuneGraph::EndpointProvider.new }

    context 'Region and CP ApiType are provided' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://mycustomDomain.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:endpoint=>"https://mycustomDomain.com", :api_type=>"ControlPlane", :region=>"us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Region and DP ApiType are provided' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://mycustomDomain.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:endpoint=>"https://mycustomDomain.com", :api_type=>"DataPlane", :region=>"us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Region and invalid ApiType are provided' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://mycustomDomain.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:endpoint=>"https://mycustomDomain.com", :api_type=>"someInvalidApiType", :region=>"us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Only invalid ApiType is provided' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://mycustomDomain.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:endpoint=>"https://mycustomDomain.com", :api_type=>"someInvalidApiType"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate CP endpoint in region: us-east-1, useFipsEndpoint: true, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"us-east-1", :use_fips=>true, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: us-east-1, useFipsEndpoint: true, useDualStackEndpoint: true' do
      let(:expected) do
        {"error"=>"Invalid Configuration: fips endpoint is not supported for this API"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"us-east-1", :use_fips=>true, :use_dual_stack=>true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Validate CP endpoint in region: us-east-1, useFipsEndpoint: true, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"us-east-1", :use_fips=>true, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: us-east-1, useFipsEndpoint: true, useDualStackEndpoint: false' do
      let(:expected) do
        {"error"=>"Invalid Configuration: fips endpoint is not supported for this API"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"us-east-1", :use_fips=>true, :use_dual_stack=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Validate CP endpoint in region: us-east-1, useFipsEndpoint: false, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"us-east-1", :use_fips=>false, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: us-east-1, useFipsEndpoint: false, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.us-east-1.on.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"us-east-1", :use_fips=>false, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate CP endpoint in region: us-east-1, useFipsEndpoint: false, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"us-east-1", :use_fips=>false, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: us-east-1, useFipsEndpoint: false, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://us-east-1.neptune-graph.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"us-east-1", :use_fips=>false, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate CP endpoint in region: us-east-2, useFipsEndpoint: true, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph-fips.us-east-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"us-east-2", :use_fips=>true, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: us-east-2, useFipsEndpoint: true, useDualStackEndpoint: true' do
      let(:expected) do
        {"error"=>"Invalid Configuration: fips endpoint is not supported for this API"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"us-east-2", :use_fips=>true, :use_dual_stack=>true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Validate CP endpoint in region: us-east-2, useFipsEndpoint: true, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph-fips.us-east-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"us-east-2", :use_fips=>true, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: us-east-2, useFipsEndpoint: true, useDualStackEndpoint: false' do
      let(:expected) do
        {"error"=>"Invalid Configuration: fips endpoint is not supported for this API"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"us-east-2", :use_fips=>true, :use_dual_stack=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Validate CP endpoint in region: us-east-2, useFipsEndpoint: false, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.us-east-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"us-east-2", :use_fips=>false, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: us-east-2, useFipsEndpoint: false, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.us-east-2.on.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"us-east-2", :use_fips=>false, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate CP endpoint in region: us-east-2, useFipsEndpoint: false, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.us-east-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"us-east-2", :use_fips=>false, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: us-east-2, useFipsEndpoint: false, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://us-east-2.neptune-graph.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"us-east-2", :use_fips=>false, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate CP endpoint in region: us-west-2, useFipsEndpoint: true, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph-fips.us-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"us-west-2", :use_fips=>true, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: us-west-2, useFipsEndpoint: true, useDualStackEndpoint: true' do
      let(:expected) do
        {"error"=>"Invalid Configuration: fips endpoint is not supported for this API"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"us-west-2", :use_fips=>true, :use_dual_stack=>true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Validate CP endpoint in region: us-west-2, useFipsEndpoint: true, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph-fips.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"us-west-2", :use_fips=>true, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: us-west-2, useFipsEndpoint: true, useDualStackEndpoint: false' do
      let(:expected) do
        {"error"=>"Invalid Configuration: fips endpoint is not supported for this API"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"us-west-2", :use_fips=>true, :use_dual_stack=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Validate CP endpoint in region: us-west-2, useFipsEndpoint: false, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.us-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"us-west-2", :use_fips=>false, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: us-west-2, useFipsEndpoint: false, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.us-west-2.on.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"us-west-2", :use_fips=>false, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate CP endpoint in region: us-west-2, useFipsEndpoint: false, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"us-west-2", :use_fips=>false, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: us-west-2, useFipsEndpoint: false, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://us-west-2.neptune-graph.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"us-west-2", :use_fips=>false, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate CP endpoint in region: eu-west-1, useFipsEndpoint: true, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph-fips.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"eu-west-1", :use_fips=>true, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: eu-west-1, useFipsEndpoint: true, useDualStackEndpoint: true' do
      let(:expected) do
        {"error"=>"Invalid Configuration: fips endpoint is not supported for this API"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"eu-west-1", :use_fips=>true, :use_dual_stack=>true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Validate CP endpoint in region: eu-west-1, useFipsEndpoint: true, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph-fips.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"eu-west-1", :use_fips=>true, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: eu-west-1, useFipsEndpoint: true, useDualStackEndpoint: false' do
      let(:expected) do
        {"error"=>"Invalid Configuration: fips endpoint is not supported for this API"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"eu-west-1", :use_fips=>true, :use_dual_stack=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Validate CP endpoint in region: eu-west-1, useFipsEndpoint: false, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"eu-west-1", :use_fips=>false, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: eu-west-1, useFipsEndpoint: false, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.eu-west-1.on.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"eu-west-1", :use_fips=>false, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate CP endpoint in region: eu-west-1, useFipsEndpoint: false, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"eu-west-1", :use_fips=>false, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: eu-west-1, useFipsEndpoint: false, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://eu-west-1.neptune-graph.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"eu-west-1", :use_fips=>false, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate CP endpoint in region: eu-west-2, useFipsEndpoint: true, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph-fips.eu-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"eu-west-2", :use_fips=>true, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: eu-west-2, useFipsEndpoint: true, useDualStackEndpoint: true' do
      let(:expected) do
        {"error"=>"Invalid Configuration: fips endpoint is not supported for this API"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"eu-west-2", :use_fips=>true, :use_dual_stack=>true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Validate CP endpoint in region: eu-west-2, useFipsEndpoint: true, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph-fips.eu-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"eu-west-2", :use_fips=>true, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: eu-west-2, useFipsEndpoint: true, useDualStackEndpoint: false' do
      let(:expected) do
        {"error"=>"Invalid Configuration: fips endpoint is not supported for this API"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"eu-west-2", :use_fips=>true, :use_dual_stack=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Validate CP endpoint in region: eu-west-2, useFipsEndpoint: false, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.eu-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"eu-west-2", :use_fips=>false, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: eu-west-2, useFipsEndpoint: false, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.eu-west-2.on.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"eu-west-2", :use_fips=>false, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate CP endpoint in region: eu-west-2, useFipsEndpoint: false, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.eu-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"eu-west-2", :use_fips=>false, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: eu-west-2, useFipsEndpoint: false, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://eu-west-2.neptune-graph.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"eu-west-2", :use_fips=>false, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate CP endpoint in region: eu-central-1, useFipsEndpoint: true, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph-fips.eu-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"eu-central-1", :use_fips=>true, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: eu-central-1, useFipsEndpoint: true, useDualStackEndpoint: true' do
      let(:expected) do
        {"error"=>"Invalid Configuration: fips endpoint is not supported for this API"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"eu-central-1", :use_fips=>true, :use_dual_stack=>true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Validate CP endpoint in region: eu-central-1, useFipsEndpoint: true, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph-fips.eu-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"eu-central-1", :use_fips=>true, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: eu-central-1, useFipsEndpoint: true, useDualStackEndpoint: false' do
      let(:expected) do
        {"error"=>"Invalid Configuration: fips endpoint is not supported for this API"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"eu-central-1", :use_fips=>true, :use_dual_stack=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Validate CP endpoint in region: eu-central-1, useFipsEndpoint: false, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.eu-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"eu-central-1", :use_fips=>false, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: eu-central-1, useFipsEndpoint: false, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.eu-central-1.on.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"eu-central-1", :use_fips=>false, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate CP endpoint in region: eu-central-1, useFipsEndpoint: false, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.eu-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"eu-central-1", :use_fips=>false, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: eu-central-1, useFipsEndpoint: false, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://eu-central-1.neptune-graph.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"eu-central-1", :use_fips=>false, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate CP endpoint in region: ap-southeast-1, useFipsEndpoint: true, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph-fips.ap-southeast-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"ap-southeast-1", :use_fips=>true, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: ap-southeast-1, useFipsEndpoint: true, useDualStackEndpoint: true' do
      let(:expected) do
        {"error"=>"Invalid Configuration: fips endpoint is not supported for this API"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"ap-southeast-1", :use_fips=>true, :use_dual_stack=>true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Validate CP endpoint in region: ap-southeast-1, useFipsEndpoint: true, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph-fips.ap-southeast-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"ap-southeast-1", :use_fips=>true, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: ap-southeast-1, useFipsEndpoint: true, useDualStackEndpoint: false' do
      let(:expected) do
        {"error"=>"Invalid Configuration: fips endpoint is not supported for this API"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"ap-southeast-1", :use_fips=>true, :use_dual_stack=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Validate CP endpoint in region: ap-southeast-1, useFipsEndpoint: false, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.ap-southeast-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"ap-southeast-1", :use_fips=>false, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: ap-southeast-1, useFipsEndpoint: false, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.ap-southeast-1.on.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"ap-southeast-1", :use_fips=>false, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate CP endpoint in region: ap-southeast-1, useFipsEndpoint: false, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.ap-southeast-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"ap-southeast-1", :use_fips=>false, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: ap-southeast-1, useFipsEndpoint: false, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://ap-southeast-1.neptune-graph.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"ap-southeast-1", :use_fips=>false, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate CP endpoint in region: ap-northeast-1, useFipsEndpoint: true, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph-fips.ap-northeast-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"ap-northeast-1", :use_fips=>true, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: ap-northeast-1, useFipsEndpoint: true, useDualStackEndpoint: true' do
      let(:expected) do
        {"error"=>"Invalid Configuration: fips endpoint is not supported for this API"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"ap-northeast-1", :use_fips=>true, :use_dual_stack=>true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Validate CP endpoint in region: ap-northeast-1, useFipsEndpoint: true, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph-fips.ap-northeast-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"ap-northeast-1", :use_fips=>true, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: ap-northeast-1, useFipsEndpoint: true, useDualStackEndpoint: false' do
      let(:expected) do
        {"error"=>"Invalid Configuration: fips endpoint is not supported for this API"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"ap-northeast-1", :use_fips=>true, :use_dual_stack=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Validate CP endpoint in region: ap-northeast-1, useFipsEndpoint: false, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.ap-northeast-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"ap-northeast-1", :use_fips=>false, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: ap-northeast-1, useFipsEndpoint: false, useDualStackEndpoint: true' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.ap-northeast-1.on.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"ap-northeast-1", :use_fips=>false, :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate CP endpoint in region: ap-northeast-1, useFipsEndpoint: false, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://neptune-graph.ap-northeast-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"ControlPlane", :region=>"ap-northeast-1", :use_fips=>false, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate DP endpoint in region: ap-northeast-1, useFipsEndpoint: false, useDualStackEndpoint: false' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://ap-northeast-1.neptune-graph.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane", :region=>"ap-northeast-1", :use_fips=>false, :use_dual_stack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Validate When no region is provided' do
      let(:expected) do
        {"error"=>"Invalid Configuration: Missing Region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:api_type=>"DataPlane"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Validate When invalid/unknown ApiType provided' do
      let(:expected) do
        {"error"=>"Invalid Configuration: Unknown ApiType"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-1", :api_type=>"someUnknownValue"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Both Fips and dualstack enabled' do
      let(:expected) do
        {"error"=>"Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:endpoint=>"https://mycustomDomain.com", :api_type=>"ControlPlane", :region=>"us-east-1", :use_fips=>true, :use_dual_stack=>true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Fips enabled and dualstack disabled' do
      let(:expected) do
        {"error"=>"Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:endpoint=>"https://mycustomDomain.com", :api_type=>"ControlPlane", :region=>"us-east-1", :use_fips=>true, :use_dual_stack=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Fips disabled and dualstack enabled' do
      let(:expected) do
        {"error"=>"Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:endpoint=>"https://mycustomDomain.com", :api_type=>"ControlPlane", :region=>"us-east-1", :use_fips=>false, :use_dual_stack=>true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

  end
end
