# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::AgentRegistryControl
  describe EndpointProvider do
    subject { Aws::AgentRegistryControl::EndpointProvider.new }

    context "Region us-west-2 -> region-based prod host." do
      let(:expected) do
        {"endpoint" => {"url" => "https://agent-registry-control.us-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Region us-east-1 -> region-based prod host." do
      let(:expected) do
        {"endpoint" => {"url" => "https://agent-registry-control.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Endpoint override wins over region." do
      let(:expected) do
        {"endpoint" => {"url" => "https://custom.example.aws.dev"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", endpoint: "https://custom.example.aws.dev"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

  end
end
