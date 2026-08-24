# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::Kinesis
  describe EndpointProvider do
    subject { Aws::Kinesis::EndpointProvider.new }

    context "For region af-south-1 with FIPS disabled and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.af-south-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.ap-east-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.ap-northeast-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.ap-northeast-2.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.ap-northeast-3.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.ap-south-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.ap-southeast-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.ap-southeast-2.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.ap-southeast-3.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.ca-central-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.eu-central-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.eu-north-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.eu-south-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.eu-west-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.eu-west-2.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.eu-west-3.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.me-south-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.sa-east-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.us-east-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis-fips.us-east-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.us-east-2.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis-fips.us-east-2.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.us-west-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis-fips.us-west-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.us-west-2.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis-fips.us-west-2.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis-fips.us-east-1.api.aws"}}
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
        {"endpoint" => {"url" => "https://kinesis.us-east-1.api.aws"}}
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
        {"endpoint" => {"url" => "https://kinesis.cn-north-1.amazonaws.com.cn"}}
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
        {"endpoint" => {"url" => "https://kinesis.cn-northwest-1.amazonaws.com.cn"}}
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
        {"endpoint" => {"url" => "https://kinesis-fips.cn-north-1.api.amazonwebservices.com.cn"}}
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
        {"endpoint" => {"url" => "https://kinesis-fips.cn-north-1.amazonaws.com.cn"}}
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
        {"endpoint" => {"url" => "https://kinesis.cn-north-1.api.amazonwebservices.com.cn"}}
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
        {"endpoint" => {"url" => "https://kinesis.us-gov-east-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.us-gov-east-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.us-gov-west-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis.us-gov-west-1.amazonaws.com"}}
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
        {"endpoint" => {"url" => "https://kinesis-fips.us-gov-east-1.api.aws"}}
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
        {"endpoint" => {"url" => "https://kinesis.us-gov-east-1.api.aws"}}
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
        {"endpoint" => {"url" => "https://kinesis.us-iso-east-1.c2s.ic.gov"}}
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
        {"endpoint" => {"url" => "https://kinesis.us-iso-west-1.c2s.ic.gov"}}
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
        {"endpoint" => {"url" => "https://kinesis-fips.us-iso-east-1.c2s.ic.gov"}}
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
        {"endpoint" => {"url" => "https://kinesis.us-isob-east-1.sc2s.sgov.gov"}}
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
        {"endpoint" => {"url" => "https://kinesis-fips.us-isob-east-1.sc2s.sgov.gov"}}
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

    context "Invalid ARN: Failed to parse ARN." do
      let(:expected) do
        {"error" => "Invalid ARN: Failed to parse ARN."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, stream_arn: "arn"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid ARN: partition missing from ARN." do
      let(:expected) do
        {"error" => "Invalid ARN: Failed to parse ARN."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, stream_arn: "arn::kinesis:us-west-2:123456789012:stream/testStream"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid ARN: partitions mismatch." do
      let(:expected) do
        {"error" => "Partition: aws from ARN doesn't match with partition name: aws-us-gov."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-west-1", use_fips: false, use_dual_stack: false, stream_arn: "arn:aws:kinesis:us-west-2:123456789012:stream/testStream"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid ARN: Not Kinesis" do
      let(:expected) do
        {"error" => "Invalid ARN: The ARN was not for the Kinesis service, found: s3."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, stream_arn: "arn:aws:s3:us-west-2:123456789012:stream/testStream"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid ARN: Region is missing in ARN" do
      let(:expected) do
        {"error" => "Invalid ARN: Invalid region."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, stream_arn: "arn:aws:kinesis::123456789012:stream/testStream"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid ARN: Region is empty string in ARN" do
      let(:expected) do
        {"error" => "Invalid ARN: Invalid region."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, stream_arn: "arn:aws:kinesis:  :123456789012:stream/testStream"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid ARN: Invalid account id" do
      let(:expected) do
        {"error" => "Invalid ARN: Invalid account id."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, stream_arn: "arn:aws:kinesis:us-east-1::stream/testStream", operation_type: "control"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid ARN: Invalid account id" do
      let(:expected) do
        {"error" => "Invalid ARN: Invalid account id."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, stream_arn: "arn:aws:kinesis:us-east-1:   :stream/testStream", operation_type: "control"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid ARN: Kinesis ARNs only support stream arn types" do
      let(:expected) do
        {"error" => "Invalid ARN: Kinesis ARNs don't support `accesspoint` arn types."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, stream_arn: "arn:aws:kinesis:us-east-1:123:accesspoint/testStream"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "OperationType not set" do
      let(:expected) do
        {"error" => "Operation Type is not set. Please contact service team for resolution."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, stream_arn: "arn:aws:kinesis:us-east-1:123456789012:stream/testStream"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Custom Endpoint is specified" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", stream_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint targeting control operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", stream_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint targeting data operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "data", stream_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint with fips targeting data operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, operation_type: "data", stream_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint with fips targeting control operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, operation_type: "control", stream_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint with Dual Stack and FIPS enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: true, operation_type: "control", stream_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint with Dual Stack enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis.us-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-1", use_fips: false, use_dual_stack: true, operation_type: "data", stream_arn: "arn:aws:kinesis:us-west-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint with FIPS and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis.us-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-1", use_fips: false, use_dual_stack: false, operation_type: "control", stream_arn: "arn:aws:kinesis:us-west-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "RegionMismatch: client region should be used for endpoint region" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "data", stream_arn: "arn:aws:kinesis:us-west-1:123:stream/testStream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint with FIPS enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis-fips.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-northwest-1", use_fips: true, use_dual_stack: false, operation_type: "data", stream_arn: "arn:aws-cn:kinesis:cn-northwest-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint with FIPS and DualStack enabled for cn regions." do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis-fips.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-northwest-1", use_fips: true, use_dual_stack: true, operation_type: "data", stream_arn: "arn:aws-cn:kinesis:cn-northwest-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint targeting control operation type in ADC regions" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", stream_arn: "arn:aws-iso:kinesis:us-iso-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint targeting control operation type in ADC regions" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-iso-west-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-west-1", use_fips: false, use_dual_stack: false, operation_type: "control", stream_arn: "arn:aws-iso:kinesis:us-iso-west-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint targeting data operation type in ADC regions" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-isob-east-1.sc2s.sgov.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-isob-east-1", use_fips: false, use_dual_stack: false, operation_type: "data", stream_arn: "arn:aws-iso-b:kinesis:us-isob-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint with fips targeting control operation type in ADC regions" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-east-1", use_fips: true, use_dual_stack: false, operation_type: "control", stream_arn: "arn:aws-iso:kinesis:us-iso-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint with fips targeting data operation type in ADC regions" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis-fips.us-isob-east-1.sc2s.sgov.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-isob-east-1", use_fips: true, use_dual_stack: false, operation_type: "data", stream_arn: "arn:aws-iso-b:kinesis:us-isob-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Invalid ConsumerARN: Failed to parse ARN." do
      let(:expected) do
        {"error" => "Invalid ARN: Failed to parse ARN."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, consumer_arn: "arn"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid ConsumerARN: partition missing from ARN." do
      let(:expected) do
        {"error" => "Invalid ARN: Failed to parse ARN."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, consumer_arn: "arn::kinesis:us-west-2:123456789012:stream/testStream/consumer/test-consumer:1525898737"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid ARN: partitions mismatch." do
      let(:expected) do
        {"error" => "Partition: aws from ARN doesn't match with partition name: aws-us-gov."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-west-1", use_fips: false, use_dual_stack: false, consumer_arn: "arn:aws:kinesis:us-west-2:123456789012:stream/testStream/consumer/test-consumer:1525898737"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid ARN: Not Kinesis" do
      let(:expected) do
        {"error" => "Invalid ARN: The ARN was not for the Kinesis service, found: s3."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, consumer_arn: "arn:aws:s3:us-west-2:123456789012:stream/testStream/consumer/test-consumer:1525898737"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid ARN: Region is missing in ARN" do
      let(:expected) do
        {"error" => "Invalid ARN: Invalid region."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, consumer_arn: "arn:aws:kinesis::123456789012:stream/testStream/consumer/test-consumer:1525898737"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid ARN: Region is empty string in ARN" do
      let(:expected) do
        {"error" => "Invalid ARN: Invalid region."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, consumer_arn: "arn:aws:kinesis:  :123456789012:stream/testStream/consumer/test-consumer:1525898737"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid ARN: Invalid account id" do
      let(:expected) do
        {"error" => "Invalid ARN: Invalid account id."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, consumer_arn: "arn:aws:kinesis:us-east-1::stream/testStream/consumer/test-consumer:1525898737", operation_type: "control"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid ARN: Invalid account id" do
      let(:expected) do
        {"error" => "Invalid ARN: Invalid account id."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, consumer_arn: "arn:aws:kinesis:us-east-1:   :stream/testStream/consumer/test-consumer:1525898737", operation_type: "control"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid ARN: Kinesis ARNs only support stream arn/consumer arn types" do
      let(:expected) do
        {"error" => "Invalid ARN: Kinesis ARNs don't support `accesspoint` arn types."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, consumer_arn: "arn:aws:kinesis:us-east-1:123:accesspoint/testStream/consumer/test-consumer:1525898737"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "OperationType not set" do
      let(:expected) do
        {"error" => "Operation Type is not set. Please contact service team for resolution."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, consumer_arn: "arn:aws:kinesis:us-east-1:123456789012:stream/testStream/consumer/test-consumer:1525898737"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Custom Endpoint is specified" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", consumer_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint targeting control operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", consumer_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint targeting data operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "data", consumer_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint with fips targeting data operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, operation_type: "data", consumer_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint with fips targeting control operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, operation_type: "control", consumer_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint with Dual Stack and FIPS enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: true, operation_type: "control", consumer_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint with Dual Stack enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis.us-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-1", use_fips: false, use_dual_stack: true, operation_type: "data", consumer_arn: "arn:aws:kinesis:us-west-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint with FIPS and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis.us-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-1", use_fips: false, use_dual_stack: false, operation_type: "control", consumer_arn: "arn:aws:kinesis:us-west-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "RegionMismatch: client region should be used for endpoint region" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "data", consumer_arn: "arn:aws:kinesis:us-west-1:123:stream/testStream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint with FIPS enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis-fips.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-northwest-1", use_fips: true, use_dual_stack: false, operation_type: "data", consumer_arn: "arn:aws-cn:kinesis:cn-northwest-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint with FIPS and DualStack enabled for cn regions." do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis-fips.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-northwest-1", use_fips: true, use_dual_stack: true, operation_type: "data", consumer_arn: "arn:aws-cn:kinesis:cn-northwest-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint targeting control operation type in ADC regions" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", consumer_arn: "arn:aws-iso:kinesis:us-iso-east-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint targeting control operation type in ADC regions" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-iso-west-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-west-1", use_fips: false, use_dual_stack: false, operation_type: "control", consumer_arn: "arn:aws-iso:kinesis:us-iso-west-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint targeting data operation type in ADC regions" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-isob-east-1.sc2s.sgov.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-isob-east-1", use_fips: false, use_dual_stack: false, operation_type: "data", consumer_arn: "arn:aws-iso-b:kinesis:us-isob-east-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint with fips targeting control operation type in ADC regions" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-east-1", use_fips: true, use_dual_stack: false, operation_type: "control", consumer_arn: "arn:aws-iso:kinesis:us-iso-east-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account endpoint with fips targeting data operation type in ADC regions" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis-fips.us-isob-east-1.sc2s.sgov.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-isob-east-1", use_fips: true, use_dual_stack: false, operation_type: "data", consumer_arn: "arn:aws-iso-b:kinesis:us-isob-east-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ConsumerARN targeting US-EAST-1" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123456789123.data-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "data", consumer_arn: "arn:aws:kinesis:us-east-1:123456789123:stream/foobar/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Both StreamARN and ConsumerARN specified. StreamARN should take precedence" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "data", stream_arn: "arn:aws:kinesis:us-east-1:123:stream/foobar", consumer_arn: "arn:aws:kinesis:us-east-1:123456789123:stream/foobar/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN test: Invalid ARN: Failed to parse ARN." do
      let(:expected) do
        {"error" => "Invalid ARN: Failed to parse ARN."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, resource_arn: "arn"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ResourceARN as StreamARN test: Invalid ARN: partition missing from ARN." do
      let(:expected) do
        {"error" => "Invalid ARN: Failed to parse ARN."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, resource_arn: "arn::kinesis:us-west-2:123456789012:stream/testStream"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ResourceARN as StreamARN test: Invalid ARN: partitions mismatch." do
      let(:expected) do
        {"error" => "Partition: aws from ARN doesn't match with partition name: aws-us-gov."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-west-1", use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:kinesis:us-west-2:123456789012:stream/testStream"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ResourceARN as StreamARN test: Invalid ARN: Not Kinesis" do
      let(:expected) do
        {"error" => "Invalid ARN: The ARN was not for the Kinesis service, found: s3."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:s3:us-west-2:123456789012:stream/testStream"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ResourceARN as StreamARN test: Invalid ARN: Region is missing in ARN" do
      let(:expected) do
        {"error" => "Invalid ARN: Invalid region."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:kinesis::123456789012:stream/testStream"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ResourceARN as StreamARN test: Invalid ARN: Region is empty string in ARN" do
      let(:expected) do
        {"error" => "Invalid ARN: Invalid region."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:kinesis:  :123456789012:stream/testStream"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ResourceARN as StreamARN test: Invalid ARN: Invalid account id" do
      let(:expected) do
        {"error" => "Invalid ARN: Invalid account id."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:kinesis:us-east-1::stream/testStream", operation_type: "control"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ResourceARN as StreamARN test: Invalid ARN: Invalid account id" do
      let(:expected) do
        {"error" => "Invalid ARN: Invalid account id."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:kinesis:us-east-1:   :stream/testStream", operation_type: "control"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ResourceARN as StreamARN test: Invalid ARN: Kinesis ARNs only support stream arn types" do
      let(:expected) do
        {"error" => "Invalid ARN: Kinesis ARNs don't support `accesspoint` arn types."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:kinesis:us-east-1:123:accesspoint/testStream"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ResourceARN as StreamARN test: OperationType not set" do
      let(:expected) do
        {"error" => "Operation Type is not set. Please contact service team for resolution."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:kinesis:us-east-1:123456789012:stream/testStream"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ResourceARN as StreamARN test: Custom Endpoint is specified" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", resource_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as StreamARN test: Account endpoint targeting control operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", resource_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as StreamARN test: Account endpoint targeting data operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "data", resource_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as StreamARN test: Account endpoint with fips targeting data operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, operation_type: "data", resource_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as StreamARN test: Account endpoint with fips targeting control operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, operation_type: "control", resource_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as StreamARN test: Account endpoint with Dual Stack and FIPS enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: true, operation_type: "control", resource_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as StreamARN test: Account endpoint with Dual Stack enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis.us-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-1", use_fips: false, use_dual_stack: true, operation_type: "data", resource_arn: "arn:aws:kinesis:us-west-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as StreamARN test: Account endpoint with FIPS and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis.us-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-1", use_fips: false, use_dual_stack: false, operation_type: "control", resource_arn: "arn:aws:kinesis:us-west-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as StreamARN test: RegionMismatch: client region should be used for endpoint region" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "data", resource_arn: "arn:aws:kinesis:us-west-1:123:stream/testStream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as StreamARN test: Account endpoint with FIPS enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis-fips.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-northwest-1", use_fips: true, use_dual_stack: false, operation_type: "data", resource_arn: "arn:aws-cn:kinesis:cn-northwest-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as StreamARN test: Account endpoint with FIPS and DualStack enabled for cn regions." do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis-fips.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-northwest-1", use_fips: true, use_dual_stack: true, operation_type: "data", resource_arn: "arn:aws-cn:kinesis:cn-northwest-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as StreamARN test: Account endpoint targeting control operation type in ADC regions" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", resource_arn: "arn:aws-iso:kinesis:us-iso-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as StreamARN test: Account endpoint targeting control operation type in ADC regions" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-iso-west-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-west-1", use_fips: false, use_dual_stack: false, operation_type: "control", resource_arn: "arn:aws-iso:kinesis:us-iso-west-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as StreamARN test: Account endpoint targeting data operation type in ADC regions" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-isob-east-1.sc2s.sgov.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-isob-east-1", use_fips: false, use_dual_stack: false, operation_type: "data", resource_arn: "arn:aws-iso-b:kinesis:us-isob-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as StreamARN test: Account endpoint with fips targeting control operation type in ADC regions" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-east-1", use_fips: true, use_dual_stack: false, operation_type: "control", resource_arn: "arn:aws-iso:kinesis:us-iso-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as StreamARN test: Account endpoint with fips targeting data operation type in ADC regions" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis-fips.us-isob-east-1.sc2s.sgov.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-isob-east-1", use_fips: true, use_dual_stack: false, operation_type: "data", resource_arn: "arn:aws-iso-b:kinesis:us-isob-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as ConsumerARN test: Invalid ARN: partition missing from ARN." do
      let(:expected) do
        {"error" => "Invalid ARN: Failed to parse ARN."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, resource_arn: "arn::kinesis:us-west-2:123456789012:stream/testStream/consumer/test-consumer:1525898737"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ResourceARN as ConsumerARN test: Invalid ARN: partitions mismatch." do
      let(:expected) do
        {"error" => "Partition: aws from ARN doesn't match with partition name: aws-us-gov."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-west-1", use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:kinesis:us-west-2:123456789012:stream/testStream/consumer/test-consumer:1525898737"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ResourceARN as ConsumerARN test: Invalid ARN: Not Kinesis" do
      let(:expected) do
        {"error" => "Invalid ARN: The ARN was not for the Kinesis service, found: s3."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:s3:us-west-2:123456789012:stream/testStream/consumer/test-consumer:1525898737"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ResourceARN as ConsumerARN test: Invalid ARN: Region is missing in ARN" do
      let(:expected) do
        {"error" => "Invalid ARN: Invalid region."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:kinesis::123456789012:stream/testStream/consumer/test-consumer:1525898737"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ResourceARN as ConsumerARN test: Invalid ARN: Region is empty string in ARN" do
      let(:expected) do
        {"error" => "Invalid ARN: Invalid region."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:kinesis:  :123456789012:stream/testStream/consumer/test-consumer:1525898737"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ResourceARN as ConsumerARN test: Invalid ARN: Invalid account id" do
      let(:expected) do
        {"error" => "Invalid ARN: Invalid account id."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:kinesis:us-east-1::stream/testStream/consumer/test-consumer:1525898737", operation_type: "control"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ResourceARN as ConsumerARN test: Invalid ARN: Invalid account id" do
      let(:expected) do
        {"error" => "Invalid ARN: Invalid account id."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:kinesis:us-east-1:   :stream/testStream/consumer/test-consumer:1525898737", operation_type: "control"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ResourceARN as ConsumerARN test: Invalid ARN: Kinesis ARNs only support stream arn/consumer arn types" do
      let(:expected) do
        {"error" => "Invalid ARN: Kinesis ARNs don't support `accesspoint` arn types."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:kinesis:us-east-1:123:accesspoint/testStream/consumer/test-consumer:1525898737"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ResourceARN as ConsumerARN test: OperationType not set" do
      let(:expected) do
        {"error" => "Operation Type is not set. Please contact service team for resolution."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, resource_arn: "arn:aws:kinesis:us-east-1:123456789012:stream/testStream/consumer/test-consumer:1525898737"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ResourceARN as ConsumerARN test: Custom Endpoint is specified" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", resource_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737", endpoint: "https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as ConsumerARN test: Account endpoint targeting control operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", resource_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as ConsumerARN test: Account endpoint targeting data operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "data", resource_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as ConsumerARN test: Account endpoint with fips targeting data operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, operation_type: "data", resource_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as ConsumerARN test: Account endpoint with fips targeting control operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, operation_type: "control", resource_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as ConsumerARN test: Account endpoint with Dual Stack and FIPS enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: true, operation_type: "control", resource_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as ConsumerARN test: Account endpoint with Dual Stack enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis.us-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-1", use_fips: false, use_dual_stack: true, operation_type: "data", resource_arn: "arn:aws:kinesis:us-west-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as ConsumerARN test: Account endpoint with FIPS and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis.us-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-1", use_fips: false, use_dual_stack: false, operation_type: "control", resource_arn: "arn:aws:kinesis:us-west-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as ConsumerARN test: RegionMismatch: client region should be used for endpoint region" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "data", resource_arn: "arn:aws:kinesis:us-west-1:123:stream/testStream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as ConsumerARN test: Account endpoint with FIPS enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis-fips.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-northwest-1", use_fips: true, use_dual_stack: false, operation_type: "data", resource_arn: "arn:aws-cn:kinesis:cn-northwest-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as ConsumerARN test: Account endpoint with FIPS and DualStack enabled for cn regions." do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis-fips.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-northwest-1", use_fips: true, use_dual_stack: true, operation_type: "data", resource_arn: "arn:aws-cn:kinesis:cn-northwest-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as ConsumerARN test: Account endpoint targeting control operation type in ADC regions" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", resource_arn: "arn:aws-iso:kinesis:us-iso-east-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as ConsumerARN test: Account endpoint targeting control operation type in ADC regions" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-iso-west-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-west-1", use_fips: false, use_dual_stack: false, operation_type: "control", resource_arn: "arn:aws-iso:kinesis:us-iso-west-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as ConsumerARN test: Account endpoint targeting data operation type in ADC regions" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-isob-east-1.sc2s.sgov.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-isob-east-1", use_fips: false, use_dual_stack: false, operation_type: "data", resource_arn: "arn:aws-iso-b:kinesis:us-isob-east-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as ConsumerARN test: Account endpoint with fips targeting control operation type in ADC regions" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-east-1", use_fips: true, use_dual_stack: false, operation_type: "control", resource_arn: "arn:aws-iso:kinesis:us-iso-east-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ResourceARN as ConsumerARN test: Account endpoint with fips targeting data operation type in ADC regions" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis-fips.us-isob-east-1.sc2s.sgov.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-isob-east-1", use_fips: true, use_dual_stack: false, operation_type: "data", resource_arn: "arn:aws-iso-b:kinesis:us-isob-east-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: OperationType not set with StreamId" do
      let(:expected) do
        {"error" => "Operation Type is not set. Please contact service team for resolution."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, stream_id: "af4lwng4k01746835071-xyz"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "StreamId test: Stream endpoint targeting control operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.control-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", stream_id: "af4lwng4k01746835071-xyz", stream_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Stream endpoint targeting data operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.data-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "data", stream_id: "af4lwng4k01746835071-xyz", stream_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_shard_iterator' do
        client = Client.new(
          region: 'us-east-1',
          stub_responses: true
        )
        resp = client.get_shard_iterator(
          shard_id: 'shardId-000000000001',
          shard_iterator_type: 'LATEST',
          stream_id: 'af4lwng4k01746835071-xyz',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "StreamId test: Stream endpoint with fips targeting data operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.data-kinesis-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, operation_type: "data", stream_id: "af4lwng4k01746835071-xyz", stream_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Stream endpoint with fips targeting control operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.control-kinesis-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, operation_type: "control", stream_id: "af4lwng4k01746835071-xyz", stream_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Stream endpoint with Dual Stack and FIPS enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.control-kinesis-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: true, operation_type: "control", stream_id: "af4lwng4k01746835071-xyz", stream_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Stream endpoint with Dual Stack enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.data-kinesis.us-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-1", use_fips: false, use_dual_stack: true, operation_type: "data", stream_id: "af4lwng4k01746835071-xyz", stream_arn: "arn:aws:kinesis:us-west-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Stream endpoint with FIPS and DualStack disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.control-kinesis.us-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-1", use_fips: false, use_dual_stack: false, operation_type: "control", stream_id: "af4lwng4k01746835071-xyz", stream_arn: "arn:aws:kinesis:us-west-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_shards' do
        client = Client.new(
          region: 'us-west-1',
          stub_responses: true
        )
        resp = client.list_shards(
          stream_id: 'af4lwng4k01746835071-xyz',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "StreamId test: Stream endpoint FIPS and DualStack disabled with endpoint" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.control-kinesis-pod1.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", stream_id: "af4lwng4k01746835071-xyz", endpoint: "kinesis-pod1.us-east-1.amazonaws.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Stream endpoint targeting data operation type with endpoint" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.data-kinesis-pod1.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "data", stream_id: "af4lwng4k01746835071-xyz", endpoint: "kinesis-pod1.us-east-1.amazonaws.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Stream endpoint with fips targeting data operation type with endpoint" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.data-kinesis-pod1-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, operation_type: "data", stream_id: "af4lwng4k01746835071-xyz", endpoint: "kinesis-pod1.us-east-1.amazonaws.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Stream endpoint with fips targeting control operation type with endpoint" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.control-kinesis-pod1-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, operation_type: "control", stream_id: "af4lwng4k01746835071-xyz", endpoint: "kinesis-pod1.us-east-1.amazonaws.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Stream endpoint with Dual Stack and FIPS enabled with endpoint" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.control-kinesis-pod1-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: true, operation_type: "control", stream_id: "af4lwng4k01746835071-xyz", endpoint: "kinesis-pod1.us-east-1.amazonaws.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Stream endpoint with Dual Stack enabled with endpoint" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.data-kinesis-pod1.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: true, operation_type: "data", stream_id: "af4lwng4k01746835071-xyz", endpoint: "kinesis-pod1.us-east-1.amazonaws.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Stream endpoint targeting data operation type with https endpoint" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.data-kinesis-pod1.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "data", stream_id: "af4lwng4k01746835071-xyz", endpoint: "https://kinesis-pod1.us-east-1.amazonaws.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: HTTPS endpoint with FIPS enabled targeting control operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.control-kinesis-pod1-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, operation_type: "control", stream_id: "af4lwng4k01746835071-xyz", endpoint: "https://kinesis-pod1.us-east-1.amazonaws.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: HTTPS endpoint with FIPS enabled targeting data operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.data-kinesis-pod1-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, operation_type: "data", stream_id: "af4lwng4k01746835071-xyz", endpoint: "https://kinesis-pod1.us-east-1.amazonaws.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: HTTPS endpoint with DualStack enabled targeting control operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.control-kinesis-pod1.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: true, operation_type: "control", stream_id: "af4lwng4k01746835071-xyz", endpoint: "https://kinesis-pod1.us-east-1.amazonaws.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: HTTPS endpoint with DualStack enabled targeting data operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.data-kinesis-pod1.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: true, operation_type: "data", stream_id: "af4lwng4k01746835071-xyz", endpoint: "https://kinesis-pod1.us-east-1.amazonaws.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: HTTPS endpoint with FIPS and DualStack enabled targeting control operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.control-kinesis-pod1-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: true, operation_type: "control", stream_id: "af4lwng4k01746835071-xyz", endpoint: "https://kinesis-pod1.us-east-1.amazonaws.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: HTTPS endpoint with FIPS and DualStack enabled targeting data operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.data-kinesis-pod1-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: true, operation_type: "data", stream_id: "af4lwng4k01746835071-xyz", endpoint: "https://kinesis-pod1.us-east-1.amazonaws.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: HTTPS endpoint with FIPS enabled in different region" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.data-kinesis-pod2-fips.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: true, use_dual_stack: false, operation_type: "data", stream_id: "af4lwng4k01746835071-xyz", endpoint: "https://kinesis-pod2.us-west-2.amazonaws.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: HTTPS endpoint with DualStack enabled in different region" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.control-kinesis-pod2.us-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: true, operation_type: "control", stream_id: "af4lwng4k01746835071-xyz", endpoint: "https://kinesis-pod2.us-west-2.amazonaws.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Stream endpoint with ConsumerARN targeting control operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.control-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", stream_id: "af4lwng4k01746835071-xyz", consumer_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Stream endpoint with ConsumerARN targeting data operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.data-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "data", stream_id: "af4lwng4k01746835071-xyz", consumer_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Stream endpoint with ResourceARN targeting control operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.control-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", stream_id: "af4lwng4k01746835071-xyz", resource_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Stream endpoint with ResourceARN targeting data operation type" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.data-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "data", stream_id: "af4lwng4k01746835071-xyz", resource_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Invalid StreamId with ARN" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.data-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "data", stream_id: "af4lwng4k01746835071=xyz", resource_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Invalid streamId with custom endpoint" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis-pod2.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", stream_id: "af4lwng4k01746835071=xyz", endpoint: "https://kinesis-pod2.us-west-2.amazonaws.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Invalid streamId" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", stream_id: "af4lwng4k01746835071=xyz"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Invalid streamId with custom endpoint and ARN" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis-pod2.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", stream_id: "af4lwng4k01746835071=xyz", endpoint: "https://kinesis-pod2.us-west-2.amazonaws.com", resource_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Invalid streamId with longer prefix" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", stream_id: "af4lwng4k0174683507123-xyz", resource_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Invalid streamId with shorter prefix" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", stream_id: "af4lwng4k01746835-xyz", resource_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Invalid streamId with longer suffix" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", stream_id: "af4lwng4k01746835071-wxyz", resource_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "StreamId test: Invalid streamId with shorter suffix" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", stream_id: "af4lwng4k01746835071-yz", resource_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "AccountId test: Account Id present" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://012345678901.data-kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "data", account_id: "012345678901", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_shard_iterator' do
        client = Client.new(
          region: 'us-west-2',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '012345678901'),
          account_id_endpoint_mode: 'preferred',
          stub_responses: true
        )
        resp = client.get_shard_iterator(
          shard_id: 'shardId-000000000001',
          shard_iterator_type: 'LATEST',
          stream_name: 'test-stream',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "AccountId test: Account Id present with fips" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://123.control-kinesis-fips.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: true, use_dual_stack: false, operation_type: "control", account_id: "123", account_id_endpoint_mode: "required"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_shards' do
        client = Client.new(
          region: 'us-west-2',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '123'),
          account_id_endpoint_mode: 'required',
          use_fips_endpoint: true,
          stub_responses: true
        )
        resp = client.list_shards(
          stream_name: 'testStream',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "AccountId test: Account Id present with dual stack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://123.control-kinesis.us-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: true, operation_type: "control", account_id: "123", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "AccountId test: Account Id present with fips and dual stack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://123.control-kinesis-fips.us-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: true, use_dual_stack: true, operation_type: "control", account_id: "123", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account Id present with streamId" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.control-kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", stream_id: "af4lwng4k01746835071-xyz", account_id: "123", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account Id present with stream ARN" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", stream_arn: "arn:aws:kinesis:us-east-1:123:stream/test-stream", account_id: "123", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account Id present with consumer ARN" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", consumer_arn: "arn:aws:kinesis:us-west-2:123:stream/testStream/consumer/test-consumer:1525898737", account_id: "123", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account Id present with resource ARN" do
      let(:expected) do
        {"endpoint" => {"url" => "https://123.control-kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", resource_arn: "arn:aws:kinesis:us-west-2:123:stream/testStream/consumer/test-consumer:1525898737", account_id: "123", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account Id present and stream ARN with different accountId" do
      let(:expected) do
        {"endpoint" => {"url" => "https://456.control-kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", resource_arn: "arn:aws:kinesis:us-west-2:456:stream/testStream", account_id: "123", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account Id present and consumer ARN with different accountId" do
      let(:expected) do
        {"endpoint" => {"url" => "https://456.control-kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", resource_arn: "arn:aws:kinesis:us-west-2:456:stream/testStream/consumer/test-consumer:1525898737", account_id: "123", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account Id, streamId and resource ARN with different accountId" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.control-kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", stream_id: "af4lwng4k01746835071-xyz", resource_arn: "arn:aws:kinesis:us-west-2:456:stream/testStream/consumer/test-consumer:1525898737", account_id: "123", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account Id with account id endpoint mode disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", account_id: "123", account_id_endpoint_mode: "disabled"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_shards' do
        client = Client.new(
          region: 'us-west-2',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '123'),
          account_id_endpoint_mode: 'disabled',
          stub_responses: true
        )
        resp = client.list_shards(
          stream_name: 'testStream',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Account Id and StreamArn with account id endpoint mode disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://456.control-kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", stream_arn: "arn:aws:kinesis:us-west-2:456:stream/testStream", account_id: "123", account_id_endpoint_mode: "disabled"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account Id missing with account id endpoint mode required" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", account_id_endpoint_mode: "required"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_shards' do
        client = Client.new(
          region: 'us-west-2',
          account_id_endpoint_mode: 'required',
          stub_responses: true
        )
        expect do
          client.list_shards(
            stream_name: 'testStream',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Account Id missing with account id endpoint mode required, fips and dual stack enabled" do
      let(:expected) do
        {"error" => "AccountIdEndpointMode is required but no AccountID was provided or able to be loaded"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: true, use_dual_stack: true, operation_type: "control", account_id_endpoint_mode: "required"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Account Id missing with account id endpoint mode required in ADC region" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", account_id_endpoint_mode: "required"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Account Id present with account id endpoint mode required in ADC region" do
      let(:expected) do
        {"error" => "Invalid Configuration: AccountIdEndpointMode is required but account endpoints are not supported in this partition"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", account_id: "123456789012", account_id_endpoint_mode: "required"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Account Id present with account id endpoint mode preferred in ADC region" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", account_id: "123456789012", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account Id missing with account id endpoint mode required and endpoint override" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis-pod1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", endpoint: "https://kinesis-pod1.us-west-2.amazonaws.com", account_id_endpoint_mode: "required"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account Id missing with StreamArn and account id endpoint mode required" do
      let(:expected) do
        {"endpoint" => {"url" => "https://456.control-kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", stream_arn: "arn:aws:kinesis:us-west-2:456:stream/testStream", account_id_endpoint_mode: "required"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account Id missing with StreamId and account id endpoint mode required" do
      let(:expected) do
        {"endpoint" => {"url" => "https://af4lwng4k01746835071.xyz.control-kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", stream_id: "af4lwng4k01746835071-xyz", account_id_endpoint_mode: "required"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account Id missing with account id endpoint mode preferred" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Account Id missing with account id endpoint mode disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", account_id_endpoint_mode: "disabled"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "CreateStream: control operation type with AccountId" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://123456789012.control-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", account_id: "123456789012", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling create_stream' do
        client = Client.new(
          region: 'us-east-1',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '123456789012'),
          account_id_endpoint_mode: 'preferred',
          stub_responses: true
        )
        resp = client.create_stream(
          stream_name: 'test-stream',
          shard_count: 1,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "CreateStream: control operation type with FIPS and AccountId" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://123456789012.control-kinesis-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, operation_type: "control", account_id: "123456789012", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling create_stream' do
        client = Client.new(
          region: 'us-east-1',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '123456789012'),
          account_id_endpoint_mode: 'preferred',
          use_fips_endpoint: true,
          stub_responses: true
        )
        resp = client.create_stream(
          stream_name: 'test-stream',
          shard_count: 1,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "ListStreams: control operation type with AccountId" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://123456789012.control-kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", account_id: "123456789012", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_streams' do
        client = Client.new(
          region: 'us-west-2',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '123456789012'),
          account_id_endpoint_mode: 'preferred',
          stub_responses: true
        )
        resp = client.list_streams(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "ListStreams: control operation type with FIPS and DualStack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://123456789012.control-kinesis-fips.us-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: true, use_dual_stack: true, operation_type: "control", account_id: "123456789012", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_streams' do
        client = Client.new(
          region: 'us-west-2',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '123456789012'),
          account_id_endpoint_mode: 'preferred',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          stub_responses: true
        )
        resp = client.list_streams(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "DescribeLimits: control operation type with AccountId" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://123456789012.control-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", account_id: "123456789012", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_limits' do
        client = Client.new(
          region: 'us-east-1',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '123456789012'),
          account_id_endpoint_mode: 'preferred',
          stub_responses: true
        )
        resp = client.describe_limits(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "DescribeLimits: control operation type with FIPS" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://123456789012.control-kinesis-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, operation_type: "control", account_id: "123456789012", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_limits' do
        client = Client.new(
          region: 'us-east-1',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '123456789012'),
          account_id_endpoint_mode: 'preferred',
          use_fips_endpoint: true,
          stub_responses: true
        )
        resp = client.describe_limits(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "DescribeAccountSettings: control operation type with AccountId" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://123456789012.control-kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", account_id: "123456789012", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_account_settings' do
        client = Client.new(
          region: 'us-west-2',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '123456789012'),
          account_id_endpoint_mode: 'preferred',
          stub_responses: true
        )
        resp = client.describe_account_settings(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "DescribeAccountSettings: control operation type with FIPS and DualStack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://123456789012.control-kinesis-fips.us-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: true, use_dual_stack: true, operation_type: "control", account_id: "123456789012", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_account_settings' do
        client = Client.new(
          region: 'us-west-2',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '123456789012'),
          account_id_endpoint_mode: 'preferred',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          stub_responses: true
        )
        resp = client.describe_account_settings(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "UpdateAccountSettings: control operation type with AccountId" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://123456789012.control-kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", account_id: "123456789012", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling update_account_settings' do
        client = Client.new(
          region: 'us-east-1',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '123456789012'),
          account_id_endpoint_mode: 'preferred',
          stub_responses: true
        )
        resp = client.update_account_settings(
          minimum_throughput_billing_commitment: {status: "ENABLED"},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "UpdateAccountSettings: control operation type with FIPS" do
      let(:expected) do
        {"endpoint" => {"properties" => {"metricValues" => ["O"]}, "url" => "https://123456789012.control-kinesis-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, operation_type: "control", account_id: "123456789012", account_id_endpoint_mode: "preferred"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling update_account_settings' do
        client = Client.new(
          region: 'us-east-1',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '123456789012'),
          account_id_endpoint_mode: 'preferred',
          use_fips_endpoint: true,
          stub_responses: true
        )
        resp = client.update_account_settings(
          minimum_throughput_billing_commitment: {status: "ENABLED"},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "CreateStream: account id endpoint mode disabled falls back to regional endpoint" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", account_id: "123456789012", account_id_endpoint_mode: "disabled"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling create_stream' do
        client = Client.new(
          region: 'us-east-1',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '123456789012'),
          account_id_endpoint_mode: 'disabled',
          stub_responses: true
        )
        resp = client.create_stream(
          stream_name: 'test-stream',
          shard_count: 1,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "ListStreams: account id endpoint mode disabled falls back to regional endpoint" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", account_id: "123456789012", account_id_endpoint_mode: "disabled"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_streams' do
        client = Client.new(
          region: 'us-west-2',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '123456789012'),
          account_id_endpoint_mode: 'disabled',
          stub_responses: true
        )
        resp = client.list_streams(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "DescribeLimits: account id endpoint mode disabled falls back to regional endpoint" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", account_id: "123456789012", account_id_endpoint_mode: "disabled"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_limits' do
        client = Client.new(
          region: 'us-east-1',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '123456789012'),
          account_id_endpoint_mode: 'disabled',
          stub_responses: true
        )
        resp = client.describe_limits(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "DescribeAccountSettings: account id endpoint mode disabled falls back to regional endpoint" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, operation_type: "control", account_id: "123456789012", account_id_endpoint_mode: "disabled"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling describe_account_settings' do
        client = Client.new(
          region: 'us-west-2',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '123456789012'),
          account_id_endpoint_mode: 'disabled',
          stub_responses: true
        )
        resp = client.describe_account_settings(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "UpdateAccountSettings: account id endpoint mode disabled falls back to regional endpoint" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, operation_type: "control", account_id: "123456789012", account_id_endpoint_mode: "disabled"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling update_account_settings' do
        client = Client.new(
          region: 'us-east-1',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '123456789012'),
          account_id_endpoint_mode: 'disabled',
          stub_responses: true
        )
        resp = client.update_account_settings(
          minimum_throughput_billing_commitment: {status: "ENABLED"},
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "CreateStream: account id endpoint mode disabled with FIPS falls back to regional FIPS endpoint" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, operation_type: "control", account_id: "123456789012", account_id_endpoint_mode: "disabled"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling create_stream' do
        client = Client.new(
          region: 'us-east-1',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '123456789012'),
          account_id_endpoint_mode: 'disabled',
          use_fips_endpoint: true,
          stub_responses: true
        )
        resp = client.create_stream(
          stream_name: 'test-stream',
          shard_count: 1,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "CreateStream: account id endpoint mode disabled with DualStack falls back to regional DualStack endpoint" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: true, operation_type: "control", account_id: "123456789012", account_id_endpoint_mode: "disabled"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling create_stream' do
        client = Client.new(
          region: 'us-east-1',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '123456789012'),
          account_id_endpoint_mode: 'disabled',
          use_dualstack_endpoint: true,
          stub_responses: true
        )
        resp = client.create_stream(
          stream_name: 'test-stream',
          shard_count: 1,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "CreateStream: account id endpoint mode disabled with FIPS and DualStack falls back to regional FIPS DualStack endpoint" do
      let(:expected) do
        {"endpoint" => {"url" => "https://kinesis-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: true, operation_type: "control", account_id: "123456789012", account_id_endpoint_mode: "disabled"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling create_stream' do
        client = Client.new(
          region: 'us-east-1',
          credentials: Aws::Credentials.new('stubbed-akid', 'stubbed-secret', account_id: '123456789012'),
          account_id_endpoint_mode: 'disabled',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          stub_responses: true
        )
        resp = client.create_stream(
          stream_name: 'test-stream',
          shard_count: 1,
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

  end
end
