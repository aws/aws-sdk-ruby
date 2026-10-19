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

    context "{Endpoint=https://dynamodb.cn-north-1.api.amazonwebservices.com.cn, Region=cn-north-1, AccountIdEndpointMode=preferred}" do
      let(:expected) do
        {"error" => "Endpoint override is not supported for dual-stack endpoints. Please enable dual-stack functionality by enabling the configuration. For more details, see: https://docs.aws.amazon.com/sdkref/latest/guide/feature-endpoints.html"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{endpoint: "https://dynamodb.cn-north-1.api.amazonwebservices.com.cn", region: "cn-north-1", account_id_endpoint_mode: "preferred"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Endpoint=https://dynamodb.us-gov-east-1.api.aws, Region=us-gov-east-1, AccountIdEndpointMode=preferred}" do
      let(:expected) do
        {"error" => "Endpoint override is not supported for dual-stack endpoints. Please enable dual-stack functionality by enabling the configuration. For more details, see: https://docs.aws.amazon.com/sdkref/latest/guide/feature-endpoints.html"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{endpoint: "https://dynamodb.us-gov-east-1.api.aws", region: "us-gov-east-1", account_id_endpoint_mode: "preferred"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Endpoint=https://dynamodb.us-east-1.api.aws, Region=us-east-1, AccountIdEndpointMode=preferred}" do
      let(:expected) do
        {"error" => "Endpoint override is not supported for dual-stack endpoints. Please enable dual-stack functionality by enabling the configuration. For more details, see: https://docs.aws.amazon.com/sdkref/latest/guide/feature-endpoints.html"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{endpoint: "https://dynamodb.us-east-1.api.aws", region: "us-east-1", account_id_endpoint_mode: "preferred"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Endpoint=https://111111111111.ddb.us-east-1.api.aws, Region=us-east-1, AccountIdEndpointMode=preferred}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.ddb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{endpoint: "https://111111111111.ddb.us-east-1.api.aws", region: "us-east-1", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{Endpoint=https://vpce-1a2b3c4d-5e6f.dynamodb.us-east-1.vpce.api.aws, Region=us-east-1, AccountIdEndpointMode=preferred}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://vpce-1a2b3c4d-5e6f.dynamodb.us-east-1.vpce.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{endpoint: "https://vpce-1a2b3c4d-5e6f.dynamodb.us-east-1.vpce.api.aws", region: "us-east-1", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{Endpoint=https://dynamodb.eu-west-1.api.aws, Region=eu-west-1, AccountIdEndpointMode=preferred}" do
      let(:expected) do
        {"error" => "Endpoint override is not supported for dual-stack endpoints. Please enable dual-stack functionality by enabling the configuration. For more details, see: https://docs.aws.amazon.com/sdkref/latest/guide/feature-endpoints.html"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{endpoint: "https://dynamodb.eu-west-1.api.aws", region: "eu-west-1", account_id_endpoint_mode: "preferred"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Endpoint=https://dynamodb.us-west-2.api.aws, Region=us-west-2, AccountIdEndpointMode=preferred}" do
      let(:expected) do
        {"error" => "Endpoint override is not supported for dual-stack endpoints. Please enable dual-stack functionality by enabling the configuration. For more details, see: https://docs.aws.amazon.com/sdkref/latest/guide/feature-endpoints.html"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{endpoint: "https://dynamodb.us-west-2.api.aws", region: "us-west-2", account_id_endpoint_mode: "preferred"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Endpoint=https://dynamodb.us-east-1.api.aws/, Region=us-east-1, AccountIdEndpointMode=preferred}" do
      let(:expected) do
        {"error" => "Endpoint override is not supported for dual-stack endpoints. Please enable dual-stack functionality by enabling the configuration. For more details, see: https://docs.aws.amazon.com/sdkref/latest/guide/feature-endpoints.html"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{endpoint: "https://dynamodb.us-east-1.api.aws/", region: "us-east-1", account_id_endpoint_mode: "preferred"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "dynamodb", "signingRegion" => "us-east-1"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
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
        expect_auth({"name" => "sigv4", "signingName" => "dynamodb", "signingRegion" => "us-east-1"})
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "dynamodb", "signingRegion" => "us-east-1"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
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
        expect_auth({"name" => "sigv4", "signingName" => "dynamodb", "signingRegion" => "us-east-1"})
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "dynamodb", "signingRegion" => "us-east-1"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
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
        expect_auth({"name" => "sigv4", "signingName" => "dynamodb", "signingRegion" => "us-east-1"})
        resp = client.list_tables(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
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

    context "{Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:not_an_account:table/table_name}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:not_an_account:table/table_name"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
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
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
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

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
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

    context "{ResourceArn=, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[], Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: [], region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws:dynamodb:af-south-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
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
          table_name: 'arn:aws:dynamodb:af-south-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws:s3:us-east-1:222222222222:stream/testStream, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:s3:us-east-1:222222222222:stream/testStream", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
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
          table_name: 'arn:aws:s3:us-east-1:222222222222:stream/testStream',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://333333333333.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
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

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://333333333333.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
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

    context "{AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ResourceArn=arn:aws:dynamodb:af-south-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://333333333333.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ResourceArn=arn:aws:s3:us-east-1:222222222222:stream/testStream, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://333333333333.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:s3:us-east-1:222222222222:stream/testStream", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ResourceArn=arn:aws:s3:af-south-1:222222222222:stream/testStream, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://333333333333.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:s3:af-south-1:222222222222:stream/testStream", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ResourceArn=arn:aws:s3:af-south-1:222222222222:stream/testStream, ResourceArnList=[arn:aws:s3:us-east-1:333333333333:stream/testStream], Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:s3:af-south-1:222222222222:stream/testStream", resource_arn_list: ["arn:aws:s3:us-east-1:333333333333:stream/testStream"], region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws:s3:af-south-1:222222222222:stream/testStream, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:s3:af-south-1:222222222222:stream/testStream", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
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
          table_name: 'arn:aws:s3:af-south-1:222222222222:stream/testStream',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, ResourceArn=arn:aws:dynamodb:af-south-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:af-south-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:af-south-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ResourceArn=arn:aws:s3:us-east-1:222222222222:stream/testStream, ResourceArnList=[arn:aws:s3:us-east-1:333333333333:stream/testStream], Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:s3:us-east-1:222222222222:stream/testStream", resource_arn_list: ["arn:aws:s3:us-east-1:333333333333:stream/testStream"], region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.ddb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
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

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.ddb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
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

    context "{ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://333333333333.ddb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
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

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
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

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
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

    context "{ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
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

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
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

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
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

    context "{ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
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

    context "{Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
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

    context "{AccountId=, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
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

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
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

    context "{ResourceArn=, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[], Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: [], region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws:dynamodb:af-south-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
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
          table_name: 'arn:aws:dynamodb:af-south-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws:s3:us-east-1:222222222222:stream/testStream, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:s3:us-east-1:222222222222:stream/testStream", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
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
          table_name: 'arn:aws:s3:us-east-1:222222222222:stream/testStream',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
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

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
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

    context "{AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ResourceArn=arn:aws:dynamodb:af-south-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ResourceArn=arn:aws:s3:us-east-1:222222222222:stream/testStream, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:s3:us-east-1:222222222222:stream/testStream", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ResourceArn=arn:aws:s3:af-south-1:222222222222:stream/testStream, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:s3:af-south-1:222222222222:stream/testStream", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ResourceArn=arn:aws:s3:af-south-1:222222222222:stream/testStream, ResourceArnList=[arn:aws:s3:us-east-1:333333333333:stream/testStream], Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:s3:af-south-1:222222222222:stream/testStream", resource_arn_list: ["arn:aws:s3:us-east-1:333333333333:stream/testStream"], region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws:s3:af-south-1:222222222222:stream/testStream, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:s3:af-south-1:222222222222:stream/testStream", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
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
          table_name: 'arn:aws:s3:af-south-1:222222222222:stream/testStream',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, ResourceArn=arn:aws:dynamodb:af-south-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:af-south-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:af-south-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ResourceArn=arn:aws:s3:us-east-1:222222222222:stream/testStream, ResourceArnList=[arn:aws:s3:us-east-1:333333333333:stream/testStream], Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:s3:us-east-1:222222222222:stream/testStream", resource_arn_list: ["arn:aws:s3:us-east-1:333333333333:stream/testStream"], region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
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

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
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

    context "{ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
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

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
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

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
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

    context "{ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
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

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
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

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
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

    context "{ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
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
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
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

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
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

    context "{ResourceArn=, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArnList=[], Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: [], region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws:dynamodb:af-south-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
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
            table_name: 'arn:aws:dynamodb:af-south-1:222222222222:table/table_name',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws:s3:us-east-1:222222222222:stream/testStream, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:s3:us-east-1:222222222222:stream/testStream", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
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
            table_name: 'arn:aws:s3:us-east-1:222222222222:stream/testStream',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://333333333333.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
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

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://333333333333.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
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

    context "{AccountId=111111111111, ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ResourceArn=arn:aws:dynamodb:af-south-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://333333333333.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ResourceArn=arn:aws:s3:us-east-1:222222222222:stream/testStream, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://333333333333.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:s3:us-east-1:222222222222:stream/testStream", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ResourceArn=arn:aws:s3:af-south-1:222222222222:stream/testStream, ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://333333333333.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:s3:af-south-1:222222222222:stream/testStream", resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ResourceArn=arn:aws:s3:af-south-1:222222222222:stream/testStream, ResourceArnList=[arn:aws:s3:us-east-1:333333333333:stream/testStream], Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:s3:af-south-1:222222222222:stream/testStream", resource_arn_list: ["arn:aws:s3:us-east-1:333333333333:stream/testStream"], region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws:s3:af-south-1:222222222222:stream/testStream, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:s3:af-south-1:222222222222:stream/testStream", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
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
            table_name: 'arn:aws:s3:af-south-1:222222222222:stream/testStream',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, ResourceArn=arn:aws:dynamodb:af-south-1:222222222222:table/table_name, ResourceArnList=[arn:aws:dynamodb:af-south-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/table_name", resource_arn_list: ["arn:aws:dynamodb:af-south-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, ResourceArn=arn:aws:s3:us-east-1:222222222222:stream/testStream, ResourceArnList=[arn:aws:s3:us-east-1:333333333333:stream/testStream], Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", resource_arn: "arn:aws:s3:us-east-1:222222222222:stream/testStream", resource_arn_list: ["arn:aws:s3:us-east-1:333333333333:stream/testStream"], region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.ddb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
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

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.ddb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
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

    context "{ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://333333333333.ddb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
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

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
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

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
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

    context "{ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
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

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
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

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
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

    context "{ResourceArnList=[arn:aws:dynamodb:us-east-1:333333333333:table/table_name], Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws:dynamodb:us-east-1:333333333333:table/table_name"], region: "us-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
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

    context "{Region=us-new-1, AccountIdEndpointMode=preferred, AccountId=111111111111, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.ddb.us-new-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-new-1", account_id_endpoint_mode: "preferred", account_id: "111111111111", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.ddb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
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

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.ddb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
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
          table_name: 'arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArnList=[arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name], Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://333333333333.ddb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name"], region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
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
          request_items: {"arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.ddb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.ddb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name], Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://333333333333.ddb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name"], region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name], Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name"], region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name], Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name"], region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
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

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
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
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArnList=[arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name], Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name"], region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
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
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name], Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name"], region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name], Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name"], region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name], Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name"], region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.ddb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
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

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.ddb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
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
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArnList=[arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name], Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://333333333333.ddb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name"], region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
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
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.ddb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.ddb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name], Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://333333333333.ddb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name"], region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArnList=[arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name], Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name"], region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArnList=[arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name], Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-cn:dynamodb:cn-north-1:333333333333:table/table_name"], region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Region=cn-new-1, AccountIdEndpointMode=preferred, AccountId=111111111111, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.cn-new-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-new-1", account_id_endpoint_mode: "preferred", account_id: "111111111111", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.ddb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
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

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.ddb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
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
          table_name: 'arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArnList=[arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name], Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://333333333333.ddb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name"], region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
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
          request_items: {"arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.ddb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.ddb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name], Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://333333333333.ddb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name"], region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name], Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name"], region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name], Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name"], region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
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

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
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
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArnList=[arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name], Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name"], region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
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
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name], Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name"], region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name], Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name"], region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name], Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name"], region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.ddb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
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

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.ddb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
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
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArnList=[arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name], Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://333333333333.ddb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name"], region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
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
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.ddb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.ddb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name], Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://333333333333.ddb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name"], region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArnList=[arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name], Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name"], region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArnList=[arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name], Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-us-gov:dynamodb:us-gov-east-1:333333333333:table/table_name"], region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Region=us-gov-new-1, AccountIdEndpointMode=preferred, AccountId=111111111111, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-gov-new-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-new-1", account_id_endpoint_mode: "preferred", account_id: "111111111111", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
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

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
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
          table_name: 'arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArnList=[arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name], Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name"], region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false})
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
          request_items: {"arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name], Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name"], region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name], Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name"], region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name], Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name"], region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
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

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
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
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.describe_table(
          table_name: 'arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArnList=[arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name], Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name"], region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false})
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
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.batch_get_item(
          request_items: {"arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name], Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name"], region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name], Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name"], region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArnList=[arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name], Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb-fips.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name"], region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true})
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

      it 'produces the correct output from the client when calling list_tables' do
        client = Client.new(
          region: 'us-iso-east-1',
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

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling describe_table' do
        client = Client.new(
          region: 'us-iso-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.describe_table(
            table_name: 'arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArnList=[arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name], Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name"], region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling batch_get_item' do
        client = Client.new(
          region: 'us-iso-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.batch_get_item(
            request_items: {"arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name" => {keys: [{"pk" => {s: "value"}}]}},
          )
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

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArnList=[arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name], Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name"], region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArnList=[arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name], Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name"], region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArnList=[arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name], Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn_list: ["arn:aws-iso:dynamodb:us-iso-east-1:333333333333:table/table_name"], region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Region=us-iso-new-1, AccountIdEndpointMode=preferred, AccountId=111111111111, UseFIPS=false, UseDualStack=false}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://dynamodb.us-iso-new-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-new-1", account_id_endpoint_mode: "preferred", account_id: "111111111111", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false, Endpoint=https://example.com, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false, endpoint: "https://example.com", is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
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
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true, Endpoint=https://example.com, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true, endpoint: "https://example.com", is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
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
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false, Endpoint=https://example.com, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false, endpoint: "https://example.com", is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
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
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true, Endpoint=https://example.com, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true, endpoint: "https://example.com", is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
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
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false, Endpoint=https://example.com, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false, endpoint: "https://example.com", is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
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
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true, Endpoint=https://example.com, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true, endpoint: "https://example.com", is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
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
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false, Endpoint=https://example.com, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false, endpoint: "https://example.com", is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
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
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true, Endpoint=https://example.com, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true, endpoint: "https://example.com", is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
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
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false, Endpoint=https://example.com, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false, endpoint: "https://example.com", is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
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
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true, Endpoint=https://example.com, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true, endpoint: "https://example.com", is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
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
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false, Endpoint=https://example.com, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false, endpoint: "https://example.com", is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
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
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true, Endpoint=https://example.com, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true, endpoint: "https://example.com", is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
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
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Endpoint=https://dynamodb.cn-north-1.api.amazonwebservices.com.cn, Region=cn-north-1, AccountIdEndpointMode=preferred, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Endpoint override is not supported for dual-stack endpoints. Please enable dual-stack functionality by enabling the configuration. For more details, see: https://docs.aws.amazon.com/sdkref/latest/guide/feature-endpoints.html"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{endpoint: "https://dynamodb.cn-north-1.api.amazonwebservices.com.cn", region: "cn-north-1", account_id_endpoint_mode: "preferred", is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          endpoint: 'https://dynamodb.cn-north-1.api.amazonwebservices.com.cn',
          region: 'cn-north-1',
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Endpoint=https://dynamodb.us-gov-east-1.api.aws, Region=us-gov-east-1, AccountIdEndpointMode=preferred, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Endpoint override is not supported for dual-stack endpoints. Please enable dual-stack functionality by enabling the configuration. For more details, see: https://docs.aws.amazon.com/sdkref/latest/guide/feature-endpoints.html"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{endpoint: "https://dynamodb.us-gov-east-1.api.aws", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          endpoint: 'https://dynamodb.us-gov-east-1.api.aws',
          region: 'us-gov-east-1',
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Endpoint=https://dynamodb.us-east-1.api.aws, Region=us-east-1, AccountIdEndpointMode=preferred, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Endpoint override is not supported for dual-stack endpoints. Please enable dual-stack functionality by enabling the configuration. For more details, see: https://docs.aws.amazon.com/sdkref/latest/guide/feature-endpoints.html"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{endpoint: "https://dynamodb.us-east-1.api.aws", region: "us-east-1", account_id_endpoint_mode: "preferred", is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          endpoint: 'https://dynamodb.us-east-1.api.aws',
          region: 'us-east-1',
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Endpoint=https://111111111111.ddb.us-east-1.api.aws, Region=us-east-1, AccountIdEndpointMode=preferred, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://111111111111.ddb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{endpoint: "https://111111111111.ddb.us-east-1.api.aws", region: "us-east-1", account_id_endpoint_mode: "preferred", is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          endpoint: 'https://111111111111.ddb.us-east-1.api.aws',
          region: 'us-east-1',
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{Endpoint=https://vpce-1a2b3c4d-5e6f.dynamodb.us-east-1.vpce.api.aws, Region=us-east-1, AccountIdEndpointMode=preferred, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://vpce-1a2b3c4d-5e6f.dynamodb.us-east-1.vpce.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{endpoint: "https://vpce-1a2b3c4d-5e6f.dynamodb.us-east-1.vpce.api.aws", region: "us-east-1", account_id_endpoint_mode: "preferred", is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          endpoint: 'https://vpce-1a2b3c4d-5e6f.dynamodb.us-east-1.vpce.api.aws',
          region: 'us-east-1',
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{Endpoint=https://dynamodb.eu-west-1.api.aws, Region=eu-west-1, AccountIdEndpointMode=preferred, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Endpoint override is not supported for dual-stack endpoints. Please enable dual-stack functionality by enabling the configuration. For more details, see: https://docs.aws.amazon.com/sdkref/latest/guide/feature-endpoints.html"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{endpoint: "https://dynamodb.eu-west-1.api.aws", region: "eu-west-1", account_id_endpoint_mode: "preferred", is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          endpoint: 'https://dynamodb.eu-west-1.api.aws',
          region: 'eu-west-1',
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Endpoint=https://dynamodb.us-west-2.api.aws, Region=us-west-2, AccountIdEndpointMode=preferred, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Endpoint override is not supported for dual-stack endpoints. Please enable dual-stack functionality by enabling the configuration. For more details, see: https://docs.aws.amazon.com/sdkref/latest/guide/feature-endpoints.html"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{endpoint: "https://dynamodb.us-west-2.api.aws", region: "us-west-2", account_id_endpoint_mode: "preferred", is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          endpoint: 'https://dynamodb.us-west-2.api.aws',
          region: 'us-west-2',
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Endpoint=https://dynamodb.us-east-1.api.aws/, Region=us-east-1, AccountIdEndpointMode=preferred, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Endpoint override is not supported for dual-stack endpoints. Please enable dual-stack functionality by enabling the configuration. For more details, see: https://docs.aws.amazon.com/sdkref/latest/guide/feature-endpoints.html"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{endpoint: "https://dynamodb.us-east-1.api.aws/", region: "us-east-1", account_id_endpoint_mode: "preferred", is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          endpoint: 'https://dynamodb.us-east-1.api.aws/',
          region: 'us-east-1',
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "dynamodb", "signingRegion" => "us-east-1"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "dynamodb", "signingRegion" => "us-east-1"})
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "dynamodb", "signingRegion" => "us-east-1"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "dynamodb", "signingRegion" => "us-east-1"})
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "dynamodb", "signingRegion" => "us-east-1"}]}, "url" => "http://localhost:8000"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'local',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "dynamodb", "signingRegion" => "us-east-1"})
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Dualstack and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=local, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and local endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "local", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: Missing Region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{use_fips: false, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false, ResourceArn=arn:aws:dynamodb:us-east-1:not_an_account:table/table_name, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:dynamodb:us-east-1:not_an_account:table/table_name", is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws:dynamodb:us-east-1:not_an_account:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.search-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Credentials-sourced account ID parameter is invalid"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
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
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.search-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws:dynamodb:af-south-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws:dynamodb:af-south-1:222222222222:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws:s3:us-east-1:222222222222:stream/testStream, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:s3:us-east-1:222222222222:stream/testStream", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws:s3:us-east-1:222222222222:stream/testStream',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws:s3:af-south-1:222222222222:stream/testStream, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:s3:af-south-1:222222222222:stream/testStream", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws:s3:af-south-1:222222222222:stream/testStream',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.search-ddb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.search-ddb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: ''),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws:dynamodb:af-south-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws:dynamodb:af-south-1:222222222222:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws:s3:us-east-1:222222222222:stream/testStream, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:s3:us-east-1:222222222222:stream/testStream", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws:s3:us-east-1:222222222222:stream/testStream',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws:s3:af-south-1:222222222222:stream/testStream, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:s3:af-south-1:222222222222:stream/testStream", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws:s3:af-south-1:222222222222:stream/testStream',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.search-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Credentials-sourced account ID parameter is invalid"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
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
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.search-ddb.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws:dynamodb:af-south-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:af-south-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.search_vectors(
            table_name: 'arn:aws:dynamodb:af-south-1:222222222222:table/table_name',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws:s3:us-east-1:222222222222:stream/testStream, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:s3:us-east-1:222222222222:stream/testStream", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.search_vectors(
            table_name: 'arn:aws:s3:us-east-1:222222222222:stream/testStream',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws:s3:af-south-1:222222222222:stream/testStream, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:s3:af-south-1:222222222222:stream/testStream", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.search_vectors(
            table_name: 'arn:aws:s3:af-south-1:222222222222:stream/testStream',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.search-ddb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.search-ddb.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
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
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.search_vectors(
            table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
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
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws:dynamodb:us-east-1:222222222222:table/table_name, Region=us-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws:dynamodb:us-east-1:222222222222:table/table_name", region: "us-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.search_vectors(
            table_name: 'arn:aws:dynamodb:us-east-1:222222222222:table/table_name',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Region=us-new-1, AccountIdEndpointMode=preferred, AccountId=111111111111, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.search-ddb.us-new-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-new-1", account_id_endpoint_mode: "preferred", account_id: "111111111111", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-new-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.search-ddb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.search-ddb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.search-ddb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.search-ddb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.search-ddb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.search-ddb.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.search-ddb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.search-ddb.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name, Region=cn-north-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-cn:dynamodb:cn-north-1:222222222222:table/table_name", region: "cn-north-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Region=cn-new-1, AccountIdEndpointMode=preferred, AccountId=111111111111, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.cn-new-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-new-1", account_id_endpoint_mode: "preferred", account_id: "111111111111", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'cn-new-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.search-ddb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-gov-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.search-ddb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-gov-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.search-ddb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.search-ddb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-gov-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-gov-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.search-ddb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-gov-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.search-ddb.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-gov-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://111111111111.search-ddb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://222222222222.search-ddb.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name, Region=us-gov-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-us-gov:dynamodb:us-gov-east-1:222222222222:table/table_name", region: "us-gov-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Region=us-gov-new-1, AccountIdEndpointMode=preferred, AccountId=111111111111, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-gov-new-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-new-1", account_id_endpoint_mode: "preferred", account_id: "111111111111", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-gov-new-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-iso-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-iso-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=preferred, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "preferred", use_fips: true, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-iso-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-iso-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'disabled',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: false, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=disabled, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb-fips.us-iso-east-1.api.aws.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "disabled", use_fips: true, use_dual_stack: true, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-iso-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.search_vectors(
            table_name: 'test-table',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-iso-east-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          account_id_endpoint_mode: 'required',
          simple_attributes: false,
          stub_responses: true
        )
        expect do
          client.search_vectors(
            table_name: 'arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name',
            index_name: 'test-index',
            search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
            top_k: 10,
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=false, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: false, use_dual_stack: true, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: false, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{AccountId=111111111111, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{account_id: "111111111111", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{ResourceArn=arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name, Region=us-iso-east-1, AccountIdEndpointMode=required, UseFIPS=true, UseDualStack=true, IsSearchOperation=true}" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required and FIPS is enabled, but FIPS account endpoints are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{resource_arn: "arn:aws-iso:dynamodb:us-iso-east-1:222222222222:table/table_name", region: "us-iso-east-1", account_id_endpoint_mode: "required", use_fips: true, use_dual_stack: true, is_search_operation: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "{Region=us-iso-new-1, AccountIdEndpointMode=preferred, AccountId=111111111111, UseFIPS=false, UseDualStack=false, IsSearchOperation=true}" do
      let(:expected) do
        {"endpoint" => {"url" => "https://search-dynamodb.us-iso-new-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-new-1", account_id_endpoint_mode: "preferred", account_id: "111111111111", use_fips: false, use_dual_stack: false, is_search_operation: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling search_vectors' do
        client = Client.new(
          region: 'us-iso-new-1',
          use_fips_endpoint: false,
          use_dualstack_endpoint: false,
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '111111111111'),
          account_id_endpoint_mode: 'preferred',
          simple_attributes: false,
          stub_responses: true
        )
        resp = client.search_vectors(
          table_name: 'test-table',
          index_name: 'test-index',
          search_vector: [{n: "1.0"}, {n: "2.0"}, {n: "3.0"}],
          top_k: 10,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

  end
end
