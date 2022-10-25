# frozen_string_literal: true

require_relative '../../spec_helper'

describe 'Plugins Interface:' do
  describe 'Endpoints' do

    context 'General tests' do
      before(:all) do
        SpecHelper.generate_service(['EndpointsPlugin'], multiple_files: false)
      end

      let(:client) do
        EndpointsPlugin::Client.new(
          stub_responses: true,
          endpoint_discovery: true
        )
      end

      it 'does not resolve endpoints for endpoint discovery' do
        client.stub_responses(
          :describe_endpoints,
          {
            endpoints: [
              { address: 'https://foo.com/bar', cache_period_in_minutes: 60 }
            ]
          }
        )
        # once to discover endpoint
        expect_any_instance_of(EndpointsPlugin::EndpointProvider)
          .to receive(:resolve_endpoint).once.and_call_original
        resp = client.endpoint_discovery_operation
        expect(resp.context[:endpoint_params]).to be_nil
        # should still have auth
        expect(resp.context[:auth_scheme]).to be_a(Hash)
      end

      it 'uses endpoint provider with params to resolve endpoint' do
        expect_any_instance_of(EndpointsPlugin::EndpointProvider)
          .to receive(:resolve_endpoint)
          .with(an_instance_of(EndpointsPlugin::EndpointParameters))
          .and_call_original
        client.operation
      end

      it 'applies the endpoint and headers' do
        resp = client.operation
        req = resp.context.http_request
        expect(req.endpoint.to_s).to eq('https://endpoint.amazonaws.com/')
        expect(req.headers['x-amz-multi']).to eq('val1,val2')
      end
    end

    context 'Built In Mappings' do
      before(:all) do
        SpecHelper.generate_service(['EndpointsBuiltIns'], multiple_files: false)
      end

      let(:endpoint) { 'http://peccy-service.us-peccy-1.amazonaws.com' }
      let(:region) { 'us-west-2' }

      let(:client) do
        EndpointsBuiltIns::Client.new(
          endpoint: endpoint,
          region: region,
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          stub_responses: true
        )
      end

      it 'maps built ins' do
        expect(EndpointsBuiltIns::EndpointParameters).to receive(:new)
          .with(
            region: region,
            endpoint: endpoint,
            use_fips: true,
            use_dual_stack: true
          ).and_call_original

        client.operation
      end

      it 'handles requiredness' do
        expect do
          EndpointsBuiltIns::EndpointParameters.new
        end.to raise_error(ArgumentError)
      end

      it 'handles defaults' do
        params = EndpointsBuiltIns::EndpointParameters.new(region: 'us-west-2')
        expect(params.use_dual_stack).to eq(false)
        expect(params.use_fips).to eq(false)
        expect(params.endpoint).to be_nil
      end
    end

    context 'Param Precedence' do
      before(:all) do
        SpecHelper.generate_service(['EndpointsPrecedence'], multiple_files: false)
      end

      let(:client) do
        EndpointsPrecedence::Client.new(stub_responses: true, region: 'config')
      end

      # Most to least
      # staticContextParams
      # contextParam
      # clientContextParams
      # Built-In Bindings
      # Built-in binding default values

      it 'static context has precedence' do
        expect(EndpointsPrecedence::EndpointParameters).to receive(:new)
          .with(hash_including(use_fips: 'static')).and_call_original
        client.static_context_operation
      end

      it 'context has second precedence' do
        expect(EndpointsPrecedence::EndpointParameters).to receive(:new)
          .with(hash_including(use_fips: 'context')).and_call_original
        client.context_operation(use_fips: 'context')
      end

      it 'client context has third precedence' do
        client = EndpointsPrecedence::Client.new(
          stub_responses: true,
          client_context_param: true
        )
        expect(EndpointsPrecedence::EndpointParameters).to receive(:new)
          .with(hash_including(client_context_param: true)).and_call_original
        client.operation
      end

      it 'built in has fourth precedence' do
        client = EndpointsPrecedence::Client.new(
          stub_responses: true,
          use_fips_endpoint: true
        )
        expect(EndpointsPrecedence::EndpointParameters).to receive(:new)
          .with(hash_including(use_fips: true)).and_call_original
        client.operation
      end

      it 'defaults to nil' do
        client = EndpointsPrecedence::Client.new(stub_responses: true)
        expect(EndpointsPrecedence::EndpointParameters).to receive(:new)
           .with(hash_including(nothing: nil)).and_call_original
        client.operation
      end
    end

  end
end
