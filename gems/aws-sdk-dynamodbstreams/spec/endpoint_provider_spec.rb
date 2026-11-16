# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::DynamoDBStreams
  describe EndpointProvider do
    subject { Aws::DynamoDBStreams::EndpointProvider.new }

    context "For region af-south-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.af-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "af-south-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region ap-east-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.ap-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "ap-east-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region ap-northeast-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.ap-northeast-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "ap-northeast-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region ap-northeast-2 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.ap-northeast-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "ap-northeast-2", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region ap-northeast-3 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.ap-northeast-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "ap-northeast-3", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region ap-south-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.ap-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "ap-south-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region ap-southeast-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.ap-southeast-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "ap-southeast-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region ap-southeast-2 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.ap-southeast-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "ap-southeast-2", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region ap-southeast-3 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.ap-southeast-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "ap-southeast-3", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region ca-central-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.ca-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "ca-central-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region eu-central-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.eu-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "eu-central-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region eu-north-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.eu-north-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "eu-north-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region eu-south-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.eu-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "eu-south-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region eu-west-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "eu-west-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region eu-west-2 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.eu-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "eu-west-2", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region eu-west-3 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.eu-west-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "eu-west-3", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region me-south-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.me-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "me-south-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region sa-east-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.sa-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "sa-east-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-east-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-east-2 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-west-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-west-2 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-east-1 with FIPS enabled and DualStack enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-east-1 with FIPS enabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-east-1 with FIPS disabled and DualStack enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region cn-north-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-north-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region cn-northwest-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-northwest-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region cn-north-1 with FIPS enabled and DualStack enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-north-1", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region cn-north-1 with FIPS enabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-north-1", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region cn-north-1 with FIPS disabled and DualStack enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-north-1", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-gov-east-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-east-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-gov-east-1 with FIPS enabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-east-1", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-gov-west-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-west-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-gov-west-1 with FIPS enabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-west-1", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-gov-east-1 with FIPS enabled and DualStack enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-east-1", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-gov-east-1 with FIPS disabled and DualStack enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-east-1", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-iso-east-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-east-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-iso-east-1 with FIPS enabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-east-1", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-isob-east-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-isob-east-1.sc2s.sgov.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-isob-east-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-isob-east-1 with FIPS enabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.us-isob-east-1.sc2s.sgov.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-isob-east-1", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For custom endpoint with region set and fips disabled and dualstack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For custom endpoint with region not set and fips disabled and dualstack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For custom endpoint with fips enabled and dualstack disabled" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "For custom endpoint with fips disabled and dualstack enabled" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: true, endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Missing region" do
      let(:expected) do
        {"error" => "Invalid Configuration: Missing Region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false, endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true, endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false, endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true, endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false, endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true, endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false, endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true, endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false, endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true, endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false, endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true, endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Region=local, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.local.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "local", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Missing Region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false, StreamArn=arn:aws:dynamodb:us-east-1:not_an_account:table/T/stream/2024-01-01T00:00:00.000}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false, stream_arn: "arn:aws:dynamodb:us-east-1:not_an_account:table/T/stream/2024-01-01T00:00:00.000"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Credentials-sourced account ID parameter is invalid"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{StreamArn=arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:af-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:kinesis:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:kinesis:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:af-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:af-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, StreamArn=arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", stream_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, StreamArn=arn:aws:dynamodb:af-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", stream_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, StreamArn=arn:aws:kinesis:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", stream_arn: "arn:aws:kinesis:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, StreamArn=arn:aws:dynamodb:af-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, ShardIterator=arn:aws:dynamodb:af-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", stream_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", shard_iterator: "arn:aws:dynamodb:af-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:af-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:kinesis:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:kinesis:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:af-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:af-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, StreamArn=arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", stream_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, StreamArn=arn:aws:dynamodb:af-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", stream_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, StreamArn=arn:aws:kinesis:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", stream_arn: "arn:aws:kinesis:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, StreamArn=arn:aws:dynamodb:af-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, ShardIterator=arn:aws:dynamodb:af-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", stream_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", shard_iterator: "arn:aws:dynamodb:af-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Credentials-sourced account ID parameter is invalid"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{StreamArn=arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{StreamArn=arn:aws:dynamodb:af-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{StreamArn=arn:aws:kinesis:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:kinesis:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:af-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:af-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{StreamArn=arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, StreamArn=arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", stream_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, StreamArn=arn:aws:dynamodb:af-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", stream_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, StreamArn=arn:aws:kinesis:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", stream_arn: "arn:aws:kinesis:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, StreamArn=arn:aws:dynamodb:af-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, ShardIterator=arn:aws:dynamodb:af-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", stream_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", shard_iterator: "arn:aws:dynamodb:af-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:us-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=eu-west-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "eu-west-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=eu-west-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "eu-west-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=eu-west-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "eu-west-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=eu-west-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "eu-west-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=eu-west-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "eu-west-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=eu-west-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "eu-west-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=eu-west-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "eu-west-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=eu-west-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "eu-west-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=eu-west-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "eu-west-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=eu-west-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "eu-west-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=eu-west-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "eu-west-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=eu-west-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "eu-west-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=eu-west-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "eu-west-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=eu-west-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "eu-west-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=eu-west-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "eu-west-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=eu-west-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "eu-west-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=eu-west-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "eu-west-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=eu-west-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "eu-west-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=eu-west-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "eu-west-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=eu-west-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "eu-west-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=eu-west-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "eu-west-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=eu-west-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "eu-west-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=eu-west-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "eu-west-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=eu-west-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "eu-west-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=eu-west-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "eu-west-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=eu-west-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "eu-west-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=eu-west-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "eu-west-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=eu-west-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "eu-west-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=eu-west-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "eu-west-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=eu-west-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "eu-west-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=eu-west-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "eu-west-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=eu-west-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "eu-west-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=eu-west-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "eu-west-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=eu-west-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "eu-west-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=eu-west-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:eu-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "eu-west-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=eu-west-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:eu-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "eu-west-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=me-central-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.me-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-central-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-central-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.me-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-central-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-central-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.me-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-central-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=me-central-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.me-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-central-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-central-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.me-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-central-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-central-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.me-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-central-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=me-central-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.me-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-central-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-central-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.me-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-central-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-central-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.me-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-central-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=me-central-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.me-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-central-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-central-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.me-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-central-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-central-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.me-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-central-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=me-central-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.me-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-central-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-central-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.me-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-central-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-central-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.me-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-central-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=me-central-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.me-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-central-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-central-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.me-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-central-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-central-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.me-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-central-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=me-central-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.me-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-central-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-central-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.me-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-central-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-central-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.me-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-central-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=me-central-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.me-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-central-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-central-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.me-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-central-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-central-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.me-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-central-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=me-central-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-central-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-central-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-central-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-central-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-central-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=me-central-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-central-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-central-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-central-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-central-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-central-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=me-central-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-central-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-central-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-central-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-central-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-central-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=me-central-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-central-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-central-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-central-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-central-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-central-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-central-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-central-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=me-south-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.me-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-south-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-south-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.me-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-south-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-south-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.me-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-south-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=me-south-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.me-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-south-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-south-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.me-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-south-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-south-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.me-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-south-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=me-south-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.me-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-south-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-south-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.me-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-south-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-south-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.me-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-south-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=me-south-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.me-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-south-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-south-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.me-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-south-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-south-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.me-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-south-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=me-south-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.me-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-south-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-south-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.me-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-south-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-south-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.me-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-south-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=me-south-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.me-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-south-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-south-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.me-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-south-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-south-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.me-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-south-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=me-south-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.me-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-south-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-south-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.me-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-south-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-south-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.me-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-south-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=me-south-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.me-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-south-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-south-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.me-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-south-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-south-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.me-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-south-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=me-south-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-south-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-south-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-south-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-south-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-south-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=me-south-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-south-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-south-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-south-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-south-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-south-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=me-south-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-south-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-south-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-south-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-south-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-south-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=me-south-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "me-south-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{StreamArn=arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=me-south-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws:dynamodb:me-south-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "me-south-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ShardIterator=arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=me-south-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws:dynamodb:me-south-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "me-south-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-north-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-northwest-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-northwest-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-northwest-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-northwest-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-northwest-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-northwest-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-northwest-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-northwest-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-northwest-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-northwest-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-northwest-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-northwest-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-northwest-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-northwest-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-northwest-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-northwest-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-northwest-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-northwest-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-northwest-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-northwest-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-northwest-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-northwest-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-northwest-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-northwest-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-northwest-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-northwest-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-northwest-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-northwest-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-northwest-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-northwest-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-northwest-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-northwest-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-northwest-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-northwest-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-northwest-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-northwest-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-northwest-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-northwest-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-northwest-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-northwest-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-northwest-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-northwest-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-northwest-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-northwest-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-northwest-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-northwest-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-northwest-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-northwest-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-northwest-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-northwest-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-northwest-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-northwest-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-northwest-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-northwest-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-northwest-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-northwest-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-northwest-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-northwest-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-northwest-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-northwest-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-northwest-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-northwest-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-northwest-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-northwest-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-northwest-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-northwest-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-northwest-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-northwest-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=cn-northwest-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-cn:dynamodb:cn-northwest-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "cn-northwest-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=cn-northwest-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-cn:dynamodb:cn-northwest-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "cn-northwest-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-west-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-west-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-west-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-west-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-west-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-west-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-west-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-west-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-west-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-west-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-west-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-west-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-west-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-west-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-west-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-west-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-west-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-west-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-west-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-west-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-west-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-west-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-west-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-west-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-west-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-west-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-west-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-west-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-west-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-west-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-west-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-west-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-west-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-west-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-west-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-west-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-west-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-west-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-west-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-west-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-west-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-west-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-west-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-west-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-west-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-west-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-west-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-west-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-west-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-west-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-west-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-west-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-west-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-west-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-west-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-west-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-west-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-west-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-west-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-west-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-west-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-west-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-west-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-west-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-west-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-west-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-west-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb-fips.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-west-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-gov-west-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.streams-ddb-fips.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-us-gov:dynamodb:us-gov-west-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-gov-west-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-gov-west-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.streams-ddb-fips.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-us-gov:dynamodb:us-gov-west-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-gov-west-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{StreamArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ShardIterator=arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams-dynamodb-fips.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{StreamArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ShardIterator=arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{StreamArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ShardIterator=arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{StreamArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ShardIterator=arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{StreamArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{stream_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/T/stream/2024-01-01T00:00:00.000", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ShardIterator=arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{shard_iterator: "arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/T/stream/2024-01-01T00:00:00.000|1|AAAAAAAAAAIxyz", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Region=us-new-1, AccountIdEndpointMode=preferred, AccountId=111111111111, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.us-new-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-new-1", account_id_endpoint_mode: "preferred", account_id: "111111111111", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{Region=cn-new-1, AccountIdEndpointMode=preferred, AccountId=111111111111, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.cn-new-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-new-1", account_id_endpoint_mode: "preferred", account_id: "111111111111", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{Region=us-gov-new-1, AccountIdEndpointMode=preferred, AccountId=111111111111, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.streams-ddb.us-gov-new-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-new-1", account_id_endpoint_mode: "preferred", account_id: "111111111111", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{Region=us-iso-new-1, AccountIdEndpointMode=preferred, AccountId=111111111111, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://streams.dynamodb.us-iso-new-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-new-1", account_id_endpoint_mode: "preferred", account_id: "111111111111", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

  end
end
