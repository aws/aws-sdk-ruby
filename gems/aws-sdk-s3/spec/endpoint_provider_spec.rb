# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::S3
  describe EndpointProvider do
    subject { Aws::S3::EndpointProvider.new }

    context "region is not a valid DNS-suffix" do
      let(:expected) do
        {"error" => "Invalid region: region was not a valid DNS name."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "a b", use_fips: false, use_dual_stack: false, accelerate: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid access point ARN: Not S3" do
      let(:expected) do
        {"error" => "Invalid ARN: The ARN was not for the S3 service, found: not-s3"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, bucket: "arn:aws:not-s3:us-west-2:123456789012:accesspoint:myendpoint"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:not-s3:us-west-2:123456789012:accesspoint:myendpoint',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid access point ARN: invalid resource" do
      let(:expected) do
        {"error" => "Invalid ARN: The ARN may only contain a single resource component after `accesspoint`."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint:more-data"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint:more-data',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid access point ARN: invalid no ap name" do
      let(:expected) do
        {"error" => "Invalid ARN: Expected a resource of the format `accesspoint:<accesspoint name>` but no name was provided"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3:us-west-2:123456789012:accesspoint:',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid access point ARN: AccountId is invalid" do
      let(:expected) do
        {"error" => "Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `123456_789012`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3:us-west-2:123456_789012:accesspoint:apname"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3:us-west-2:123456_789012:accesspoint:apname',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Invalid access point ARN: access point name is invalid" do
      let(:expected) do
        {"error" => "Invalid ARN: The access point name may only contain a-z, A-Z, 0-9 and `-`. Found: `ap_name`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:ap_name"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3:us-west-2:123456789012:accesspoint:ap_name',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Access points (disable access points explicitly false)" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://myendpoint-123456789012.s3-accesspoint.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, disable_access_points: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Access points: partition does not support FIPS" do
      let(:expected) do
        {"error" => "Partition does not support FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-north-1", use_fips: true, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3:cn-north-1:123456789012:accesspoint:myendpoint"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3:cn-north-1:123456789012:accesspoint:myendpoint',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Bucket region is invalid" do
      let(:expected) do
        {"error" => "Invalid region in ARN: `us-west -2` (invalid DNS name)"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, disable_access_points: false, bucket: "arn:aws:s3:us-west -2:123456789012:accesspoint:myendpoint"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3:us-west -2:123456789012:accesspoint:myendpoint',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Access points when Access points explicitly disabled (used for CreateBucket)" do
      let(:expected) do
        {"error" => "Access points are not supported for this operation"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, disable_access_points: true, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling create_bucket' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.create_bucket(
            bucket: 'arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "missing arn type" do
      let(:expected) do
        {"error" => "Invalid ARN: `arn:aws:s3:us-west-2:123456789012:` was not a valid ARN"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, disable_access_points: true, bucket: "arn:aws:s3:us-west-2:123456789012:"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3:us-west-2:123456789012:',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "SDK::Host + access point + Dualstack is an error" do
      let(:expected) do
        {"error" => "Cannot set dual-stack in combination with a custom endpoint."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", force_path_style: false, endpoint: "https://beta.example.com", region: "cn-north-1", use_dual_stack: true, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          use_dualstack_endpoint: true,
          endpoint: 'https://beta.example.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Access point ARN with FIPS & Dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://myendpoint-123456789012.s3-accesspoint-fips.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: true, accelerate: false, disable_access_points: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Access point ARN with Dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://myendpoint-123456789012.s3-accesspoint.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: true, accelerate: false, disable_access_points: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "vanilla MRAP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4a", "signingRegionSet" => ["*"], "signingName" => "s3", "disableDoubleEncoding" => true}]}, "url" => "https://mfzwi23gnjvgw.mrap.accesspoint.s3-global.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{bucket: "arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", region: "us-east-1", disable_multi_region_access_points: false, use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4a", "signingRegionSet" => ["*"], "signingName" => "s3", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "MRAP does not support FIPS" do
      let(:expected) do
        {"error" => "S3 MRAP does not support FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{bucket: "arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", region: "us-east-1", disable_multi_region_access_points: false, use_fips: true, use_dual_stack: false, accelerate: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "MRAP does not support DualStack" do
      let(:expected) do
        {"error" => "S3 MRAP does not support dual-stack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{bucket: "arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", region: "us-east-1", disable_multi_region_access_points: false, use_fips: false, use_dual_stack: true, accelerate: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "MRAP does not support S3 Accelerate" do
      let(:expected) do
        {"error" => "S3 MRAP does not support S3 Accelerate"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{bucket: "arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", region: "us-east-1", disable_multi_region_access_points: false, use_fips: false, use_dual_stack: false, accelerate: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "MRAP explicitly disabled" do
      let(:expected) do
        {"error" => "Invalid configuration: Multi-Region Access Point ARNs are disabled."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{bucket: "arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", region: "us-east-1", disable_multi_region_access_points: true, use_fips: false, use_dual_stack: false, accelerate: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_disable_multiregion_access_points: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Dual-stack endpoint with path-style forced" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://s3.dualstack.us-west-2.amazonaws.com/bucketname"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{bucket: "bucketname", region: "us-west-2", force_path_style: true, use_fips: false, accelerate: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_dualstack_endpoint: true,
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucketname',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Dual-stack endpoint + SDK::Host is error" do
      let(:expected) do
        {"error" => "Cannot set dual-stack in combination with a custom endpoint."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{bucket: "bucketname", region: "us-west-2", force_path_style: true, use_fips: false, accelerate: false, use_dual_stack: true, endpoint: "https://abc.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_dualstack_endpoint: true,
          endpoint: 'https://abc.com',
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'bucketname',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "path style + ARN bucket" do
      let(:expected) do
        {"error" => "Path-style addressing cannot be used with ARN buckets"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", force_path_style: true, region: "us-west-2", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "implicit path style bucket + dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://s3.dualstack.us-west-2.amazonaws.com/99_ab"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "99_ab", region: "us-west-2", use_dual_stack: true, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: '99_ab',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "implicit path style bucket + dualstack" do
      let(:expected) do
        {"error" => "Cannot set dual-stack in combination with a custom endpoint."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "99_ab", region: "us-west-2", use_dual_stack: true, use_fips: false, endpoint: "http://abc.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_dualstack_endpoint: true,
          endpoint: 'http://abc.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: '99_ab',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "don't allow URL injections in the bucket" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://s3.us-west-2.amazonaws.com/example.com%23"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{bucket: "example.com#", region: "us-west-2", use_dual_stack: false, use_fips: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'example.com#',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "URI encode bucket names in the path" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://s3.us-west-2.amazonaws.com/bucket%20name"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{bucket: "bucket name", region: "us-west-2", use_dual_stack: false, use_fips: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "scheme is respected" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true}]}, "url" => "http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/99_ab"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "99_ab", endpoint: "http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "af-south-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "scheme is respected (virtual addressing)" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true}]}, "url" => "http://bucketname.control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/foo"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucketname", endpoint: "http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/foo", region: "af-south-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "path style + implicit private link" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true}]}, "url" => "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/99_ab"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "99_ab", endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "af-south-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          endpoint: 'https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: '99_ab',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "invalid Endpoint override" do
      let(:expected) do
        {"error" => "Custom endpoint `abcde://nota#url` was not a valid URI"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucketname", endpoint: "abcde://nota#url", region: "af-south-1", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "using an IPv4 address forces path style" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true}]}, "url" => "https://123.123.0.1/bucketname"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucketname", endpoint: "https://123.123.0.1", region: "af-south-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          endpoint: 'https://123.123.0.1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucketname',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "vanilla access point arn with region mismatch and UseArnRegion=false" do
      let(:expected) do
        {"error" => "Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws:s3:us-east-1:123456789012:accesspoint:myendpoint", force_path_style: false, use_arn_region: false, region: "us-west-2", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_use_arn_region: false,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3:us-east-1:123456789012:accesspoint:myendpoint',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "vanilla access point arn with region mismatch and UseArnRegion unset" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://myendpoint-123456789012.s3-accesspoint.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", force_path_style: false, region: "us-east-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "vanilla access point arn with region mismatch and UseArnRegion=true" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://myendpoint-123456789012.s3-accesspoint.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", force_path_style: false, use_arn_region: true, region: "us-east-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_use_arn_region: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "subdomains are not allowed in virtual buckets" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"}]}, "url" => "https://s3.us-east-1.amazonaws.com/bucket.name"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{bucket: "bucket.name", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"})
        resp = client.get_object(
          bucket: 'bucket.name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "bucket names with 3 characters are allowed in virtual buckets" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"}]}, "url" => "https://aaa.s3.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{bucket: "aaa", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"})
        resp = client.get_object(
          bucket: 'aaa',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "bucket names with fewer than 3 characters are not allowed in virtual host" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"}]}, "url" => "https://s3.us-east-1.amazonaws.com/aa"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{bucket: "aa", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"})
        resp = client.get_object(
          bucket: 'aa',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "bucket names with uppercase characters are not allowed in virtual host" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"}]}, "url" => "https://s3.us-east-1.amazonaws.com/BucketName"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{bucket: "BucketName", region: "us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"})
        resp = client.get_object(
          bucket: 'BucketName',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "subdomains are allowed in virtual buckets on http endpoints" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"}]}, "url" => "http://bucket.name.example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{bucket: "bucket.name", region: "us-east-1", endpoint: "http://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          endpoint: 'http://example.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"})
        resp = client.get_object(
          bucket: 'bucket.name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "no region set" do
      let(:expected) do
        {"error" => "A region must be set when sending requests to S3."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{bucket: "bucket-name"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "UseGlobalEndpoints=true, region=us-east-1 uses the global endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_global_endpoint: true, use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_buckets' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'legacy',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.list_buckets(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "UseGlobalEndpoints=true, region=us-west-2 uses the regional endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://s3.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_global_endpoint: true, use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_buckets' do
        client = Client.new(
          region: 'us-west-2',
          s3_us_east_1_regional_endpoint: 'legacy',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.list_buckets(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "UseGlobalEndpoints=true, region=cn-north-1 uses the regional endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-north-1", use_global_endpoint: true, use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_buckets' do
        client = Client.new(
          region: 'cn-north-1',
          s3_us_east_1_regional_endpoint: 'legacy',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true})
        resp = client.list_buckets(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "UseGlobalEndpoints=true, region=us-east-1, fips=true uses the regional endpoint with fips" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_global_endpoint: true, use_fips: true, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_buckets' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'legacy',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.list_buckets(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "UseGlobalEndpoints=true, region=us-east-1, dualstack=true uses the regional endpoint with dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3.dualstack.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_global_endpoint: true, use_fips: false, use_dual_stack: true, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_buckets' do
        client = Client.new(
          region: 'us-east-1',
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'legacy',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.list_buckets(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "UseGlobalEndpoints=true, region=us-east-1, dualstack and fips uses the regional endpoint with fips/dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3-fips.dualstack.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_global_endpoint: true, use_fips: true, use_dual_stack: true, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_buckets' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'legacy',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.list_buckets(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "UseGlobalEndpoints=true, region=us-east-1 with custom endpoint, uses custom" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", endpoint: "https://example.com", use_global_endpoint: true, use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_buckets' do
        client = Client.new(
          region: 'us-east-1',
          endpoint: 'https://example.com',
          s3_us_east_1_regional_endpoint: 'legacy',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.list_buckets(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "UseGlobalEndpoints=true, region=us-west-2 with custom endpoint, uses custom" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", endpoint: "https://example.com", use_global_endpoint: true, use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_buckets' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'https://example.com',
          s3_us_east_1_regional_endpoint: 'legacy',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.list_buckets(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "UseGlobalEndpoints=true, region=us-east-1 with accelerate on non bucket case uses the global endpoint and ignores accelerate" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_global_endpoint: true, use_fips: false, use_dual_stack: false, accelerate: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_buckets' do
        client = Client.new(
          region: 'us-east-1',
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'legacy',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.list_buckets(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "aws-global region uses the global endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_buckets' do
        client = Client.new(
          region: 'aws-global',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.list_buckets(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "aws-global region with fips uses the regional endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", use_fips: true, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_buckets' do
        client = Client.new(
          region: 'aws-global',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.list_buckets(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "aws-global region with dualstack uses the regional endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3.dualstack.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", use_fips: false, use_dual_stack: true, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_buckets' do
        client = Client.new(
          region: 'aws-global',
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.list_buckets(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "aws-global region with fips and dualstack uses the regional endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3-fips.dualstack.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", use_fips: true, use_dual_stack: true, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_buckets' do
        client = Client.new(
          region: 'aws-global',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.list_buckets(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "aws-global region with accelerate on non-bucket case, uses global endpoint and ignores accelerate" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", use_fips: false, use_dual_stack: false, accelerate: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_buckets' do
        client = Client.new(
          region: 'aws-global',
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.list_buckets(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "aws-global region with custom endpoint, uses custom" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", endpoint: "https://example.com", use_global_endpoint: false, use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_buckets' do
        client = Client.new(
          region: 'aws-global',
          endpoint: 'https://example.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.list_buckets(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing, aws-global region uses the global endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket-name", use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'aws-global',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing, aws-global region with Prefix, and Key uses the global endpoint. Prefix and Key parameters should not be used in endpoint evaluation." do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket-name", use_fips: false, use_dual_stack: false, accelerate: false, prefix: "prefix", key: "key"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_objects' do
        client = Client.new(
          region: 'aws-global',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.list_objects(
          bucket: 'bucket-name',
          prefix: 'prefix',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing, aws-global region with Copy Source, and Key uses the global endpoint. Copy Source and Key parameters should not be used in endpoint evaluation." do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket-name", use_fips: false, use_dual_stack: false, accelerate: false, copy_source: "/copy/source", key: "key"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "virtual addressing, aws-global region with fips uses the regional fips endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket-name", use_fips: true, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'aws-global',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing, aws-global region with dualstack uses the regional dualstack endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3.dualstack.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket-name", use_fips: false, use_dual_stack: true, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'aws-global',
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing, aws-global region with fips/dualstack uses the regional fips/dualstack endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3-fips.dualstack.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket-name", use_fips: true, use_dual_stack: true, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'aws-global',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing, aws-global region with accelerate uses the global accelerate endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3-accelerate.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket-name", use_fips: false, use_dual_stack: false, accelerate: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'aws-global',
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing, aws-global region with custom endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", endpoint: "https://example.com", bucket: "bucket-name", use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'aws-global',
          endpoint: 'https://example.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing, UseGlobalEndpoint and us-east-1 region uses the global endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_global_endpoint: true, bucket: "bucket-name", use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'legacy',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing, UseGlobalEndpoint and us-west-2 region uses the regional endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_global_endpoint: true, bucket: "bucket-name", use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_us_east_1_regional_endpoint: 'legacy',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing, UseGlobalEndpoint and us-east-1 region and fips uses the regional fips endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_global_endpoint: true, bucket: "bucket-name", use_fips: true, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'legacy',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing, UseGlobalEndpoint and us-east-1 region and dualstack uses the regional dualstack endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3.dualstack.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_global_endpoint: true, bucket: "bucket-name", use_fips: false, use_dual_stack: true, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'legacy',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing, UseGlobalEndpoint and us-east-1 region and accelerate uses the global accelerate endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3-accelerate.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_global_endpoint: true, bucket: "bucket-name", use_fips: false, use_dual_stack: false, accelerate: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'legacy',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing, UseGlobalEndpoint and us-east-1 region with custom endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", endpoint: "https://example.com", use_global_endpoint: true, bucket: "bucket-name", use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          endpoint: 'https://example.com',
          s3_us_east_1_regional_endpoint: 'legacy',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "ForcePathStyle, aws-global region uses the global endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3.amazonaws.com/bucket-name"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket-name", force_path_style: true, use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'aws-global',
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "ForcePathStyle, aws-global region with fips is invalid" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true, "name" => "sigv4"}]}, "url" => "https://s3-fips.us-east-1.amazonaws.com/bucket-name"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket-name", force_path_style: true, use_fips: true, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "ForcePathStyle, aws-global region with dualstack uses regional dualstack endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3.dualstack.us-east-1.amazonaws.com/bucket-name"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket-name", force_path_style: true, use_fips: false, use_dual_stack: true, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'aws-global',
          use_dualstack_endpoint: true,
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "ForcePathStyle, aws-global region custom endpoint uses the custom endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://example.com/bucket-name"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", endpoint: "https://example.com", bucket: "bucket-name", force_path_style: true, use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'aws-global',
          endpoint: 'https://example.com',
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "ForcePathStyle, UseGlobalEndpoint us-east-1 region uses the global endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3.amazonaws.com/bucket-name"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "bucket-name", use_global_endpoint: true, force_path_style: true, use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'legacy',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "ForcePathStyle, UseGlobalEndpoint us-west-2 region uses the regional endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://s3.us-west-2.amazonaws.com/bucket-name"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "bucket-name", use_global_endpoint: true, force_path_style: true, use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'legacy',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "ForcePathStyle, UseGlobalEndpoint us-east-1 region, dualstack uses the regional dualstack endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3.dualstack.us-east-1.amazonaws.com/bucket-name"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "bucket-name", use_global_endpoint: true, force_path_style: true, use_fips: false, use_dual_stack: true, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          use_dualstack_endpoint: true,
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'legacy',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "ForcePathStyle, UseGlobalEndpoint us-east-1 region custom endpoint uses the custom endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://example.com/bucket-name"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "bucket-name", endpoint: "https://example.com", use_global_endpoint: true, force_path_style: true, use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          endpoint: 'https://example.com',
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'legacy',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "ARN with aws-global region and  UseArnRegion uses the regional endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"], "disableDoubleEncoding" => true}, {"name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://reports-123456789012.op-01234567890123456.s3-outposts.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", use_arn_region: true, use_fips: false, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-01234567890123456/accesspoint/reports"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'aws-global',
          s3_use_arn_region: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"], "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-01234567890123456/accesspoint/reports',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "cross partition MRAP ARN is an error" do
      let(:expected) do
        {"error" => "Client was configured for partition `aws` but bucket referred to partition `aws-cn`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{bucket: "arn:aws-cn:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", region: "us-west-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws-cn:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Endpoint override, accesspoint with HTTP, port" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "http://myendpoint-123456789012.beta.example.com:1234"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{endpoint: "http://beta.example.com:1234", region: "us-west-2", bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'http://beta.example.com:1234',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Endpoint override, accesspoint with http, path, query, and port" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "http://myendpoint-123456789012.beta.example.com:1234/path"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", endpoint: "http://beta.example.com:1234/path", use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "non-bucket endpoint override with FIPS = error" do
      let(:expected) do
        {"error" => "A custom endpoint cannot be combined with FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", endpoint: "http://beta.example.com:1234/path", use_fips: true, use_dual_stack: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "FIPS + dualstack + custom endpoint" do
      let(:expected) do
        {"error" => "Cannot set dual-stack in combination with a custom endpoint."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", endpoint: "http://beta.example.com:1234/path", use_fips: true, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "dualstack + custom endpoint" do
      let(:expected) do
        {"error" => "Cannot set dual-stack in combination with a custom endpoint."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", endpoint: "http://beta.example.com:1234/path", use_fips: false, use_dual_stack: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "custom endpoint without FIPS/dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "http://beta.example.com:1234/path"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", endpoint: "http://beta.example.com:1234/path", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "s3 object lambda with access points disabled" do
      let(:expected) do
        {"error" => "Access points are not supported for this operation"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint:myendpoint", disable_access_points: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "non bucket + FIPS" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://s3-fips.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: true, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "standard non bucket endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://s3.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "non bucket endpoint with FIPS + Dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://s3-fips.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "non bucket endpoint with dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://s3.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "use global endpoint + IP address endpoint override" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"}]}, "url" => "http://127.0.0.1/bucket"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "bucket", use_fips: false, use_dual_stack: false, endpoint: "http://127.0.0.1", use_global_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "non-dns endpoint + global endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"}]}, "url" => "https://s3.amazonaws.com/bucket%21"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "bucket!", use_fips: false, use_dual_stack: false, use_global_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "endpoint override + use global endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"}]}, "url" => "http://foo.com/bucket%21"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "bucket!", use_fips: false, use_dual_stack: false, use_global_endpoint: true, endpoint: "http://foo.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "FIPS + dualstack + non-bucket endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"}]}, "url" => "https://s3-fips.dualstack.us-east-1.amazonaws.com/bucket%21"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "bucket!", use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "FIPS + dualstack + non-DNS endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"}]}, "url" => "https://s3-fips.dualstack.us-east-1.amazonaws.com/bucket%21"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "bucket!", force_path_style: true, use_fips: true, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "endpoint override + FIPS + dualstack (BUG)" do
      let(:expected) do
        {"error" => "A custom endpoint cannot be combined with FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "bucket!", force_path_style: true, use_fips: true, use_dual_stack: false, endpoint: "http://foo.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "endpoint override + non-dns bucket + FIPS (BUG)" do
      let(:expected) do
        {"error" => "A custom endpoint cannot be combined with FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "bucket!", use_fips: true, use_dual_stack: false, endpoint: "http://foo.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "FIPS + bucket endpoint + force path style" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"}]}, "url" => "https://s3-fips.us-east-1.amazonaws.com/bucket%21"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "bucket!", force_path_style: true, use_fips: true, use_dual_stack: false, use_global_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "bucket + FIPS + force path style" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"}]}, "url" => "https://s3-fips.dualstack.us-east-1.amazonaws.com/bucket"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "bucket", force_path_style: true, use_fips: true, use_dual_stack: true, use_global_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "FIPS + dualstack + use global endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"}]}, "url" => "https://bucket.s3-fips.dualstack.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "bucket", use_fips: true, use_dual_stack: true, use_global_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "URI encoded bucket + use global endpoint" do
      let(:expected) do
        {"error" => "A custom endpoint cannot be combined with FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "bucket!", use_fips: true, use_dual_stack: false, use_global_endpoint: true, endpoint: "https://foo.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "FIPS + path based endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"}]}, "url" => "https://s3-fips.us-east-1.amazonaws.com/bucket%21"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "bucket!", use_fips: true, use_dual_stack: false, accelerate: false, use_global_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "accelerate + dualstack + global endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"}]}, "url" => "https://bucket.s3-accelerate.dualstack.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "bucket", use_fips: false, use_dual_stack: true, accelerate: true, use_global_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "dualstack + global endpoint + non URI safe bucket" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"}]}, "url" => "https://s3.dualstack.us-east-1.amazonaws.com/bucket%21"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "bucket!", accelerate: false, use_dual_stack: true, use_fips: false, use_global_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "FIPS + uri encoded bucket" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"}]}, "url" => "https://s3-fips.us-east-1.amazonaws.com/bucket%21"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "bucket!", force_path_style: true, accelerate: false, use_dual_stack: false, use_fips: true, use_global_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "endpoint override + non-uri safe endpoint + force path style" do
      let(:expected) do
        {"error" => "A custom endpoint cannot be combined with FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "bucket!", force_path_style: true, accelerate: false, use_dual_stack: false, use_fips: true, endpoint: "http://foo.com", use_global_endpoint: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "FIPS + Dualstack + global endpoint + non-dns bucket" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true, "signingRegion" => "us-east-1"}]}, "url" => "https://s3-fips.dualstack.us-east-1.amazonaws.com/bucket%21"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "bucket!", accelerate: false, use_dual_stack: true, use_fips: true, use_global_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "endpoint override + FIPS + dualstack" do
      let(:expected) do
        {"error" => "Cannot set dual-stack in combination with a custom endpoint."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_dual_stack: true, use_fips: true, use_global_endpoint: true, endpoint: "http://foo.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "non-bucket endpoint override + dualstack + global endpoint" do
      let(:expected) do
        {"error" => "Cannot set dual-stack in combination with a custom endpoint."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: true, use_global_endpoint: true, endpoint: "http://foo.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Endpoint override + UseGlobalEndpoint + us-east-1" do
      let(:expected) do
        {"error" => "A custom endpoint cannot be combined with FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, use_global_endpoint: true, endpoint: "http://foo.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "non-FIPS partition with FIPS set + custom endpoint" do
      let(:expected) do
        {"error" => "Partition does not support FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-north-1", use_fips: true, use_dual_stack: false, use_global_endpoint: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "aws-global signs as us-east-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"signingRegion" => "us-east-1", "name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true}]}, "url" => "https://s3-fips.dualstack.us-east-1.amazonaws.com/bucket%21"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket!", use_fips: true, accelerate: false, use_dual_stack: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "aws-global signs as us-east-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"signingRegion" => "us-east-1", "name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true}]}, "url" => "https://bucket.foo.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket", use_dual_stack: false, use_fips: false, accelerate: false, endpoint: "https://foo.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "aws-global + dualstack + path-only bucket" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"signingRegion" => "us-east-1", "name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true}]}, "url" => "https://s3.dualstack.us-east-1.amazonaws.com/bucket%21"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket!", use_dual_stack: true, use_fips: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "aws-global + path-only bucket" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"signingRegion" => "us-east-1", "name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true}]}, "url" => "https://s3.amazonaws.com/bucket%21"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket!"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "aws-global + fips + custom endpoint" do
      let(:expected) do
        {"error" => "A custom endpoint cannot be combined with FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket!", use_dual_stack: false, use_fips: true, accelerate: false, endpoint: "http://foo.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "aws-global, endpoint override & path only-bucket" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"signingRegion" => "us-east-1", "name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true}]}, "url" => "http://foo.com/bucket%21"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket!", use_dual_stack: false, use_fips: false, accelerate: false, endpoint: "http://foo.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "aws-global + dualstack + custom endpoint" do
      let(:expected) do
        {"error" => "Cannot set dual-stack in combination with a custom endpoint."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", use_dual_stack: true, use_fips: false, accelerate: false, endpoint: "http://foo.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "accelerate, dualstack + aws-global" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"signingRegion" => "us-east-1", "name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true}]}, "url" => "https://bucket.s3-accelerate.dualstack.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket", use_dual_stack: true, use_fips: false, accelerate: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "FIPS + aws-global + path only bucket. This is not supported by S3 but we allow garbage in garbage out" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"signingRegion" => "us-east-1", "name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true}]}, "url" => "https://s3-fips.dualstack.us-east-1.amazonaws.com/bucket%21"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket!", force_path_style: true, use_dual_stack: true, use_fips: true, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "aws-global + FIPS + endpoint override." do
      let(:expected) do
        {"error" => "A custom endpoint cannot be combined with FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", use_fips: true, endpoint: "http://foo.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "force path style, FIPS, aws-global & endpoint override" do
      let(:expected) do
        {"error" => "A custom endpoint cannot be combined with FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket!", force_path_style: true, use_fips: true, endpoint: "http://foo.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ip address causes path style to be forced" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"signingRegion" => "us-east-1", "name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true}]}, "url" => "http://192.168.1.1/bucket"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket", endpoint: "http://192.168.1.1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "endpoint override with aws-global region" do
      let(:expected) do
        {"error" => "Cannot set dual-stack in combination with a custom endpoint."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", use_fips: true, use_dual_stack: true, endpoint: "http://foo.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "FIPS + path-only (TODO: consider making this an error)" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"signingRegion" => "us-east-1", "name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true}]}, "url" => "https://s3-fips.us-east-1.amazonaws.com/bucket%21"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", bucket: "bucket!", use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "empty arn type" do
      let(:expected) do
        {"error" => "Invalid ARN: No ARN type specified"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", bucket: "arn:aws:not-s3:us-west-2:123456789012::myendpoint"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "path style can't be used with accelerate" do
      let(:expected) do
        {"error" => "Path-style addressing cannot be used with S3 Accelerate"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", bucket: "bucket!", accelerate: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "invalid region" do
      let(:expected) do
        {"error" => "Invalid region: region was not a valid DNS name."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2!", bucket: "bucket.subdomain", endpoint: "http://foo.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "invalid region" do
      let(:expected) do
        {"error" => "Invalid region: region was not a valid DNS name."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2!", bucket: "bucket", endpoint: "http://foo.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "empty arn type" do
      let(:expected) do
        {"error" => "Invalid Access Point Name"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", bucket: "arn:aws:s3::123456789012:accesspoint:my_endpoint"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "empty arn type" do
      let(:expected) do
        {"error" => "Client was configured for partition `aws` but ARN (`arn:aws:s3:cn-north-1:123456789012:accesspoint:my-endpoint`) has `aws-cn`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", bucket: "arn:aws:s3:cn-north-1:123456789012:accesspoint:my-endpoint", use_arn_region: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "invalid arn region" do
      let(:expected) do
        {"error" => "Invalid region in ARN: `us-east_2` (invalid DNS name)"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", bucket: "arn:aws:s3-object-lambda:us-east_2:123456789012:accesspoint:my-endpoint", use_arn_region: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "invalid ARN outpost" do
      let(:expected) do
        {"error" => "Invalid ARN: The outpost Id may only contain a-z, A-Z, 0-9 and `-`. Found: `op_01234567890123456`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost/op_01234567890123456/accesspoint/reports", use_arn_region: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "invalid ARN" do
      let(:expected) do
        {"error" => "Invalid ARN: expected an access point name"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-01234567890123456/reports"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "invalid ARN" do
      let(:expected) do
        {"error" => "Invalid ARN: Expected a 4-component resource"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-01234567890123456"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "invalid outpost type" do
      let(:expected) do
        {"error" => "Expected an outpost type `accesspoint`, found not-accesspoint"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-01234567890123456/not-accesspoint/reports"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "invalid outpost type" do
      let(:expected) do
        {"error" => "Invalid region in ARN: `us-east_1` (invalid DNS name)"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", bucket: "arn:aws:s3-outposts:us-east_1:123456789012:outpost/op-01234567890123456/not-accesspoint/reports"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "invalid outpost type" do
      let(:expected) do
        {"error" => "Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `12345_789012`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", bucket: "arn:aws:s3-outposts:us-east-1:12345_789012:outpost/op-01234567890123456/not-accesspoint/reports"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "invalid outpost type" do
      let(:expected) do
        {"error" => "Invalid ARN: The Outpost Id was not set"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", bucket: "arn:aws:s3-outposts:us-east-1:12345789012:outpost"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "use global endpoint virtual addressing" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"signingRegion" => "us-east-2", "name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true}]}, "url" => "http://bucket.example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", bucket: "bucket", endpoint: "http://example.com", use_global_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "global endpoint + ip address" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"signingRegion" => "us-east-2", "name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true}]}, "url" => "http://192.168.0.1/bucket"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", bucket: "bucket", endpoint: "http://192.168.0.1", use_global_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "invalid outpost type" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"signingRegion" => "us-east-2", "name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true}]}, "url" => "https://s3.us-east-2.amazonaws.com/bucket%21"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", bucket: "bucket!", use_global_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "invalid outpost type" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"signingRegion" => "us-east-2", "name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true}]}, "url" => "https://bucket.s3-accelerate.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", bucket: "bucket", accelerate: true, use_global_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "use global endpoint + custom endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"signingRegion" => "us-east-2", "name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true}]}, "url" => "http://foo.com/bucket%21"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", bucket: "bucket!", use_global_endpoint: true, endpoint: "http://foo.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "use global endpoint, not us-east-1, force path style" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"signingRegion" => "us-east-2", "name" => "sigv4", "signingName" => "s3", "disableDoubleEncoding" => true}]}, "url" => "http://foo.com/bucket%21"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-2", bucket: "bucket!", use_global_endpoint: true, force_path_style: true, endpoint: "http://foo.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "vanilla virtual addressing@us-west-2" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: false, region: "us-west-2", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing + dualstack@us-west-2" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: false, region: "us-west-2", use_dual_stack: true, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "accelerate + dualstack@us-west-2" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3-accelerate.dualstack.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: true, bucket: "bucket-name", force_path_style: false, region: "us-west-2", use_dual_stack: true, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_dualstack_endpoint: true,
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "accelerate (dualstack=false)@us-west-2" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3-accelerate.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: true, bucket: "bucket-name", force_path_style: false, region: "us-west-2", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing + fips@us-west-2" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3-fips.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: false, region: "us-west-2", use_dual_stack: false, use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing + dualstack + fips@us-west-2" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3-fips.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: false, region: "us-west-2", use_dual_stack: true, use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "accelerate + fips = error@us-west-2" do
      let(:expected) do
        {"error" => "Accelerate cannot be used with FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: true, bucket: "bucket-name", force_path_style: false, region: "us-west-2", use_dual_stack: false, use_fips: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_fips_endpoint: true,
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'bucket-name',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "vanilla virtual addressing@cn-north-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: false, region: "cn-north-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing + dualstack@cn-north-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3.dualstack.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: false, region: "cn-north-1", use_dual_stack: true, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "accelerate (dualstack=false)@cn-north-1" do
      let(:expected) do
        {"error" => "S3 Accelerate cannot be used in this region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: true, bucket: "bucket-name", force_path_style: false, region: "cn-north-1", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "virtual addressing + fips@cn-north-1" do
      let(:expected) do
        {"error" => "Partition does not support FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: false, region: "cn-north-1", use_dual_stack: false, use_fips: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "vanilla virtual addressing@af-south-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3.af-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: false, region: "af-south-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing + dualstack@af-south-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3.dualstack.af-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: false, region: "af-south-1", use_dual_stack: true, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "accelerate + dualstack@af-south-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3-accelerate.dualstack.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: true, bucket: "bucket-name", force_path_style: false, region: "af-south-1", use_dual_stack: true, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          use_dualstack_endpoint: true,
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "accelerate (dualstack=false)@af-south-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3-accelerate.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: true, bucket: "bucket-name", force_path_style: false, region: "af-south-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing + fips@af-south-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3-fips.af-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: false, region: "af-south-1", use_dual_stack: false, use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing + dualstack + fips@af-south-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.s3-fips.dualstack.af-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: false, region: "af-south-1", use_dual_stack: true, use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "accelerate + fips = error@af-south-1" do
      let(:expected) do
        {"error" => "Accelerate cannot be used with FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: true, bucket: "bucket-name", force_path_style: false, region: "af-south-1", use_dual_stack: false, use_fips: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          use_fips_endpoint: true,
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'bucket-name',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "vanilla path style@us-west-2" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://s3.us-west-2.amazonaws.com/bucket-name"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: true, region: "us-west-2", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "fips@us-gov-west-2, bucket is not S3-dns-compatible (subdomains)" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"signingName" => "s3", "signingRegion" => "us-gov-west-1", "disableDoubleEncoding" => true, "name" => "sigv4"}]}, "url" => "https://s3-fips.us-gov-west-1.amazonaws.com/bucket.with.dots"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket.with.dots", region: "us-gov-west-1", use_dual_stack: false, use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-gov-west-1',
          use_fips_endpoint: true,
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"signingName" => "s3", "signingRegion" => "us-gov-west-1", "disableDoubleEncoding" => true, "name" => "sigv4"})
        resp = client.get_object(
          bucket: 'bucket.with.dots',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "path style + accelerate = error@us-west-2" do
      let(:expected) do
        {"error" => "Path-style addressing cannot be used with S3 Accelerate"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: true, bucket: "bucket-name", force_path_style: true, region: "us-west-2", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          force_path_style: true,
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'bucket-name',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "path style + dualstack@us-west-2" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://s3.dualstack.us-west-2.amazonaws.com/bucket-name"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: true, region: "us-west-2", use_dual_stack: true, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_dualstack_endpoint: true,
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "path style + arn is error@us-west-2" do
      let(:expected) do
        {"error" => "Path-style addressing cannot be used with ARN buckets"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:PARTITION:s3-outposts:REGION:123456789012:outpost:op-01234567890123456:bucket:mybucket", force_path_style: true, region: "us-west-2", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:PARTITION:s3-outposts:REGION:123456789012:outpost:op-01234567890123456:bucket:mybucket',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "path style + invalid DNS name@us-west-2" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://s3.us-west-2.amazonaws.com/99a_b"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "99a_b", force_path_style: true, region: "us-west-2", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: '99a_b',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "no path style + invalid DNS name@us-west-2" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://s3.us-west-2.amazonaws.com/99a_b"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "99a_b", region: "us-west-2", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: '99a_b',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "vanilla path style@cn-north-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3.cn-north-1.amazonaws.com.cn/bucket-name"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: true, region: "cn-north-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "path style + fips@cn-north-1" do
      let(:expected) do
        {"error" => "Partition does not support FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: true, region: "cn-north-1", use_dual_stack: false, use_fips: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: true,
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'bucket-name',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "path style + accelerate = error@cn-north-1" do
      let(:expected) do
        {"error" => "Path-style addressing cannot be used with S3 Accelerate"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: true, bucket: "bucket-name", force_path_style: true, region: "cn-north-1", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          force_path_style: true,
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'bucket-name',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "path style + dualstack@cn-north-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3.dualstack.cn-north-1.amazonaws.com.cn/bucket-name"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: true, region: "cn-north-1", use_dual_stack: true, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          use_dualstack_endpoint: true,
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "path style + arn is error@cn-north-1" do
      let(:expected) do
        {"error" => "Path-style addressing cannot be used with ARN buckets"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:PARTITION:s3-outposts:REGION:123456789012:outpost:op-01234567890123456:bucket:mybucket", force_path_style: true, region: "cn-north-1", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:PARTITION:s3-outposts:REGION:123456789012:outpost:op-01234567890123456:bucket:mybucket',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "path style + invalid DNS name@cn-north-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3.cn-north-1.amazonaws.com.cn/99a_b"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "99a_b", force_path_style: true, region: "cn-north-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: '99a_b',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "no path style + invalid DNS name@cn-north-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3.cn-north-1.amazonaws.com.cn/99a_b"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "99a_b", region: "cn-north-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: '99a_b',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "vanilla path style@af-south-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3.af-south-1.amazonaws.com/bucket-name"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: true, region: "af-south-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "path style + fips@af-south-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true, "name" => "sigv4"}]}, "url" => "https://s3-fips.af-south-1.amazonaws.com/bucket-name"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: true, region: "af-south-1", use_dual_stack: false, use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          use_fips_endpoint: true,
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true, "name" => "sigv4"})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "path style + accelerate = error@af-south-1" do
      let(:expected) do
        {"error" => "Path-style addressing cannot be used with S3 Accelerate"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: true, bucket: "bucket-name", force_path_style: true, region: "af-south-1", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          force_path_style: true,
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'bucket-name',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "path style + dualstack@af-south-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3.dualstack.af-south-1.amazonaws.com/bucket-name"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: true, region: "af-south-1", use_dual_stack: true, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          use_dualstack_endpoint: true,
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "path style + arn is error@af-south-1" do
      let(:expected) do
        {"error" => "Path-style addressing cannot be used with ARN buckets"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:PARTITION:s3-outposts:REGION:123456789012:outpost:op-01234567890123456:bucket:mybucket", force_path_style: true, region: "af-south-1", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:PARTITION:s3-outposts:REGION:123456789012:outpost:op-01234567890123456:bucket:mybucket',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "path style + invalid DNS name@af-south-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3.af-south-1.amazonaws.com/99a_b"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "99a_b", force_path_style: true, region: "af-south-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: '99a_b',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "no path style + invalid DNS name@af-south-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3.af-south-1.amazonaws.com/99a_b"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "99a_b", region: "af-south-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: '99a_b',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing + private link@us-west-2" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "http://bucket-name.control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: false, endpoint: "http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "us-west-2", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "path style + private link@us-west-2" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/bucket-name"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: true, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "us-west-2", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com',
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "SDK::Host + FIPS@us-west-2" do
      let(:expected) do
        {"error" => "A custom endpoint cannot be combined with FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: false, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "us-west-2", use_dual_stack: false, use_fips: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_fips_endpoint: true,
          endpoint: 'https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'bucket-name',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "SDK::Host + DualStack@us-west-2" do
      let(:expected) do
        {"error" => "Cannot set dual-stack in combination with a custom endpoint."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: false, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "us-west-2", use_dual_stack: true, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_dualstack_endpoint: true,
          endpoint: 'https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'bucket-name',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "SDK::HOST + accelerate@us-west-2" do
      let(:expected) do
        {"error" => "A custom endpoint cannot be combined with S3 Accelerate"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: true, bucket: "bucket-name", force_path_style: false, endpoint: "http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "us-west-2", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com',
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'bucket-name',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "SDK::Host + access point ARN@us-west-2" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://myendpoint-123456789012.beta.example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", force_path_style: false, endpoint: "https://beta.example.com", region: "us-west-2", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'https://beta.example.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing + private link@cn-north-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: false, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "cn-north-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          endpoint: 'https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "path style + private link@cn-north-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true}]}, "url" => "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/bucket-name"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: true, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "cn-north-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          endpoint: 'https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com',
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "FIPS@cn-north-1" do
      let(:expected) do
        {"error" => "Partition does not support FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: false, region: "cn-north-1", use_dual_stack: false, use_fips: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "SDK::Host + DualStack@cn-north-1" do
      let(:expected) do
        {"error" => "Cannot set dual-stack in combination with a custom endpoint."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: false, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "cn-north-1", use_dual_stack: true, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          use_dualstack_endpoint: true,
          endpoint: 'https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'bucket-name',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "SDK::HOST + accelerate@cn-north-1" do
      let(:expected) do
        {"error" => "A custom endpoint cannot be combined with S3 Accelerate"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: true, bucket: "bucket-name", force_path_style: false, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "cn-north-1", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "SDK::Host + access point ARN@cn-north-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true}]}, "url" => "https://myendpoint-123456789012.beta.example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", force_path_style: false, endpoint: "https://beta.example.com", region: "cn-north-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          endpoint: 'https://beta.example.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "virtual addressing + private link@af-south-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true}]}, "url" => "https://bucket-name.control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: false, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "af-south-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          endpoint: 'https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "path style + private link@af-south-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true}]}, "url" => "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/bucket-name"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: true, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "af-south-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          endpoint: 'https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com',
          force_path_style: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'bucket-name',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "SDK::Host + FIPS@af-south-1" do
      let(:expected) do
        {"error" => "A custom endpoint cannot be combined with FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: false, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "af-south-1", use_dual_stack: false, use_fips: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          use_fips_endpoint: true,
          endpoint: 'https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'bucket-name',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "SDK::Host + DualStack@af-south-1" do
      let(:expected) do
        {"error" => "Cannot set dual-stack in combination with a custom endpoint."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "bucket-name", force_path_style: false, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "af-south-1", use_dual_stack: true, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          use_dualstack_endpoint: true,
          endpoint: 'https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'bucket-name',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "SDK::HOST + accelerate@af-south-1" do
      let(:expected) do
        {"error" => "A custom endpoint cannot be combined with S3 Accelerate"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: true, bucket: "bucket-name", force_path_style: false, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "af-south-1", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          endpoint: 'https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com',
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'bucket-name',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "SDK::Host + access point ARN@af-south-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true}]}, "url" => "https://myendpoint-123456789012.beta.example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint", force_path_style: false, endpoint: "https://beta.example.com", region: "af-south-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          endpoint: 'https://beta.example.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "vanilla access point arn@us-west-2" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://myendpoint-123456789012.s3-accesspoint.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", force_path_style: false, region: "us-west-2", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "access point arn + FIPS@us-west-2" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://myendpoint-123456789012.s3-accesspoint-fips.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", force_path_style: false, region: "us-west-2", use_dual_stack: false, use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "access point arn + accelerate = error@us-west-2" do
      let(:expected) do
        {"error" => "Access Points do not support S3 Accelerate"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: true, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", force_path_style: false, region: "us-west-2", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "access point arn + FIPS + DualStack@us-west-2" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://myendpoint-123456789012.s3-accesspoint-fips.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", force_path_style: false, region: "us-west-2", use_dual_stack: true, use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "vanilla access point arn@cn-north-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true}]}, "url" => "https://myendpoint-123456789012.s3-accesspoint.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", force_path_style: false, region: "cn-north-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "access point arn + FIPS@cn-north-1" do
      let(:expected) do
        {"error" => "Partition does not support FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", force_path_style: false, region: "cn-north-1", use_dual_stack: false, use_fips: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "access point arn + accelerate = error@cn-north-1" do
      let(:expected) do
        {"error" => "Access Points do not support S3 Accelerate"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: true, bucket: "arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", force_path_style: false, region: "cn-north-1", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "access point arn + FIPS + DualStack@cn-north-1" do
      let(:expected) do
        {"error" => "Partition does not support FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", force_path_style: false, region: "cn-north-1", use_dual_stack: true, use_fips: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "vanilla access point arn@af-south-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true}]}, "url" => "https://myendpoint-123456789012.s3-accesspoint.af-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint", force_path_style: false, region: "af-south-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "access point arn + FIPS@af-south-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true}]}, "url" => "https://myendpoint-123456789012.s3-accesspoint-fips.af-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint", force_path_style: false, region: "af-south-1", use_dual_stack: false, use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "access point arn + accelerate = error@af-south-1" do
      let(:expected) do
        {"error" => "Access Points do not support S3 Accelerate"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: true, bucket: "arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint", force_path_style: false, region: "af-south-1", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "access point arn + FIPS + DualStack@af-south-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true}]}, "url" => "https://myendpoint-123456789012.s3-accesspoint-fips.dualstack.af-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint", force_path_style: false, region: "af-south-1", use_dual_stack: true, use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'af-south-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3", "signingRegion" => "af-south-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "S3 outposts vanilla test" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"], "disableDoubleEncoding" => true}, {"name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://reports-123456789012.op-01234567890123456.s3-outposts.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"], "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "S3 outposts custom endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"], "disableDoubleEncoding" => true}, {"name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://reports-123456789012.op-01234567890123456.example.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports", endpoint: "https://example.amazonaws.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'https://example.amazonaws.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"], "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "outposts arn with region mismatch and UseArnRegion=false" do
      let(:expected) do
        {"error" => "Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", force_path_style: false, use_arn_region: false, region: "us-west-2", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_use_arn_region: false,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "outposts arn with region mismatch, custom region and UseArnRegion=false" do
      let(:expected) do
        {"error" => "Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", endpoint: "https://example.com", force_path_style: false, use_arn_region: false, region: "us-west-2", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'https://example.com',
          s3_use_arn_region: false,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "outposts arn with region mismatch and UseArnRegion=true" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"], "disableDoubleEncoding" => true}, {"name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://myaccesspoint-123456789012.op-01234567890123456.s3-outposts.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", force_path_style: false, use_arn_region: true, region: "us-west-2", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_use_arn_region: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"], "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "outposts arn with region mismatch and UseArnRegion unset" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"], "disableDoubleEncoding" => true}, {"name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://myaccesspoint-123456789012.op-01234567890123456.s3-outposts.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", force_path_style: false, region: "us-west-2", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"], "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "outposts arn with partition mismatch and UseArnRegion=true" do
      let(:expected) do
        {"error" => "Client was configured for partition `aws` but ARN (`arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint`) has `aws-cn`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", force_path_style: false, use_arn_region: true, region: "us-west-2", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_use_arn_region: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "ARN with UseGlobalEndpoint and use-east-1 region uses the regional endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"], "disableDoubleEncoding" => true}, {"name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://reports-123456789012.op-01234567890123456.s3-outposts.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_global_endpoint: true, use_fips: false, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-01234567890123456/accesspoint/reports"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'legacy',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"], "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-01234567890123456/accesspoint/reports',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "S3 outposts does not support dualstack" do
      let(:expected) do
        {"error" => "S3 Outposts does not support Dual-stack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: true, accelerate: false, bucket: "arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "S3 outposts does not support fips" do
      let(:expected) do
        {"error" => "S3 Outposts does not support FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "S3 outposts does not support accelerate" do
      let(:expected) do
        {"error" => "S3 Outposts does not support S3 Accelerate"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: true, bucket: "arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "validates against subresource" do
      let(:expected) do
        {"error" => "Invalid Arn: Outpost Access Point ARN contains sub resources"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:mybucket:object:foo"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "object lambda @us-east-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://mybanner-123456789012.s3-object-lambda.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_use_arn_region: false,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "object lambda @us-west-2" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://mybanner-123456789012.s3-object-lambda.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_use_arn_region: false,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "object lambda, colon resource deliminator @us-west-2" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://mybanner-123456789012.s3-object-lambda.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint:mybanner"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_use_arn_region: false,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint:mybanner',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "object lambda @us-east-1, client region us-west-2, useArnRegion=true" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://mybanner-123456789012.s3-object-lambda.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: true, bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_use_arn_region: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "object lambda @us-east-1, client region s3-external-1, useArnRegion=true" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://mybanner-123456789012.s3-object-lambda.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "s3-external-1", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: true, bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 's3-external-1',
          s3_use_arn_region: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "object lambda @us-east-1, client region s3-external-1, useArnRegion=false" do
      let(:expected) do
        {"error" => "Invalid configuration: region from ARN `us-east-1` does not match client region `s3-external-1` and UseArnRegion is `false`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "s3-external-1", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 's3-external-1',
          s3_use_arn_region: false,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "object lambda @us-east-1, client region aws-global, useArnRegion=true" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://mybanner-123456789012.s3-object-lambda.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: true, bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'aws-global',
          s3_use_arn_region: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "object lambda @us-east-1, client region aws-global, useArnRegion=false" do
      let(:expected) do
        {"error" => "Invalid configuration: region from ARN `us-east-1` does not match client region `aws-global` and UseArnRegion is `false`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'aws-global',
          s3_use_arn_region: false,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "object lambda @cn-north-1, client region us-west-2 (cross partition), useArnRegion=true" do
      let(:expected) do
        {"error" => "Client was configured for partition `aws` but ARN (`arn:aws-cn:s3-object-lambda:cn-north-1:123456789012:accesspoint/mybanner`) has `aws-cn`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "aws-global", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: true, bucket: "arn:aws-cn:s3-object-lambda:cn-north-1:123456789012:accesspoint/mybanner"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'aws-global',
          s3_use_arn_region: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws-cn:s3-object-lambda:cn-north-1:123456789012:accesspoint/mybanner',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "object lambda with dualstack" do
      let(:expected) do
        {"error" => "S3 Object Lambda does not support Dual-stack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: true, accelerate: false, use_arn_region: false, bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_dualstack_endpoint: true,
          s3_use_arn_region: false,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "object lambda @us-gov-east-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-gov-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://mybanner-123456789012.s3-object-lambda.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-east-1", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws-us-gov:s3-object-lambda:us-gov-east-1:123456789012:accesspoint/mybanner"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "object lambda @us-gov-east-1, with fips" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-gov-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://mybanner-123456789012.s3-object-lambda-fips.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-gov-east-1", use_fips: true, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws-us-gov:s3-object-lambda:us-gov-east-1:123456789012:accesspoint/mybanner"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "object lambda @cn-north-1, with fips" do
      let(:expected) do
        {"error" => "Partition does not support FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-north-1", use_fips: true, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws-cn:s3-object-lambda:cn-north-1:123456789012:accesspoint/mybanner"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "object lambda with accelerate" do
      let(:expected) do
        {"error" => "S3 Object Lambda does not support S3 Accelerate"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: true, use_arn_region: false, bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_accelerate_endpoint: true,
          s3_use_arn_region: false,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "object lambda with invalid arn - bad service and someresource" do
      let(:expected) do
        {"error" => "Invalid ARN: Unrecognized format: arn:aws:sqs:us-west-2:123456789012:someresource (type: someresource)"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws:sqs:us-west-2:123456789012:someresource"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_use_arn_region: false,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:sqs:us-west-2:123456789012:someresource',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "object lambda with invalid arn - invalid resource" do
      let(:expected) do
        {"error" => "Invalid ARN: Object Lambda ARNs only support `accesspoint` arn types, but found: `bucket_name`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:bucket_name:mybucket"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "object lambda with invalid arn - missing region" do
      let(:expected) do
        {"error" => "Invalid ARN: bucket ARN is missing a region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws:s3-object-lambda::123456789012:accesspoint/mybanner"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "object lambda with invalid arn - missing account-id" do
      let(:expected) do
        {"error" => "Invalid ARN: Missing account id"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: true, bucket: "arn:aws:s3-object-lambda:us-west-2::accesspoint/mybanner"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "object lambda with invalid arn - account id contains invalid characters" do
      let(:expected) do
        {"error" => "Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `123.45678.9012`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: true, bucket: "arn:aws:s3-object-lambda:us-west-2:123.45678.9012:accesspoint:mybucket"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_use_arn_region: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3-object-lambda:us-west-2:123.45678.9012:accesspoint:mybucket',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "object lambda with invalid arn - missing access point name" do
      let(:expected) do
        {"error" => "Invalid ARN: Expected a resource of the format `accesspoint:<accesspoint name>` but no name was provided"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: true, bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "object lambda with invalid arn - access point name contains invalid character: *" do
      let(:expected) do
        {"error" => "Invalid ARN: The access point name may only contain a-z, A-Z, 0-9 and `-`. Found: `*`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: true, bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint:*"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "object lambda with invalid arn - access point name contains invalid character: ." do
      let(:expected) do
        {"error" => "Invalid ARN: The access point name may only contain a-z, A-Z, 0-9 and `-`. Found: `my.bucket`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: true, bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint:my.bucket"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "object lambda with invalid arn - access point name contains sub resources" do
      let(:expected) do
        {"error" => "Invalid ARN: The ARN may only contain a single resource component after `accesspoint`."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: true, bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint:mybucket:object:foo"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "object lambda with custom endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://mybanner-123456789012.my-endpoint.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner", endpoint: "https://my-endpoint.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'https://my-endpoint.com',
          s3_use_arn_region: false,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "object lambda arn with region mismatch and UseArnRegion=false" do
      let(:expected) do
        {"error" => "Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner", force_path_style: false, use_arn_region: false, region: "us-west-2", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_use_arn_region: false,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "WriteGetObjectResponse @ us-west-2" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://s3-object-lambda.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, use_object_lambda_endpoint: true, region: "us-west-2", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling write_get_object_response' do
        client = Client.new(
          region: 'us-west-2',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.write_get_object_response(
          request_route: 'RequestRoute',
          request_token: 'RequestToken',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "WriteGetObjectResponse with custom endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}]}, "url" => "https://my-endpoint.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, use_object_lambda_endpoint: true, endpoint: "https://my-endpoint.com", region: "us-west-2", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling write_get_object_response' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'https://my-endpoint.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.write_get_object_response(
          request_route: 'RequestRoute',
          request_token: 'RequestToken',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "WriteGetObjectResponse @ us-east-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3-object-lambda.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, use_object_lambda_endpoint: true, region: "us-east-1", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling write_get_object_response' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.write_get_object_response(
          request_route: 'RequestRoute',
          request_token: 'RequestToken',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "WriteGetObjectResponse with fips" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://s3-object-lambda-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, use_object_lambda_endpoint: true, region: "us-east-1", use_dual_stack: false, use_fips: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling write_get_object_response' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3-object-lambda", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.write_get_object_response(
          request_route: 'RequestRoute',
          request_token: 'RequestToken',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "WriteGetObjectResponse with dualstack" do
      let(:expected) do
        {"error" => "S3 Object Lambda does not support Dual-stack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, use_object_lambda_endpoint: true, region: "us-east-1", use_dual_stack: true, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling write_get_object_response' do
        client = Client.new(
          region: 'us-east-1',
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.write_get_object_response(
            request_route: 'RequestRoute',
            request_token: 'RequestToken',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "WriteGetObjectResponse with accelerate" do
      let(:expected) do
        {"error" => "S3 Object Lambda does not support S3 Accelerate"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: true, use_object_lambda_endpoint: true, region: "us-east-1", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "WriteGetObjectResponse with fips in CN" do
      let(:expected) do
        {"error" => "Partition does not support FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, region: "cn-north-1", use_object_lambda_endpoint: true, use_dual_stack: false, use_fips: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "WriteGetObjectResponse with invalid partition" do
      let(:expected) do
        {"error" => "Invalid region: region was not a valid DNS name."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, use_object_lambda_endpoint: true, region: "not a valid DNS name", use_dual_stack: false, use_fips: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "WriteGetObjectResponse with an unknown partition" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3-object-lambda", "disableDoubleEncoding" => true, "signingRegion" => "us-east.special"}]}, "url" => "https://s3-object-lambda.us-east.special.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{accelerate: false, use_object_lambda_endpoint: true, region: "us-east.special", use_dual_stack: false, use_fips: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "S3 Outposts bucketAlias Real Outpost Prod us-west-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"], "disableDoubleEncoding" => true}, {"name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "us-west-1", "disableDoubleEncoding" => true}]}, "url" => "https://test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3.op-0b1d075431d83bebd.s3-outposts.us-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-1", bucket: "test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3", use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "S3 Outposts bucketAlias Real Outpost Prod ap-east-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"], "disableDoubleEncoding" => true}, {"name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "ap-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3.op-0b1d075431d83bebd.s3-outposts.ap-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "ap-east-1", bucket: "test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3", use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "S3 Outposts bucketAlias Ec2 Outpost Prod us-east-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"], "disableDoubleEncoding" => true}, {"name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://test-accessp-e0000075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3.ec2.s3-outposts.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "test-accessp-e0000075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3", use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "S3 Outposts bucketAlias Ec2 Outpost Prod me-south-1" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"], "disableDoubleEncoding" => true}, {"name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "me-south-1", "disableDoubleEncoding" => true}]}, "url" => "https://test-accessp-e0000075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3.ec2.s3-outposts.me-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "me-south-1", bucket: "test-accessp-e0000075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3", use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "S3 Outposts bucketAlias Real Outpost Beta" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"], "disableDoubleEncoding" => true}, {"name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kbeta0--op-s3.op-0b1d075431d83bebd.example.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kbeta0--op-s3", endpoint: "https://example.amazonaws.com", use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "S3 Outposts bucketAlias Ec2 Outpost Beta" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4a", "signingName" => "s3-outposts", "signingRegionSet" => ["*"], "disableDoubleEncoding" => true}, {"name" => "sigv4", "signingName" => "s3-outposts", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}]}, "url" => "https://161743052723-e00000136899934034jeahy1t8gpzpbwjj8kb7beta0--op-s3.ec2.example.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "161743052723-e00000136899934034jeahy1t8gpzpbwjj8kb7beta0--op-s3", endpoint: "https://example.amazonaws.com", use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "S3 Outposts bucketAlias - No endpoint set for beta" do
      let(:expected) do
        {"error" => "Expected a endpoint to be specified but no endpoint was found"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kbeta0--op-s3", use_fips: false, use_dual_stack: false, accelerate: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "S3 Outposts bucketAlias Invalid hardware type" do
      let(:expected) do
        {"error" => "Unrecognized hardware type: \"Expected hardware type o or e but got h\""}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "test-accessp-h0000075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3", use_fips: false, use_dual_stack: false, accelerate: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "S3 Outposts bucketAlias Special character in Outpost Arn" do
      let(:expected) do
        {"error" => "Invalid ARN: The outpost Id must only contain a-z, A-Z, 0-9 and `-`."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "test-accessp-o00000754%1d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3", use_fips: false, use_dual_stack: false, accelerate: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "S3 Outposts bucketAlias - No endpoint set for beta" do
      let(:expected) do
        {"error" => "Expected a endpoint to be specified but no endpoint was found"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "test-accessp-e0b1d075431d83bebde8xz5w8ijx1qzlbp3i3ebeta0--op-s3", use_fips: false, use_dual_stack: false, accelerate: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "S3 Snow with bucket" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "snow", "disableDoubleEncoding" => true}]}, "url" => "http://10.0.1.12:433/bucketName"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "snow", bucket: "bucketName", endpoint: "http://10.0.1.12:433", use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "S3 Snow without bucket" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "snow", "disableDoubleEncoding" => true}]}, "url" => "https://10.0.1.12:433"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "snow", endpoint: "https://10.0.1.12:433", use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "S3 Snow no port" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "snow", "disableDoubleEncoding" => true}]}, "url" => "http://10.0.1.12/bucketName"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "snow", bucket: "bucketName", endpoint: "http://10.0.1.12", use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "S3 Snow dns endpoint" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3", "signingRegion" => "snow", "disableDoubleEncoding" => true}]}, "url" => "https://amazonaws.com/bucketName"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "snow", bucket: "bucketName", endpoint: "https://amazonaws.com", use_fips: false, use_dual_stack: false, accelerate: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane with short zone name" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--abcd-ab1--x-s3.s3express-abcd-ab1.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "mybucket--abcd-ab1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'mybucket--abcd-ab1--x-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with short zone name china region" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--abcd-ab1--x-s3.s3express-abcd-ab1.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-north-1", bucket: "mybucket--abcd-ab1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'mybucket--abcd-ab1--x-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with short zone name with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--abcd-ab1--xa-s3.s3express-abcd-ab1.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "myaccesspoint--abcd-ab1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'myaccesspoint--abcd-ab1--xa-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with short zone name with AP china region" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--abcd-ab1--xa-s3.s3express-abcd-ab1.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-north-1", bucket: "myaccesspoint--abcd-ab1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'myaccesspoint--abcd-ab1--xa-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with short zone names (13 chars)" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test-zone-ab1--x-s3.s3express-test-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test-zone-ab1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'mybucket--test-zone-ab1--x-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with short zone names (13 chars) with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test-zone-ab1--xa-s3.s3express-test-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test-zone-ab1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'myaccesspoint--test-zone-ab1--xa-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with medium zone names (14 chars)" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test1-zone-ab1--x-s3.s3express-test1-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test1-zone-ab1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'mybucket--test1-zone-ab1--x-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with medium zone names (14 chars) with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test1-zone-ab1--xa-s3.s3express-test1-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test1-zone-ab1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'myaccesspoint--test1-zone-ab1--xa-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with long zone names (20 chars)" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test1-long1-zone-ab1--x-s3.s3express-test1-long1-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test1-long1-zone-ab1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'mybucket--test1-long1-zone-ab1--x-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with long zone names (20 chars)" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test1-long1-zone-ab1--xa-s3.s3express-test1-long1-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test1-long1-zone-ab1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'myaccesspoint--test1-long1-zone-ab1--xa-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with short zone fips" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test-ab1--x-s3.s3express-fips-test-ab1.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "mybucket--test-ab1--x-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'mybucket--test-ab1--x-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with short zone fips china region" do
      let(:expected) do
        {"error" => "Partition does not support FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-north-1", bucket: "mybucket--test-ab1--x-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'mybucket--test-ab1--x-s3',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Data Plane with short zone fips with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test-ab1--xa-s3.s3express-fips-test-ab1.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "myaccesspoint--test-ab1--xa-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'myaccesspoint--test-ab1--xa-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with short zone fips with AP china region" do
      let(:expected) do
        {"error" => "Partition does not support FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-north-1", bucket: "myaccesspoint--test-ab1--xa-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'myaccesspoint--test-ab1--xa-s3',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Data Plane with short zone (13 chars) fips" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test-zone-ab1--x-s3.s3express-fips-test-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test-zone-ab1--x-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'mybucket--test-zone-ab1--x-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with short zone (13 chars) fips with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test-zone-ab1--xa-s3.s3express-fips-test-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test-zone-ab1--xa-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'myaccesspoint--test-zone-ab1--xa-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with medium zone (14 chars) fips" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test1-zone-ab1--x-s3.s3express-fips-test1-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test1-zone-ab1--x-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'mybucket--test1-zone-ab1--x-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with medium zone (14 chars) fips with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test1-zone-ab1--xa-s3.s3express-fips-test1-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test1-zone-ab1--xa-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'myaccesspoint--test1-zone-ab1--xa-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with long zone (20 chars) fips" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test1-long1-zone-ab1--x-s3.s3express-fips-test1-long1-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test1-long1-zone-ab1--x-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'mybucket--test1-long1-zone-ab1--x-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with long zone (20 chars) fips with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test1-long1-zone-ab1--xa-s3.s3express-fips-test1-long1-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test1-long1-zone-ab1--xa-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'myaccesspoint--test1-long1-zone-ab1--xa-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with long AZ" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test1-az1--x-s3.s3express-test1-az1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test1-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'mybucket--test1-az1--x-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with long AZ with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test1-az1--xa-s3.s3express-test1-az1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test1-az1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'myaccesspoint--test1-az1--xa-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with long AZ fips" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test1-az1--x-s3.s3express-fips-test1-az1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test1-az1--x-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'mybucket--test1-az1--x-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with long AZ fips with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test1-az1--xa-s3.s3express-fips-test1-az1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test1-az1--xa-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'myaccesspoint--test1-az1--xa-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Control plane with short AZ bucket" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://s3express-control.us-east-1.amazonaws.com/mybucket--test-ab1--x-s3"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "mybucket--test-ab1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: true, disable_s3_express_session_auth: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling create_bucket' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.create_bucket(
          bucket: 'mybucket--test-ab1--x-s3',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Control plane with short AZ bucket china region" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://s3express-control.cn-north-1.amazonaws.com.cn/mybucket--test-ab1--x-s3"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-north-1", bucket: "mybucket--test-ab1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: true, disable_s3_express_session_auth: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling create_bucket' do
        client = Client.new(
          region: 'cn-north-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "cn-north-1", "disableDoubleEncoding" => true})
        resp = client.create_bucket(
          bucket: 'mybucket--test-ab1--x-s3',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Control plane with short AZ bucket and fips" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://s3express-control-fips.us-east-1.amazonaws.com/mybucket--test-ab1--x-s3"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "mybucket--test-ab1--x-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: true, disable_s3_express_session_auth: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling create_bucket' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.create_bucket(
          bucket: 'mybucket--test-ab1--x-s3',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Control plane with short AZ bucket and fips china region" do
      let(:expected) do
        {"error" => "Partition does not support FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "cn-north-1", bucket: "mybucket--test-ab1--x-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: true, disable_s3_express_session_auth: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling create_bucket' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.create_bucket(
            bucket: 'mybucket--test-ab1--x-s3',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Control plane without bucket" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://s3express-control.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: true, disable_s3_express_session_auth: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_directory_buckets' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.list_directory_buckets(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Control plane without bucket and fips" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://s3express-control-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: true, disable_s3_express_session_auth: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_directory_buckets' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.list_directory_buckets(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane sigv4 auth with short AZ" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--usw2-az1--x-s3.s3express-usw2-az1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--usw2-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with short AZ with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--usw2-az1--xa-s3.s3express-usw2-az1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--usw2-az1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with short zone (13 chars)" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test-zone-ab1--x-s3.s3express-test-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test-zone-ab1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with short zone (13 chars) with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test-zone-ab1--xa-s3.s3express-test-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test-zone-ab1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with short AZ fips" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--usw2-az1--x-s3.s3express-fips-usw2-az1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--usw2-az1--x-s3", use_fips: true, use_dual_stack: false, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with short AZ fips with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--usw2-az1--xa-s3.s3express-fips-usw2-az1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--usw2-az1--xa-s3", use_fips: true, use_dual_stack: false, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with short zone (13 chars) fips" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test-zone-ab1--x-s3.s3express-fips-test-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test-zone-ab1--x-s3", use_fips: true, use_dual_stack: false, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with short zone (13 chars) fips with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test-zone-ab1--xa-s3.s3express-fips-test-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test-zone-ab1--xa-s3", use_fips: true, use_dual_stack: false, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with long AZ" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test1-az1--x-s3.s3express-test1-az1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test1-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with long AZ with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test1-az1--xa-s3.s3express-test1-az1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test1-az1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with medium zone(14 chars)" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test1-zone-ab1--x-s3.s3express-test1-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test1-zone-ab1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with medium zone(14 chars) with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test1-zone-ab1--xa-s3.s3express-test1-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test1-zone-ab1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with long zone(20 chars)" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test1-long1-zone-ab1--x-s3.s3express-test1-long1-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test1-long1-zone-ab1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with long zone(20 chars) with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test1-long1-zone-ab1--xa-s3.s3express-test1-long1-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test1-long1-zone-ab1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with long AZ fips" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test1-az1--x-s3.s3express-fips-test1-az1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test1-az1--x-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with long AZ fips with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test1-az1--xa-s3.s3express-fips-test1-az1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test1-az1--xa-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with medium zone (14 chars) fips" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test1-zone-ab1--x-s3.s3express-fips-test1-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test1-zone-ab1--x-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with medium zone (14 chars) fips with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test1-zone-ab1--xa-s3.s3express-fips-test1-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test1-zone-ab1--xa-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with long zone (20 chars) fips" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test1-long1-zone-ab1--x-s3.s3express-fips-test1-long1-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test1-long1-zone-ab1--x-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with long zone (20 chars) fips with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test1-long1-zone-ab1--xa-s3.s3express-fips-test1-long1-zone-ab1.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test1-long1-zone-ab1--xa-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Control Plane host override" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--usw2-az1--x-s3.custom.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--usw2-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: true, disable_s3_express_session_auth: true, endpoint: "https://custom.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Control Plane host override with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--usw2-az1--xa-s3.custom.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--usw2-az1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: true, disable_s3_express_session_auth: true, endpoint: "https://custom.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Control Plane host override no bucket" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://custom.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: true, disable_s3_express_session_auth: true, endpoint: "https://custom.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data plane host override non virtual session auth" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://10.0.0.1/mybucket--usw2-az1--x-s3"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--usw2-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, endpoint: "https://10.0.0.1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'https://10.0.0.1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'mybucket--usw2-az1--x-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data plane host override non virtual session auth with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://10.0.0.1/myaccesspoint--usw2-az1--xa-s3"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--usw2-az1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: false, endpoint: "https://10.0.0.1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'https://10.0.0.1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'myaccesspoint--usw2-az1--xa-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Control Plane host override ip" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://10.0.0.1/mybucket--usw2-az1--x-s3"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--usw2-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: true, disable_s3_express_session_auth: true, endpoint: "https://10.0.0.1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Control Plane host override ip with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://10.0.0.1/myaccesspoint--usw2-az1--xa-s3"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--usw2-az1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: true, disable_s3_express_session_auth: true, endpoint: "https://10.0.0.1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data plane host override" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--usw2-az1--x-s3.custom.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--usw2-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, endpoint: "https://custom.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'https://custom.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'mybucket--usw2-az1--x-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data plane host override with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--usw2-az1--xa-s3.custom.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--usw2-az1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: false, endpoint: "https://custom.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'https://custom.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'myaccesspoint--usw2-az1--xa-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "bad format error" do
      let(:expected) do
        {"error" => "Unrecognized S3Express bucket name format."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "mybucket--usaz1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'mybucket--usaz1--x-s3',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "bad AP format error" do
      let(:expected) do
        {"error" => "Unrecognized S3Express bucket name format."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "myaccesspoint--usaz1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'myaccesspoint--usaz1--xa-s3',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "bad format error no session auth" do
      let(:expected) do
        {"error" => "Unrecognized S3Express bucket name format."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "mybucket--usaz1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false, disable_s3_express_session_auth: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'mybucket--usaz1--x-s3',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "bad AP format error no session auth" do
      let(:expected) do
        {"error" => "Unrecognized S3Express bucket name format."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "myaccesspoint--usaz1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false, disable_s3_express_session_auth: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'myaccesspoint--usaz1--xa-s3',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "accelerate error" do
      let(:expected) do
        {"error" => "S3Express does not support S3 Accelerate."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "mybucket--test-ab1--x-s3", use_fips: false, use_dual_stack: false, accelerate: true, use_s3_express_control_endpoint: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'mybucket--test-ab1--x-s3',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "accelerate error with AP" do
      let(:expected) do
        {"error" => "S3Express does not support S3 Accelerate."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "myaccesspoint--test-ab1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: true, use_s3_express_control_endpoint: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          use_accelerate_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'myaccesspoint--test-ab1--xa-s3',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Data plane bucket format error" do
      let(:expected) do
        {"error" => "S3Express bucket name is not a valid virtual hostable name."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "my.bucket--test-ab1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'my.bucket--test-ab1--x-s3',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Data plane AP format error" do
      let(:expected) do
        {"error" => "S3Express bucket name is not a valid virtual hostable name."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "my.myaccesspoint--test-ab1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-east-1',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'my.myaccesspoint--test-ab1--xa-s3',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "host override data plane bucket error session auth" do
      let(:expected) do
        {"error" => "S3Express bucket name is not a valid virtual hostable name."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "my.bucket--usw2-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, endpoint: "https://custom.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'https://custom.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'my.bucket--usw2-az1--x-s3',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "host override data plane AP error session auth" do
      let(:expected) do
        {"error" => "S3Express bucket name is not a valid virtual hostable name."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "my.myaccesspoint--usw2-az1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: false, endpoint: "https://custom.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'https://custom.com',
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect do
          client.get_object(
            bucket: 'my.myaccesspoint--usw2-az1--xa-s3',
            key: 'key',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "host override data plane bucket error" do
      let(:expected) do
        {"error" => "S3Express bucket name is not a valid virtual hostable name."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "my.bucket--usw2-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, endpoint: "https://custom.com", disable_s3_express_session_auth: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "host override data plane AP error" do
      let(:expected) do
        {"error" => "S3Express bucket name is not a valid virtual hostable name."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "my.myaccesspoint--usw2-az1--xa-s3", use_fips: false, use_dual_stack: false, accelerate: false, endpoint: "https://custom.com", disable_s3_express_session_auth: true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "Control plane without bucket and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://s3express-control.dualstack.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: false, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: true, disable_s3_express_session_auth: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_directory_buckets' do
        client = Client.new(
          region: 'us-east-1',
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.list_directory_buckets(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Control plane without bucket, fips and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://s3express-control-fips.dualstack.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", use_fips: true, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: true, disable_s3_express_session_auth: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_directory_buckets' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.list_directory_buckets(
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with short AZ and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--usw2-az1--x-s3.s3express-usw2-az1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--usw2-az1--x-s3", use_fips: false, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'mybucket--usw2-az1--x-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane with short AZ and FIPS with dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--usw2-az1--x-s3.s3express-fips-usw2-az1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--usw2-az1--x-s3", use_fips: true, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_object' do
        client = Client.new(
          region: 'us-west-2',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        client.stub_responses(:create_session, credentials: {
          access_key_id: 's3-akid',
          secret_access_key: 's3-secret',
          session_token: 's3-session',
          expiration: Time.now + 60 * 5
        })
        expect_auth({"name"=>"sigv4", "signingName"=>"s3express"})
        Aws::S3.express_credentials_cache.clear
        expect_auth({"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true})
        resp = client.get_object(
          bucket: 'mybucket--usw2-az1--x-s3',
          key: 'key',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data Plane sigv4 auth with short AZ and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--usw2-az1--x-s3.s3express-usw2-az1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--usw2-az1--x-s3", use_fips: false, use_dual_stack: true, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with short AZ and FIPS with dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--usw2-az1--x-s3.s3express-fips-usw2-az1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--usw2-az1--x-s3", use_fips: true, use_dual_stack: true, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane with zone and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--usw2-az12--x-s3.s3express-usw2-az12.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--usw2-az12--x-s3", use_fips: false, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane with zone and FIPS with dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--usw2-az12--x-s3.s3express-fips-usw2-az12.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--usw2-az12--x-s3", use_fips: true, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with zone and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--usw2-az12--x-s3.s3express-usw2-az12.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--usw2-az12--x-s3", use_fips: false, use_dual_stack: true, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with 9-char zone and FIPS with dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--usw2-az12--x-s3.s3express-fips-usw2-az12.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--usw2-az12--x-s3", use_fips: true, use_dual_stack: true, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane with 13-char zone and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test-zone-ab1--x-s3.s3express-test-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test-zone-ab1--x-s3", use_fips: false, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane with 13-char zone and FIPS with dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test-zone-ab1--x-s3.s3express-fips-test-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test-zone-ab1--x-s3", use_fips: true, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with 13-char zone and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test-zone-ab1--x-s3.s3express-test-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test-zone-ab1--x-s3", use_fips: false, use_dual_stack: true, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with 13-char zone and FIPS with dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test-zone-ab1--x-s3.s3express-fips-test-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test-zone-ab1--x-s3", use_fips: true, use_dual_stack: true, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane with 14-char zone and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test1-zone-ab1--x-s3.s3express-test1-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test1-zone-ab1--x-s3", use_fips: false, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane with 14-char zone and FIPS with dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test1-zone-ab1--x-s3.s3express-fips-test1-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test1-zone-ab1--x-s3", use_fips: true, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with 14-char zone and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test1-zone-ab1--x-s3.s3express-test1-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test1-zone-ab1--x-s3", use_fips: false, use_dual_stack: true, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with 14-char zone and FIPS with dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test1-zone-ab1--x-s3.s3express-fips-test1-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test1-zone-ab1--x-s3", use_fips: true, use_dual_stack: true, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane with long zone (20 cha) and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test1-long1-zone-ab1--x-s3.s3express-test1-long1-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test1-long1-zone-ab1--x-s3", use_fips: false, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane with long zone (20 char) and FIPS with dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test1-long1-zone-ab1--x-s3.s3express-fips-test1-long1-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test1-long1-zone-ab1--x-s3", use_fips: true, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with long zone (20 char) and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test1-long1-zone-ab1--x-s3.s3express-test1-long1-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test1-long1-zone-ab1--x-s3", use_fips: false, use_dual_stack: true, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with long zone (20 char) and FIPS with dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://mybucket--test1-long1-zone-ab1--x-s3.s3express-fips-test1-long1-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "mybucket--test1-long1-zone-ab1--x-s3", use_fips: true, use_dual_stack: true, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Control plane and FIPS with dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://s3express-control-fips.dualstack.us-east-1.amazonaws.com/mybucket--test-ab1--x-s3"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "mybucket--test-ab1--x-s3", use_fips: true, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling create_bucket' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.create_bucket(
          bucket: 'mybucket--test-ab1--x-s3',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context "Data plane with zone and dualstack and AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--usw2-az1--xa-s3.s3express-usw2-az1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--usw2-az1--xa-s3", use_fips: false, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data plane with zone and FIPS with dualstack and AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--usw2-az1--xa-s3.s3express-fips-usw2-az1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--usw2-az1--xa-s3", use_fips: true, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with zone and dualstack and AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--usw2-az1--xa-s3.s3express-usw2-az1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--usw2-az1--xa-s3", use_fips: false, use_dual_stack: true, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane AP sigv4 auth with zone and FIPS with dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--usw2-az1--xa-s3.s3express-fips-usw2-az1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--usw2-az1--xa-s3", use_fips: true, use_dual_stack: true, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane with zone (9 char) and AP with dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--usw2-az12--xa-s3.s3express-usw2-az12.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--usw2-az12--xa-s3", use_fips: false, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane with zone (9 char) and FIPS with AP and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--usw2-az12--xa-s3.s3express-fips-usw2-az12.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--usw2-az12--xa-s3", use_fips: true, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with (9 char) zone and dualstack with AP" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--usw2-az12--xa-s3.s3express-usw2-az12.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--usw2-az12--xa-s3", use_fips: false, use_dual_stack: true, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Access Point sigv4 auth with (9 char) zone and FIPS with dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--usw2-az12--xa-s3.s3express-fips-usw2-az12.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--usw2-az12--xa-s3", use_fips: true, use_dual_stack: true, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane with zone (13 char) and AP with dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test-zone-ab1--xa-s3.s3express-test-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test-zone-ab1--xa-s3", use_fips: false, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane with zone (13 char) and AP with FIPS and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test-zone-ab1--xa-s3.s3express-fips-test-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test-zone-ab1--xa-s3", use_fips: true, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with (13 char) zone with AP and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test-zone-ab1--xa-s3.s3express-test-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test-zone-ab1--xa-s3", use_fips: false, use_dual_stack: true, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with (13 char) zone with AP and FIPS and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test-zone-ab1--xa-s3.s3express-fips-test-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test-zone-ab1--xa-s3", use_fips: true, use_dual_stack: true, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane with (14 char) zone and AP with dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test1-zone-ab1--xa-s3.s3express-test1-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test1-zone-ab1--xa-s3", use_fips: false, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane with (14 char) zone and AP with FIPS and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test1-zone-ab1--xa-s3.s3express-fips-test1-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test1-zone-ab1--xa-s3", use_fips: true, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane sigv4 auth with (14 char) zone and AP with dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test1-zone-ab1--xa-s3.s3express-test1-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test1-zone-ab1--xa-s3", use_fips: false, use_dual_stack: true, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane with (14 char) zone and AP with FIPS and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test1-zone-ab1--xa-s3.s3express-fips-test1-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test1-zone-ab1--xa-s3", use_fips: true, use_dual_stack: true, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane with (20 char) zone and AP with dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test1-long1-zone-ab1--xa-s3.s3express-test1-long1-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test1-long1-zone-ab1--xa-s3", use_fips: false, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data Plane with (20 char) zone and AP with FIPS and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4-s3express", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test1-long1-zone-ab1--xa-s3.s3express-fips-test1-long1-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test1-long1-zone-ab1--xa-s3", use_fips: true, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data plane AP with sigv4 and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test1-long1-zone-ab1--xa-s3.s3express-test1-long1-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test1-long1-zone-ab1--xa-s3", use_fips: false, use_dual_stack: true, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Data plane AP sigv4 with fips and dualstack" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-west-2", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://myaccesspoint--test1-long1-zone-ab1--xa-s3.s3express-fips-test1-long1-zone-ab1.dualstack.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-west-2", bucket: "myaccesspoint--test1-long1-zone-ab1--xa-s3", use_fips: true, use_dual_stack: true, accelerate: false, disable_s3_express_session_auth: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Control plane with dualstack and bucket" do
      let(:expected) do
        {"endpoint" => {"properties" => {"authSchemes" => [{"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true}], "backend" => "S3Express"}, "url" => "https://s3express-control.dualstack.us-east-1.amazonaws.com/mybucket--test-ab1--x-s3"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{region: "us-east-1", bucket: "mybucket--test-ab1--x-s3", use_fips: false, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling create_bucket' do
        client = Client.new(
          region: 'us-east-1',
          use_dualstack_endpoint: true,
          s3_us_east_1_regional_endpoint: 'regional',
          stub_responses: true
        )
        expect_auth({"name" => "sigv4", "signingName" => "s3express", "signingRegion" => "us-east-1", "disableDoubleEncoding" => true})
        resp = client.create_bucket(
          bucket: 'mybucket--test-ab1--x-s3',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

  end
end
