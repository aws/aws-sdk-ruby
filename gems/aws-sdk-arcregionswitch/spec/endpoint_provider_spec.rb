# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::ARCRegionswitch
  describe EndpointProvider do
    subject { Aws::ARCRegionswitch::EndpointProvider.new }

    context "For custom endpoint with region not set and fips disabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{endpoint: "https://example.com", use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For custom endpoint with fips enabled" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{endpoint: "https://example.com", use_fips: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "For region us-east-1 with FIPS enabled and DualStack enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://arc-region-switch-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-east-1 with FIPS disabled and DualStack enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://arc-region-switch.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region cn-northwest-1 with FIPS enabled and DualStack enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://arc-region-switch-fips.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-northwest-1", use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region cn-northwest-1 with FIPS disabled and DualStack enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://arc-region-switch.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-northwest-1", use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-gov-west-1 with FIPS enabled and DualStack enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://arc-region-switch-fips.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-west-1", use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-gov-west-1 with FIPS disabled and DualStack enabled" do
      let(:expected) do
        {"endpoint" => {"url" => "https://arc-region-switch.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-west-1", use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
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

    context "Control plane operation with DualStack in us-west-2 routes to us-east-1 DualStack endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "arc-region-switch"}]}, "url" => "https://arc-region-switch-control-plane.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_control_plane_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Control plane operation with endpoint set in us-east-1 routes to provided endpoint" do
      let(:expected) do
        {"endpoint" => {"url" => "https://amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_control_plane_endpoint: true, endpoint: "https://amazonaws.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Control plane operation with endpoint set in us-west-2 routes to provided endpoint" do
      let(:expected) do
        {"endpoint" => {"url" => "https://amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_control_plane_endpoint: true, endpoint: "https://amazonaws.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Control plane operation in us-west-2 (standard partition) routes to us-east-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "arc-region-switch"}]}, "url" => "https://arc-region-switch-control-plane.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_control_plane_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Control plane operation in cn-north-1 (China partition) routes to cn-north-1 with China DNS suffix" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "cn-north-1", "signingName" => "arc-region-switch"}]}, "url" => "https://arc-region-switch-control-plane.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-north-1", use_control_plane_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Control plane operation in cn-northwest-1 (China partition) routes to cn-north-1 with China DNS suffix" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "cn-north-1", "signingName" => "arc-region-switch"}]}, "url" => "https://arc-region-switch-control-plane.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-northwest-1", use_control_plane_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Control plane operation in us-gov-west-1 (GovCloud partition) routes to us-gov-west-1 with GovCloud DNS suffix" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-gov-west-1", "signingName" => "arc-region-switch"}]}, "url" => "https://arc-region-switch-control-plane.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-west-1", use_control_plane_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Control plane operation in us-gov-east-1 (GovCloud partition) routes to us-gov-west-1 with GovCloud DNS suffix" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-gov-west-1", "signingName" => "arc-region-switch"}]}, "url" => "https://arc-region-switch-control-plane.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-east-1", use_control_plane_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Control plane operation with FIPS in us-west-2 routes to us-east-1 FIPS endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "arc-region-switch"}]}, "url" => "https://arc-region-switch-control-plane-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_control_plane_endpoint: true, use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Control plane operation with FIPS in us-east-1 routes to us-east-1 FIPS endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingRegion" => "us-east-1", "signingName" => "arc-region-switch"}]}, "url" => "https://arc-region-switch-control-plane-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_control_plane_endpoint: true, use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Control plane operation with FIPS in CN returns an error" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS is not supported in this partition"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-north-1", use_control_plane_endpoint: true, use_fips: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Control plane operation with endpoint set using FIPS in us-east-1 errors" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_control_plane_endpoint: true, use_fips: true, endpoint: "https://amazonaws.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Control plane operation with endpoint set using FIPS in us-west-2 routes to provided endpoint" do
      let(:expected) do
        {"error" => "Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_control_plane_endpoint: true, use_fips: true, endpoint: "https://amazonaws.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

  end
end
