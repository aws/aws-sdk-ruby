# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::S3Control
  describe EndpointProvider do
    subject { Aws::S3Control::EndpointProvider.new }

    context 'Vanilla outposts without ARN region + access point ARN@us-west-2' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"us-west-2", :requires_account_id=>true, :s3_control_use_arn_region=>false, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'us-west-2',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true})
        resp = client.get_access_point(
          name: 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
          account_id: '123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end

      it 'produces the correct output from the client when calling delete_access_point' do
        client = Client.new(
          region: 'us-west-2',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true})
        resp = client.delete_access_point(
          name: 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'Vanilla outposts with ARN region + access point ARN@us-west-2' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"us-west-2", :requires_account_id=>true, :s3_control_use_arn_region=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'us-west-2',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true})
        resp = client.get_access_point(
          name: 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
          account_id: '123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end

      it 'produces the correct output from the client when calling delete_access_point' do
        client = Client.new(
          region: 'us-west-2',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true})
        resp = client.delete_access_point(
          name: 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'accept an access point ARN@us-west-2' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'us-west-2',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true})
        resp = client.get_access_point(
          name: 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
          account_id: '123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end

      it 'produces the correct output from the client when calling delete_access_point' do
        client = Client.new(
          region: 'us-west-2',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true})
        resp = client.delete_access_point(
          name: 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'vanilla outposts china@cn-north-1' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"cn-north-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'cn-north-1',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true})
        resp = client.get_access_point(
          name: 'arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
          account_id: '123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end

      it 'produces the correct output from the client when calling delete_access_point' do
        client = Client.new(
          region: 'cn-north-1',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true})
        resp = client.delete_access_point(
          name: 'arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'gov region@us-west-2' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'us-west-2',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true})
        resp = client.get_access_point(
          name: 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
          account_id: '123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end

      it 'produces the correct output from the client when calling delete_access_point' do
        client = Client.new(
          region: 'us-west-2',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true})
        resp = client.delete_access_point(
          name: 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'gov cloud with fips@us-west-2' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'us-west-2',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true})
        resp = client.get_access_point(
          name: 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
          account_id: '123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end

      it 'produces the correct output from the client when calling delete_access_point' do
        client = Client.new(
          region: 'us-west-2',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true})
        resp = client.delete_access_point(
          name: 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'govcloud with fips + arn region@us-gov-west-1' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"us-gov-west-1", :requires_account_id=>true, :s3_control_use_arn_region=>true, :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'us-gov-west-1',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true})
        resp = client.get_access_point(
          name: 'arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
          account_id: '123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end

      it 'produces the correct output from the client when calling delete_access_point' do
        client = Client.new(
          region: 'us-gov-west-1',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true})
        resp = client.delete_access_point(
          name: 'arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'gov region@cn-north-1' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"cn-north-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'cn-north-1',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true})
        resp = client.get_access_point(
          name: 'arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
          account_id: '123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end

      it 'produces the correct output from the client when calling delete_access_point' do
        client = Client.new(
          region: 'cn-north-1',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true})
        resp = client.delete_access_point(
          name: 'arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'gov cloud with fips@cn-north-1' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"cn-north-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true})
        resp = client.get_access_point(
          name: 'arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
          account_id: '123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end

      it 'produces the correct output from the client when calling delete_access_point' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true})
        resp = client.delete_access_point(
          name: 'arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'govcloud with fips + arn region@us-gov-west-1' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"us-gov-west-1", :requires_account_id=>true, :s3_control_use_arn_region=>true, :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'us-gov-west-1',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true})
        resp = client.get_access_point(
          name: 'arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
          account_id: '123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end

      it 'produces the correct output from the client when calling delete_access_point' do
        client = Client.new(
          region: 'us-gov-west-1',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true})
        resp = client.delete_access_point(
          name: 'arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'gov region@af-south-1' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.af-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:af-south-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"af-south-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'af-south-1',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true})
        resp = client.get_access_point(
          name: 'arn:aws:s3-outposts:af-south-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
          account_id: '123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end

      it 'produces the correct output from the client when calling delete_access_point' do
        client = Client.new(
          region: 'af-south-1',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true})
        resp = client.delete_access_point(
          name: 'arn:aws:s3-outposts:af-south-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'gov cloud with fips@af-south-1' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.af-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:af-south-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"af-south-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'af-south-1',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true})
        resp = client.get_access_point(
          name: 'arn:aws:s3-outposts:af-south-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
          account_id: '123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end

      it 'produces the correct output from the client when calling delete_access_point' do
        client = Client.new(
          region: 'af-south-1',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true})
        resp = client.delete_access_point(
          name: 'arn:aws:s3-outposts:af-south-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'govcloud with fips + arn region@us-gov-west-1' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"us-gov-west-1", :requires_account_id=>true, :s3_control_use_arn_region=>true, :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'us-gov-west-1',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true})
        resp = client.get_access_point(
          name: 'arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
          account_id: '123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end

      it 'produces the correct output from the client when calling delete_access_point' do
        client = Client.new(
          region: 'us-gov-west-1',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true})
        resp = client.delete_access_point(
          name: 'arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'CreateBucket + OutpostId = outposts endpoint@us-east-2' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-east-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"blah", :operation=>"CreateBucket", :outpost_id=>"123", :region=>"us-east-2", :requires_account_id=>false, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling create_bucket' do
        client = Client.new(
          region: 'us-east-2',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true})
        resp = client.create_bucket(
          bucket: 'blah',
          outpost_id: '123',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'CreateBucket + OutpostId with fips = outposts endpoint@us-east-2' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-east-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"blah", :operation=>"CreateBucket", :outpost_id=>"123", :region=>"us-east-2", :requires_account_id=>false, :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling create_bucket' do
        client = Client.new(
          region: 'us-east-2',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true})
        resp = client.create_bucket(
          bucket: 'blah',
          outpost_id: '123',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'CreateBucket without OutpostId = regular endpoint@us-east-2' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-control.us-east-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"blah", :operation=>"CreateBucket", :region=>"us-east-2", :requires_account_id=>false, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling create_bucket' do
        client = Client.new(
          region: 'us-east-2',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true})
        resp = client.create_bucket(
          bucket: 'blah',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'ListRegionalBuckets + OutpostId = outposts endpoint@us-east-2' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-east-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:account_id=>"123", :operation=>"ListRegionalBuckets", :outpost_id=>"op-123", :region=>"us-east-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-east-2',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true})
        resp = client.list_regional_buckets(
          account_id: '123',
          outpost_id: 'op-123',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'ListRegionalBuckets without OutpostId = regular endpoint@us-east-2' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://123.s3-control.us-east-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:account_id=>"123", :operation=>"ListRegionalBuckets", :region=>"us-east-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-east-2',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true})
        resp = client.list_regional_buckets(
          account_id: '123',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'ListRegionalBucket + OutpostId with fips = outposts endpoint@us-east-2' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-east-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:account_id=>"123", :operation=>"CreateBucket", :outpost_id=>"op-123", :region=>"us-east-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-east-2',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true})
        resp = client.list_regional_buckets(
          account_id: '123',
          outpost_id: 'op-123',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'outpost access points do not support dualstack@us-west-2' do
      let(:expected) do
        {"error"=>"Invalid configuration: Outpost Access Points do not support dual-stack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'outpost access points do not support dualstack@cn-north-1' do
      let(:expected) do
        {"error"=>"Invalid configuration: Outpost Access Points do not support dual-stack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"cn-north-1", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'outpost access points do not support dualstack@af-south-1' do
      let(:expected) do
        {"error"=>"Invalid configuration: Outpost Access Points do not support dual-stack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"af-south-1", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'invalid ARN: must be include outpost ID@us-west-2' do
      let(:expected) do
        {"error"=>"Invalid ARN: The Outpost Id was not set"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost", :account_id=>"123456789012", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'invalid ARN: must specify access point@us-west-2' do
      let(:expected) do
        {"error"=>"Invalid ARN: Expected a 4-component resource"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'invalid ARN@us-west-2' do
      let(:expected) do
        {"error"=>"Invalid ARN: Expected a 4-component resource"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:myaccesspoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'when set, AccountId drives AP construction@us-west-2' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://myid-1234.s3-control.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"myaccesspoint", :account_id=>"myid-1234", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Account ID set inline and in ARN but they both match@us-west-2' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"us-west-2", :requires_account_id=>true, :use_arn_region=>false, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'us-west-2',
          s3_use_arn_region: false,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true})
        resp = client.get_access_point(
          account_id: '123456789012',
          name: 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'Account ID set inline and in ARN and they do not match@us-west-2' do
      let(:expected) do
        {"error"=>"Invalid ARN: the accountId specified in the ARN (`123456789012`) does not match the parameter (`9999999`)"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"9999999", :region=>"us-west-2", :requires_account_id=>true, :use_arn_region=>false, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'us-west-2',
          s3_use_arn_region: false,
          stub_responses: true
        )
        expect do
          client.get_access_point(
            account_id: '9999999',
            name: 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'get access point prefixed with account id using endpoint url@us-west-2' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://123456789012.control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"apname", :account_id=>"123456789012", :endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :operation=>"GetAccessPoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true})
        resp = client.get_access_point(
          account_id: '123456789012',
          name: 'apname',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'endpoint url with s3-outposts@us-west-2' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://beta.example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :endpoint=>"https://beta.example.com", :operation=>"GetAccessPoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'https://beta.example.com',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true})
        resp = client.get_access_point(
          name: 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
          account_id: '123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'access point name with a bucket arn@us-west-2' do
      let(:expected) do
        {"error"=>"Expected an outpost type `accesspoint`, found `bucket`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket", :endpoint=>"beta.example.com", :operation=>"GetAccessPoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'bucket arn with access point name@us-west-2' do
      let(:expected) do
        {"error"=>"Invalid ARN: Expected an outpost type `bucket`, found `accesspoint`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :endpoint=>"beta.example.com", :operation=>"GetBucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'create bucket with outposts@us-west-2' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://beta.example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"bucketname", :endpoint=>"https://beta.example.com", :operation=>"CreateBucket", :outpost_id=>"op-123", :region=>"us-west-2", :requires_account_id=>false, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'get bucket with endpoint_url@us-west-2' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://beta.example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket", :endpoint=>"https://beta.example.com", :operation=>"GetBucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_bucket' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'https://beta.example.com',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true})
        resp = client.get_bucket(
          bucket: 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'ListRegionalBucket + OutpostId endpoint url@us-east-2' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://beta.example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:account_id=>"123", :endpoint=>"https://beta.example.com", :operation=>"CreateBucket", :outpost_id=>"op-123", :region=>"us-east-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-east-2',
          endpoint: 'https://beta.example.com',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true})
        resp = client.list_regional_buckets(
          account_id: '123',
          outpost_id: 'op-123',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'ListRegionalBucket + OutpostId + fips + endpoint url@us-east-2' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://beta.example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:account_id=>"123", :endpoint=>"https://beta.example.com", :operation=>"CreateBucket", :outpost_id=>"op-123", :region=>"us-east-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-east-2',
          use_fips_endpoint: true,
          endpoint: 'https://beta.example.com',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true})
        resp = client.list_regional_buckets(
          account_id: '123',
          outpost_id: 'op-123',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'CreateBucket + OutpostId endpoint url@us-east-2' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://beta.example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"blah", :endpoint=>"https://beta.example.com", :operation=>"CreateBucket", :outpost_id=>"123", :region=>"us-east-2", :requires_account_id=>false, :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling create_bucket' do
        client = Client.new(
          region: 'us-east-2',
          use_fips_endpoint: true,
          endpoint: 'https://beta.example.com',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true})
        resp = client.create_bucket(
          bucket: 'blah',
          outpost_id: '123',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'dualstack cannot be used with outposts when an endpoint URL is set@us-west-2.' do
      let(:expected) do
        {"error"=>"Invalid configuration: Outpost Access Points do not support dual-stack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :endpoint=>"https://beta.example.com", :operation=>"GetAccessPoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Dual-stack cannot be used with outposts@us-west-2' do
      let(:expected) do
        {"error"=>"Invalid configuration: Outposts do not support dual-stack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"bucketname", :endpoint=>"https://beta.example.com", :operation=>"CreateBucket", :outpost_id=>"op-123", :region=>"us-west-2", :requires_account_id=>false, :use_dual_stack=>true, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'vanilla bucket arn requires account id@us-west-2' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :name=>"apname"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling create_access_point' do
        client = Client.new(
          region: 'us-west-2',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true})
        resp = client.create_access_point(
          bucket: 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket',
          name: 'apname',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'bucket arn with UseArnRegion = true (arn region supercedes client configured region)@us-west-2' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-west-2", :requires_account_id=>true, :s3_control_use_arn_region=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_bucket' do
        client = Client.new(
          region: 'us-west-2',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true})
        resp = client.get_bucket(
          bucket: 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'bucket ARN in gov partition (non-fips)@us-gov-east-1' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-gov-east-1", :requires_account_id=>true, :s3_control_use_arn_region=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_bucket' do
        client = Client.new(
          region: 'us-gov-east-1',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true})
        resp = client.get_bucket(
          bucket: 'arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'bucket ARN in gov partition with FIPS@us-gov-west-1' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-west-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws-us-gov:s3-outposts:us-gov-west-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-gov-west-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_bucket' do
        client = Client.new(
          region: 'us-gov-west-1',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-west-1", "disableDoubleEncoding"=>true})
        resp = client.get_bucket(
          bucket: 'arn:aws-us-gov:s3-outposts:us-gov-west-1:123456789012:outpost:op-01234567890123456:bucket:mybucket',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'bucket ARN in aws partition with FIPS@us-east-2' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-east-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-east-2:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-east-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_bucket' do
        client = Client.new(
          region: 'us-east-2',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true})
        resp = client.get_bucket(
          bucket: 'arn:aws:s3-outposts:us-east-2:123456789012:outpost:op-01234567890123456:bucket:mybucket',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'Outposts do not support dualstack@us-west-2' do
      let(:expected) do
        {"error"=>"Invalid configuration: Outpost buckets do not support dual-stack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'vanilla bucket arn requires account id@cn-north-1' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"cn-north-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :name=>"apname"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling create_access_point' do
        client = Client.new(
          region: 'cn-north-1',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true})
        resp = client.create_access_point(
          bucket: 'arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:bucket:mybucket',
          name: 'apname',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'bucket arn with UseArnRegion = true (arn region supercedes client configured region)@us-west-2' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-west-2", :requires_account_id=>true, :s3_control_use_arn_region=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_bucket' do
        client = Client.new(
          region: 'us-west-2',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true})
        resp = client.get_bucket(
          bucket: 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'bucket ARN in gov partition (non-fips)@us-gov-east-1' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-gov-east-1", :requires_account_id=>true, :s3_control_use_arn_region=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_bucket' do
        client = Client.new(
          region: 'us-gov-east-1',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true})
        resp = client.get_bucket(
          bucket: 'arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'bucket ARN in gov partition with FIPS@us-gov-west-1' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-west-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws-us-gov:s3-outposts:us-gov-west-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-gov-west-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_bucket' do
        client = Client.new(
          region: 'us-gov-west-1',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-west-1", "disableDoubleEncoding"=>true})
        resp = client.get_bucket(
          bucket: 'arn:aws-us-gov:s3-outposts:us-gov-west-1:123456789012:outpost:op-01234567890123456:bucket:mybucket',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'bucket ARN in aws partition with FIPS@us-east-2' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-east-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-east-2:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-east-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_bucket' do
        client = Client.new(
          region: 'us-east-2',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true})
        resp = client.get_bucket(
          bucket: 'arn:aws:s3-outposts:us-east-2:123456789012:outpost:op-01234567890123456:bucket:mybucket',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'Outposts do not support dualstack@us-west-2' do
      let(:expected) do
        {"error"=>"Invalid configuration: Outpost buckets do not support dual-stack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'vanilla bucket arn requires account id@af-south-1' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.af-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:af-south-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"af-south-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :name=>"apname"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling create_access_point' do
        client = Client.new(
          region: 'af-south-1',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true})
        resp = client.create_access_point(
          bucket: 'arn:aws:s3-outposts:af-south-1:123456789012:outpost:op-01234567890123456:bucket:mybucket',
          name: 'apname',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'bucket arn with UseArnRegion = true (arn region supercedes client configured region)@us-west-2' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-west-2", :requires_account_id=>true, :s3_control_use_arn_region=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_bucket' do
        client = Client.new(
          region: 'us-west-2',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true})
        resp = client.get_bucket(
          bucket: 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'bucket ARN in gov partition (non-fips)@us-gov-east-1' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-gov-east-1", :requires_account_id=>true, :s3_control_use_arn_region=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_bucket' do
        client = Client.new(
          region: 'us-gov-east-1',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true})
        resp = client.get_bucket(
          bucket: 'arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'bucket ARN in gov partition with FIPS@us-gov-west-1' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-west-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws-us-gov:s3-outposts:us-gov-west-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-gov-west-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_bucket' do
        client = Client.new(
          region: 'us-gov-west-1',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-west-1", "disableDoubleEncoding"=>true})
        resp = client.get_bucket(
          bucket: 'arn:aws-us-gov:s3-outposts:us-gov-west-1:123456789012:outpost:op-01234567890123456:bucket:mybucket',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'bucket ARN in aws partition with FIPS@us-east-2' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-east-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-east-2:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-east-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_bucket' do
        client = Client.new(
          region: 'us-east-2',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true})
        resp = client.get_bucket(
          bucket: 'arn:aws:s3-outposts:us-east-2:123456789012:outpost:op-01234567890123456:bucket:mybucket',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'Outposts do not support dualstack@us-west-2' do
      let(:expected) do
        {"error"=>"Invalid configuration: Outpost buckets do not support dual-stack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Invalid ARN: missing outpost id and bucket@us-west-2' do
      let(:expected) do
        {"error"=>"Invalid ARN: The Outpost Id was not set"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Invalid ARN: missing bucket@us-west-2' do
      let(:expected) do
        {"error"=>"Invalid ARN: Expected a 4-component resource"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Invalid ARN: missing outpost and bucket ids@us-west-2' do
      let(:expected) do
        {"error"=>"Invalid ARN: Expected a 4-component resource"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:bucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Invalid ARN: missing bucket id@us-west-2' do
      let(:expected) do
        {"error"=>"Invalid ARN: expected a bucket name"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'account id inserted into hostname@us-west-2' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://1234567890.s3-control.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:account_id=>"1234567890", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'account id prefix with dualstack@us-east-1' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://1234567890.s3-control.dualstack.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:account_id=>"1234567890", :region=>"us-east-1", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'account id prefix with fips@us-east-1' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://1234567890.s3-control-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:account_id=>"1234567890", :region=>"us-east-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'custom account id prefix with fips@us-east-1' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://1234567890-aBC.s3-control-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:account_id=>"1234567890-aBC", :region=>"us-east-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'standard url @ us-east-1' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-control.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-east-1',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true})
        resp = client.list_regional_buckets(
          account_id: '0123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'fips url @ us-east-1' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-control-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true})
        resp = client.list_regional_buckets(
          account_id: '0123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'dualstack url @ us-east-1' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-control.dualstack.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-1", :use_dual_stack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-east-1',
          use_dualstack_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true})
        resp = client.list_regional_buckets(
          account_id: '0123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'fips,dualstack url @ us-east-1' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-control-fips.dualstack.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-1", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true})
        resp = client.list_regional_buckets(
          account_id: '0123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'standard url @ cn-north-1' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-control.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'cn-north-1',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true})
        resp = client.list_regional_buckets(
          account_id: '0123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'fips @ cn-north-1' do
      let(:expected) do
        {"error"=>"Partition does not support FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"cn-north-1", :use_dual_stack=>true, :use_fips=>true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'custom account id prefix @us-east-1' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://1234567890-aBC.s3-control.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:account_id=>"1234567890-aBC", :region=>"us-east-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-east-1',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true})
        resp = client.list_regional_buckets(
          account_id: '1234567890-aBC',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'invalid account id prefix @us-east-1' do
      let(:expected) do
        {"error"=>"AccountId must only contain a-z, A-Z, 0-9 and `-`."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:account_id=>"/?invalid&not-host*label", :region=>"us-east-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-east-1',
          stub_responses: true
        )
        expect do
          client.list_regional_buckets(
            account_id: '/?invalid&not-host*label',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'custom account id prefix with fips@us-east-1' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://1234567890-aBC.s3-control-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:account_id=>"1234567890-aBC", :region=>"us-east-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true})
        resp = client.list_regional_buckets(
          account_id: '1234567890-aBC',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'custom account id prefix with dualstack,fips@us-east-1' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://1234567890-aBC.s3-control-fips.dualstack.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:account_id=>"1234567890-aBC", :region=>"us-east-1", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          use_dualstack_endpoint: true,
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true})
        resp = client.list_regional_buckets(
          account_id: '1234567890-aBC',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'custom account id with custom endpoint' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://1234567890-aBC.example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:account_id=>"1234567890-aBC", :region=>"us-east-1", :requires_account_id=>true, :endpoint=>"https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-east-1',
          endpoint: 'https://example.com',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true})
        resp = client.list_regional_buckets(
          account_id: '1234567890-aBC',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'RequiresAccountId with AccountId unset' do
      let(:expected) do
        {"error"=>"AccountId is required but not set"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-1", :requires_account_id=>true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'RequiresAccountId with AccountId unset and custom endpoint' do
      let(:expected) do
        {"error"=>"AccountId is required but not set"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-1", :endpoint=>"https://beta.example.com", :requires_account_id=>true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'RequiresAccountId with invalid AccountId and custom endpoint' do
      let(:expected) do
        {"error"=>"AccountId must only contain a-z, A-Z, 0-9 and `-`."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-1", :endpoint=>"https://beta.example.com", :account_id=>"/?invalid&not-host*label", :requires_account_id=>true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-east-1',
          endpoint: 'https://beta.example.com',
          stub_responses: true
        )
        expect do
          client.list_regional_buckets(
            account_id: '/?invalid&not-host*label',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'account id with custom endpoint, fips and dualstack' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://1234567890-aBC.example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:account_id=>"1234567890-aBC", :region=>"us-east-1", :requires_account_id=>true, :endpoint=>"https://example.com", :use_fips=>true, :use_dualstack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          endpoint: 'https://example.com',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true})
        resp = client.list_regional_buckets(
          account_id: '1234567890-aBC',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'custom endpoint, fips and dualstack' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-1", :endpoint=>"https://example.com", :use_fips=>true, :use_dualstack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          endpoint: 'https://example.com',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true})
        resp = client.list_regional_buckets(
          account_id: '0123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'custom endpoint, fips' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-1", :endpoint=>"https://example.com", :use_fips=>true, :use_dualstack=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-east-1',
          use_fips_endpoint: true,
          endpoint: 'https://example.com',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true})
        resp = client.list_regional_buckets(
          account_id: '0123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'custom endpoint, dualstack' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-1", :endpoint=>"https://example.com", :use_fips=>false, :use_dualstack=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-east-1',
          endpoint: 'https://example.com',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true})
        resp = client.list_regional_buckets(
          account_id: '0123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'region not set' do
      let(:expected) do
        {"error"=>"Region must be set"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'invalid partition' do
      let(:expected) do
        {"error"=>"Invalid region: region was not a valid DNS name."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"invalid-region 42"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'ListRegionalBuckets + OutpostId without accountId set.' do
      let(:expected) do
        {"error"=>"AccountId is required but not set"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:operation=>"ListRegionalBuckets", :outpost_id=>"op-123", :region=>"us-east-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'ListRegionalBuckets + OutpostId with invalid accountId set.' do
      let(:expected) do
        {"error"=>"AccountId must only contain a-z, A-Z, 0-9 and `-`."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:account_id=>"/?invalid&not-host*label", :operation=>"ListRegionalBuckets", :outpost_id=>"op-123", :region=>"us-east-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-east-2',
          stub_responses: true
        )
        expect do
          client.list_regional_buckets(
            outpost_id: 'op-123',
            account_id: '/?invalid&not-host*label',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'accesspoint set but missing accountId' do
      let(:expected) do
        {"error"=>"AccountId is required but not set"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"myaccesspoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'outpost accesspoint ARN with missing accountId' do
      let(:expected) do
        {"error"=>"Invalid ARN: missing account ID"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2::outpost:op-01234567890123456:outpost:op1", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'bucket ARN with missing accountId' do
      let(:expected) do
        {"error"=>"Invalid ARN: missing account ID"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2::outpost:op-01234567890123456:bucket:mybucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'endpoint url with accesspoint (non-arn)' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://123456789012.beta.example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"apname", :endpoint=>"https://beta.example.com", :account_id=>"123456789012", :operation=>"GetAccessPoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'https://beta.example.com',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true})
        resp = client.get_access_point(
          name: 'apname',
          account_id: '123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
      end
    end

    context 'access point name with an accesspoint arn@us-west-2' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://beta.example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :endpoint=>"https://beta.example.com", :operation=>"GetAccessPoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Dualstack + Custom endpoint is not supported(non-arn)' do
      let(:expected) do
        {"error"=>"Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"apname", :endpoint=>"https://beta.example.com", :account_id=>"123456789012", :operation=>"GetAccessPoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'us-west-2',
          use_dualstack_endpoint: true,
          endpoint: 'https://beta.example.com',
          stub_responses: true
        )
        expect do
          client.get_access_point(
            name: 'apname',
            account_id: '123456789012',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'get bucket with endpoint_url and dualstack is not supported@us-west-2' do
      let(:expected) do
        {"error"=>"Invalid configuration: Outpost buckets do not support dual-stack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket", :endpoint=>"https://beta.example.com", :operation=>"GetBucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_bucket' do
        client = Client.new(
          region: 'us-west-2',
          use_dualstack_endpoint: true,
          endpoint: 'https://beta.example.com',
          stub_responses: true
        )
        expect do
          client.get_bucket(
            bucket: 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'ListRegionalBuckets + OutpostId with fips in CN.' do
      let(:expected) do
        {"error"=>"Partition does not support FIPS"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:account_id=>"0123456789012", :operation=>"ListRegionalBuckets", :outpost_id=>"op-123", :region=>"cn-north-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'cn-north-1',
          use_fips_endpoint: true,
          stub_responses: true
        )
        expect do
          client.list_regional_buckets(
            outpost_id: 'op-123',
            account_id: '0123456789012',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'ListRegionalBuckets + invalid OutpostId.' do
      let(:expected) do
        {"error"=>"OutpostId must only contain a-z, A-Z, 0-9 and `-`."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:account_id=>"0123456789012", :operation=>"ListRegionalBuckets", :outpost_id=>"?outpost/invalid+", :region=>"us-west-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling list_regional_buckets' do
        client = Client.new(
          region: 'us-west-1',
          stub_responses: true
        )
        expect do
          client.list_regional_buckets(
            outpost_id: '?outpost/invalid+',
            account_id: '0123456789012',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'bucket ARN with mismatched accountId' do
      let(:expected) do
        {"error"=>"Invalid ARN: the accountId specified in the ARN (`999999`) does not match the parameter (`0123456789012`)"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:999999:outpost:op-01234567890123456:bucket:mybucket", :account_id=>"0123456789012", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'OutpostId with invalid region' do
      let(:expected) do
        {"error"=>"Invalid region: region was not a valid DNS name."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:operation=>"ListRegionalBuckets", :outpost_id=>"op-123", :region=>"invalid-region 42", :account_id=>"0123456", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'OutpostId with RequireAccountId unset' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:operation=>"ListRegionalBuckets", :outpost_id=>"op-123", :region=>"us-west-2", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Outpost Accesspoint ARN with arn region and client region mismatch with UseArnRegion=false' do
      let(:expected) do
        {"error"=>"Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"us-west-2", :requires_account_id=>true, :use_arn_region=>false, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'us-west-2',
          s3_use_arn_region: false,
          stub_responses: true
        )
        expect do
          client.get_access_point(
            name: 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
            account_id: '123456789012',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling delete_access_point' do
        client = Client.new(
          region: 'us-west-2',
          s3_use_arn_region: false,
          stub_responses: true
        )
        expect do
          client.delete_access_point(
            name: 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Outpost Bucket ARN with arn region and client region mismatch with UseArnRegion=false' do
      let(:expected) do
        {"error"=>"Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :endpoint=>"https://beta.example.com", :operation=>"GetBucket", :region=>"us-west-2", :requires_account_id=>true, :use_arn_region=>false, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_bucket' do
        client = Client.new(
          region: 'us-west-2',
          endpoint: 'https://beta.example.com',
          s3_use_arn_region: false,
          stub_responses: true
        )
        expect do
          client.get_bucket(
            bucket: 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Accesspoint ARN with region mismatch and UseArnRegion unset' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'us-west-2',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true})
        resp = client.get_access_point(
          name: 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
          account_id: '123456789012',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end

      it 'produces the correct output from the client when calling delete_access_point' do
        client = Client.new(
          region: 'us-west-2',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true})
        resp = client.delete_access_point(
          name: 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'Bucket ARN with region mismatch and UseArnRegion unset' do
      let(:expected) do
        {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end

      it 'produces the correct output from the client when calling get_bucket' do
        client = Client.new(
          region: 'us-west-2',
          stub_responses: true
        )
        expect_auth({"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true})
        resp = client.get_bucket(
          bucket: 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket',
        )
        expected_uri = URI.parse(expected['endpoint']['url'])
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.host)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.scheme)
        expect(resp.context.http_request.endpoint.to_s).to include(expected_uri.path)
        expect(resp.context.http_request.headers['x-amz-account-id']).to eq('123456789012')
        expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq('op-01234567890123456')
      end
    end

    context 'Outpost Bucket ARN with partition mismatch with UseArnRegion=true' do
      let(:expected) do
        {"error"=>"Client was configured for partition `aws` but ARN has `aws-cn`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :operation=>"GetBucket", :region=>"us-west-2", :requires_account_id=>true, :use_arn_region=>true, :use_dual_stack=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_bucket' do
        client = Client.new(
          region: 'us-west-2',
          s3_use_arn_region: true,
          stub_responses: true
        )
        expect do
          client.get_bucket(
            bucket: 'arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:bucket:mybucket',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Accesspoint ARN with partition mismatch and UseArnRegion=true' do
      let(:expected) do
        {"error"=>"Client was configured for partition `aws` but ARN has `aws-cn`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_arn_region=>true, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling get_access_point' do
        client = Client.new(
          region: 'us-west-2',
          s3_use_arn_region: true,
          stub_responses: true
        )
        expect do
          client.get_access_point(
            name: 'arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
            account_id: '123456789012',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end

      it 'produces the correct output from the client when calling delete_access_point' do
        client = Client.new(
          region: 'us-west-2',
          s3_use_arn_region: true,
          stub_responses: true
        )
        expect do
          client.delete_access_point(
            name: 'arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint',
          )
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Accesspoint ARN with region mismatch, UseArnRegion=false and custom endpoint' do
      let(:expected) do
        {"error"=>"Invalid configuration: region from ARN `cn-north-1` does not match client region `us-west-2` and UseArnRegion is `false`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"us-west-2", :endpoint=>"https://example.com", :requires_account_id=>true, :use_dual_stack=>false, :use_arn_region=>false, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

  end
end
