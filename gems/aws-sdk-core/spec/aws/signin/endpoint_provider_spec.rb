# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::Signin
  describe EndpointProvider do
    subject { Aws::Signin::EndpointProvider.new }

    context "Control Plane operation in us-east-1 (aws partition)" do
      let(:expected) do
        {"endpoint" => {"url" => "https://signin.us-east-1.api.aws", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "signin", "signingRegion" => "us-east-1"}]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{is_control_plane: true, region: "us-east-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Control Plane operation in cn-north-1 (aws-cn partition)" do
      let(:expected) do
        {"endpoint" => {"url" => "https://signin.cn-north-1.api.amazonwebservices.com.cn", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "signin", "signingRegion" => "cn-north-1"}]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{is_control_plane: true, region: "cn-north-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane operation in us-east-1" do
      let(:expected) do
        {"endpoint" => {"url" => "https://us-east-1.signin.aws.amazon.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{is_control_plane: false, region: "us-east-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane operation in us-east-1 (IsControlPlane not set)" do
      let(:expected) do
        {"endpoint" => {"url" => "https://us-east-1.signin.aws.amazon.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane operation in cn-north-1" do
      let(:expected) do
        {"endpoint" => {"url" => "https://cn-north-1.signin.amazonaws.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{is_control_plane: false, region: "cn-north-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane operation in us-gov-west-1" do
      let(:expected) do
        {"endpoint" => {"url" => "https://us-gov-west-1.signin.amazonaws-us-gov.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{is_control_plane: false, region: "us-gov-west-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "FIPS endpoint in us-gov-west-1 (global endpoint)" do
      let(:expected) do
        {"endpoint" => {"url" => "https://signin-fips.amazonaws-us-gov.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-west-1", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "FIPS endpoint in us-gov-east-1 (regional endpoint)" do
      let(:expected) do
        {"endpoint" => {"url" => "https://us-gov-east-1.signin-fips.amazonaws-us-gov.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-east-1", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "FIPS endpoint in us-east-1" do
      let(:expected) do
        {"endpoint" => {"url" => "https://signin-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "DualStack falls through to default SDK endpoint in us-east-1 (aws partition)" do
      let(:expected) do
        {"endpoint" => {"url" => "https://signin.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "DualStack falls through to default SDK endpoint in cn-north-1 (aws-cn partition)" do
      let(:expected) do
        {"endpoint" => {"url" => "https://signin.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-north-1", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "DualStack falls through to default SDK endpoint in us-gov-west-1 (aws-us-gov partition)" do
      let(:expected) do
        {"endpoint" => {"url" => "https://signin.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-west-1", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Custom SDK endpoint override" do
      let(:expected) do
        {"endpoint" => {"url" => "https://custom.signin.example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", endpoint: "https://custom.signin.example.com", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ISO partition (us-iso-east-1)" do
      let(:expected) do
        {"endpoint" => {"url" => "https://us-iso-east-1.signin.c2shome.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-iso-east-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ISO-B partition (us-isob-east-1)" do
      let(:expected) do
        {"endpoint" => {"url" => "https://us-isob-east-1.signin.sc2shome.sgov.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-isob-east-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "OAuth endpoint in us-east-1 (aws partition)" do
      let(:expected) do
        {"endpoint" => {"url" => "https://us-east-1.oauth.signin.aws", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "signin", "signingRegion" => "us-east-1"}]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{is_o_auth_endpoint: true, region: "us-east-1", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "OAuth endpoint in us-west-2 (aws partition)" do
      let(:expected) do
        {"endpoint" => {"url" => "https://us-west-2.oauth.signin.aws", "properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "signin", "signingRegion" => "us-west-2"}]}}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{is_o_auth_endpoint: true, region: "us-west-2", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "OAuth endpoint with FIPS returns an error (no FIPS variant exists)" do
      let(:expected) do
        {"error" => "FIPS endpoints are not supported for OAuth operations. Disable FIPS or use a non-OAuth operation."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{is_o_auth_endpoint: true, region: "us-east-1", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "OAuth endpoint with FIPS returns an error in us-west-2 (aws partition)" do
      let(:expected) do
        {"error" => "FIPS endpoints are not supported for OAuth operations. Disable FIPS or use a non-OAuth operation."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{is_o_auth_endpoint: true, region: "us-west-2", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "OAuth endpoint with FIPS returns an error in cn-north-1 (non-aws partition, error is partition-agnostic)" do
      let(:expected) do
        {"error" => "FIPS endpoints are not supported for OAuth operations. Disable FIPS or use a non-OAuth operation."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{is_o_auth_endpoint: true, region: "cn-north-1", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "OAuth endpoint with FIPS returns an error even with a custom SDK endpoint override" do
      let(:expected) do
        {"error" => "FIPS endpoints are not supported for OAuth operations. Disable FIPS or use a non-OAuth operation."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{is_o_auth_endpoint: true, region: "us-east-1", endpoint: "https://custom.signin.example.com", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "OAuth operation with custom SDK endpoint override" do
      let(:expected) do
        {"endpoint" => {"url" => "https://custom.signin.example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{is_o_auth_endpoint: true, region: "us-east-1", endpoint: "https://custom.signin.example.com", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

  end
end
