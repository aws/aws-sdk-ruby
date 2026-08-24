# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::PricingPlanManager
  describe EndpointProvider do
    subject { Aws::PricingPlanManager::EndpointProvider.new }

    context "Resolves the us-east-1 endpoint and signs for us-east-1." do
      let(:expected) do
        {"endpoint" => {"url" => "https://pricingplanmanager.us-east-1.api.aws", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "pricingplanmanager", "signingRegion" => "us-east-1"}]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Routes any other region to the us-east-1 endpoint and still signs for us-east-1." do
      let(:expected) do
        {"endpoint" => {"url" => "https://pricingplanmanager.us-east-1.api.aws", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "pricingplanmanager", "signingRegion" => "us-east-1"}]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "A custom endpoint override wins over region resolution and signs for us-east-1." do
      let(:expected) do
        {"endpoint" => {"url" => "https://pricingplanmanager.us-east-1.api.aws", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "pricingplanmanager", "signingRegion" => "us-east-1"}]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", endpoint: "https://pricingplanmanager.us-east-1.api.aws"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

  end
end
