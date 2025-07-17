# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::DynamoDB
  describe EndpointProvider do
    subject { Aws::DynamoDB::EndpointProvider.new }

    context "For region af-south-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.af-south-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb.ap-east-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb.ap-northeast-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb.ap-northeast-2.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb.ap-northeast-3.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb.ap-south-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb.ap-southeast-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb.ap-southeast-2.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb.ap-southeast-3.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb.ca-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "ca-central-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region ca-central-1 with FIPS enabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.ca-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "ca-central-1", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region eu-central-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.eu-central-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb.eu-north-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb.eu-south-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb.eu-west-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb.eu-west-2.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb.eu-west-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "eu-west-3", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region local with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "dynamodb", "signingRegion" => "us-east-1"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "local", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region me-south-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.me-south-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb.sa-east-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-east-1 with FIPS enabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-east-2 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-east-2 with FIPS enabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-west-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-west-1 with FIPS enabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-1", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-west-2 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-west-2 with FIPS enabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-east-1 with FIPS enabled and DualStack enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-east-1 with FIPS disabled and DualStack enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.api.aws"}}
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
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.amazonaws.com.cn"}}
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
        {"endpoint" => {"url" => "https://dynamodb.cn-northwest-1.amazonaws.com.cn"}}
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
        {"endpoint" => {"url" => "https://dynamodb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
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
        {"endpoint" => {"url" => "https://dynamodb-fips.cn-north-1.amazonaws.com.cn"}}
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
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.api.amazonwebservices.com.cn"}}
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
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb.us-gov-west-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb.us-gov-west-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb-fips.us-gov-east-1.api.aws"}}
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
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.api.aws"}}
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
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-east-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-iso-west-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-west-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-west-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-iso-east-1 with FIPS enabled and DualStack enabled" do
      let(:expected) do
        {"error" => "FIPS and DualStack are enabled, but this partition does not support one or both"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-east-1", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "For region us-iso-east-1 with FIPS enabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-east-1", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-iso-east-1 with FIPS disabled and DualStack enabled" do
      let(:expected) do
        {"error" => "DualStack is enabled but this partition does not support DualStack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-east-1", use_fips: false, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "For region us-isob-east-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-isob-east-1.sc2s.sgov.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-isob-east-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-isob-east-1 with FIPS enabled and DualStack enabled" do
      let(:expected) do
        {"error" => "FIPS and DualStack are enabled, but this partition does not support one or both"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-isob-east-1", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "For region us-isob-east-1 with FIPS enabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-isob-east-1.sc2s.sgov.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-isob-east-1", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-isob-east-1 with FIPS disabled and DualStack enabled" do
      let(:expected) do
        {"error" => "DualStack is enabled but this partition does not support DualStack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-isob-east-1", use_fips: false, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
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

    context "{UseFIPS=true, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.list_tables(
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.list_tables(
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.list_tables(
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-west-2:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-west-2:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:s3:us-east-1:333333333333:stream/testStream], AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:s3:us-east-1:333333333333:stream/testStream"], account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=, AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "", account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: ''),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.describe_table(
            table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.describe_table(
            table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.describe_table(
            table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-west-2:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:s3:us-west-2:222222222222:stream/testStream',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=, AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "", account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.batch_get_item(
            request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.batch_get_item(
            request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.batch_get_item(
            request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountIdEndpointMode=preferred, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id_endpoint_mode: "preferred", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.list_tables(
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.list_tables(
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.list_tables(
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-west-2:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-west-2:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:s3:us-east-1:333333333333:stream/testStream], AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:s3:us-east-1:333333333333:stream/testStream"], account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=, AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "", account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: ''),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.describe_table(
            table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.describe_table(
            table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.describe_table(
            table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-west-2:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:s3:us-west-2:222222222222:stream/testStream',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=, AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "", account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.batch_get_item(
            request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.batch_get_item(
            request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.batch_get_item(
            request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountIdEndpointMode=disabled, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id_endpoint_mode: "disabled", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.list_tables(
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.list_tables(
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.list_tables(
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-west-2:333333333333:table/table_name], AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-west-2:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:s3:us-east-1:333333333333:stream/testStream], AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:s3:us-east-1:333333333333:stream/testStream"], account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=, AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "", account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: ''),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.describe_table(
            table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.describe_table(
            table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.describe_table(
            table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-west-2:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:s3:us-west-2:222222222222:stream/testStream',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=, AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "", account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.batch_get_item(
            request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.batch_get_item(
            request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.batch_get_item(
            request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          endpoint: 'https://example.com',
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountIdEndpointMode=required, Region=us-east-1, Endpoint=https://example.com}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id_endpoint_mode: "required", region: "us-east-1", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-west-2:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-west-2:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:s3:us-east-1:333333333333:stream/testStream], AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:s3:us-east-1:333333333333:stream/testStream"], account_id_endpoint_mode: "preferred", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=, AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "", account_id_endpoint_mode: "preferred", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: ''),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-west-2:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", account_id_endpoint_mode: "preferred", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.describe_table(
          table_name: 'arn:aws:s3:us-west-2:222222222222:stream/testStream',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=, AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "", account_id_endpoint_mode: "preferred", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountIdEndpointMode=preferred, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id_endpoint_mode: "preferred", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "disabled", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "disabled", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "disabled", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "disabled", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-west-2:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-west-2:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:s3:us-east-1:333333333333:stream/testStream], AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:s3:us-east-1:333333333333:stream/testStream"], account_id_endpoint_mode: "disabled", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=, AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "", account_id_endpoint_mode: "disabled", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: ''),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "disabled", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "disabled", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "disabled", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "disabled", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", account_id_endpoint_mode: "disabled", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-west-2:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", account_id_endpoint_mode: "disabled", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.describe_table(
          table_name: 'arn:aws:s3:us-west-2:222222222222:stream/testStream',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=, AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "", account_id_endpoint_mode: "disabled", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountIdEndpointMode=disabled, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id_endpoint_mode: "disabled", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "required", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "required", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "required", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "required", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-west-2:333333333333:table/table_name], AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-west-2:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:s3:us-east-1:333333333333:stream/testStream], AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:s3:us-east-1:333333333333:stream/testStream"], account_id_endpoint_mode: "required", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=, AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "", account_id_endpoint_mode: "required", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: ''),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "required", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "required", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "required", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "required", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", account_id_endpoint_mode: "required", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-west-2:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", account_id_endpoint_mode: "required", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.describe_table(
          table_name: 'arn:aws:s3:us-west-2:222222222222:stream/testStream',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=, AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "", account_id_endpoint_mode: "required", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "local"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"})
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountIdEndpointMode=required, Region=local}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "dynamodb"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id_endpoint_mode: "required", region: "local"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=true, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-west-2:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-west-2:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:s3:us-east-1:333333333333:stream/testStream], AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:s3:us-east-1:333333333333:stream/testStream"], account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=, AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"error" => "Credentials-sourced account ID parameter is invalid"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "", account_id_endpoint_mode: "preferred", region: "us-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: ''),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.list_tables(
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-west-2:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:s3:us-west-2:222222222222:stream/testStream',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=, AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "", account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountIdEndpointMode=preferred, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id_endpoint_mode: "preferred", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "required", region: "us-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.list_tables(
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "required", region: "us-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.list_tables(
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and DualStack is enabled, but DualStack account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "required", region: "us-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.list_tables(
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "required", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-west-2:333333333333:table/table_name], AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-west-2:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:s3:us-east-1:333333333333:stream/testStream], AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:s3:us-east-1:333333333333:stream/testStream"], account_id_endpoint_mode: "required", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=, AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"error" => "Credentials-sourced account ID parameter is invalid"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "", account_id_endpoint_mode: "required", region: "us-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: ''),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.list_tables(
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "required", region: "us-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.describe_table(
            table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "required", region: "us-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.describe_table(
            table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and DualStack is enabled, but DualStack account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "required", region: "us-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.describe_table(
            table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "required", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", account_id_endpoint_mode: "required", region: "us-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.describe_table(
            table_name: 'arn:aws:dynamodb:us-west-2:222222222222:table/table_name',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", account_id_endpoint_mode: "required", region: "us-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.describe_table(
            table_name: 'arn:aws:s3:us-west-2:222222222222:stream/testStream',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=, AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "", account_id_endpoint_mode: "required", region: "us-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "us-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.batch_get_item(
            request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "us-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.batch_get_item(
            request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and DualStack is enabled, but DualStack account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "us-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.batch_get_item(
            request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://333333333333.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://222222222222.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountIdEndpointMode=required, Region=us-east-1}" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id_endpoint_mode: "required", region: "us-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and DualStack is enabled, but DualStack account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.list_tables(
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.batch_get_item(
            request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-west-2:333333333333:table/table_name], AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-west-2:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:s3:us-east-1:333333333333:stream/testStream], AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:s3:us-east-1:333333333333:stream/testStream"], account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=, AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "", account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: ''),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.list_tables(
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and DualStack is enabled, but DualStack account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.describe_table(
            table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.describe_table(
            table_name: 'arn:aws:dynamodb:us-west-2:222222222222:table/table_name',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.describe_table(
            table_name: 'arn:aws:s3:us-west-2:222222222222:stream/testStream',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=, AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "", account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and DualStack is enabled, but DualStack account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.batch_get_item(
            request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountIdEndpointMode=required, Region=cn-north-1}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id_endpoint_mode: "required", region: "cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=true, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-west-2:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-west-2:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:s3:us-east-1:333333333333:stream/testStream], AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:s3:us-east-1:333333333333:stream/testStream"], account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=, AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "", account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: ''),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-west-2:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:s3:us-west-2:222222222222:stream/testStream',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=, AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "", account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountIdEndpointMode=disabled, Region=us-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id_endpoint_mode: "disabled", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-west-2:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-west-2:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:s3:us-east-1:333333333333:stream/testStream], AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:s3:us-east-1:333333333333:stream/testStream"], account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=, AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "", account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: ''),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-west-2:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:s3:us-west-2:222222222222:stream/testStream',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=, AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "", account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountIdEndpointMode=preferred, Region=cn-north-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id_endpoint_mode: "preferred", region: "cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"error" => "FIPS and DualStack are enabled, but this partition does not support one or both"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"error" => "DualStack is enabled but this partition does not support DualStack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'us-iso-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'us-iso-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-west-2:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-west-2:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:s3:us-east-1:333333333333:stream/testStream], AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:s3:us-east-1:333333333333:stream/testStream"], account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=, AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "", account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'us-iso-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: ''),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"error" => "FIPS and DualStack are enabled, but this partition does not support one or both"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"error" => "DualStack is enabled but this partition does not support DualStack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-iso-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-iso-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-west-2:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-iso-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:s3:us-west-2:222222222222:stream/testStream',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=, AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "", account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"error" => "FIPS and DualStack are enabled, but this partition does not support one or both"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"error" => "DualStack is enabled but this partition does not support DualStack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'us-iso-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountIdEndpointMode=preferred, Region=us-iso-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id_endpoint_mode: "preferred", region: "us-iso-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=true, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'us-gov-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'us-gov-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-west-2:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-west-2:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=111111111111, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, ResourceArnList=[arn:aws:s3:us-east-1:333333333333:stream/testStream], AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "111111111111", resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", resource_arn_list: ["arn:aws:s3:us-east-1:333333333333:stream/testStream"], account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountId=, AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id: "", account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'us-gov-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: ''),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-gov-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-west-2:222222222222:table/table_name, AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-west-2:222222222222:table/table_name", account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-gov-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:dynamodb:us-west-2:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:s3:us-west-2:222222222222:stream/testStream, AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:s3:us-west-2:222222222222:stream/testStream", account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-gov-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws:s3:us-west-2:222222222222:stream/testStream',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=, AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "", account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=true, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: true, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=true, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: true, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'us-gov-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws:dynamodb:us-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{UseFIPS=false, UseDualStack=false, AccountIdEndpointMode=preferred, Region=us-gov-east-1}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, account_id_endpoint_mode: "preferred", region: "us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

  end
end
