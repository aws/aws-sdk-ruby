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

    # TODO: operation inputs

    it 'Vanilla outposts without ARN region + access point ARN@us-west-2' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"us-west-2", :requires_account_id=>true, :s3_control_use_arn_region=>false, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'Vanilla outposts with ARN region + access point ARN@us-west-2' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"us-west-2", :requires_account_id=>true, :s3_control_use_arn_region=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'accept an access point ARN@us-west-2' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'vanilla outposts china@cn-north-1' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.cn-north-1.amazonaws.com.cn"}}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"cn-north-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'gov region@us-west-2' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'gov cloud with fips@us-west-2' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'govcloud with fips + arn region@us-gov-west-1' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-gov-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"us-gov-west-1", :requires_account_id=>true, :s3_control_use_arn_region=>true, :use_dual_stack=>false, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'gov region@cn-north-1' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.cn-north-1.amazonaws.com.cn"}}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"cn-north-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'gov cloud with fips@cn-north-1' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.cn-north-1.amazonaws.com.cn"}}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"cn-north-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'govcloud with fips + arn region@us-gov-west-1' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-gov-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"us-gov-west-1", :requires_account_id=>true, :s3_control_use_arn_region=>true, :use_dual_stack=>false, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'gov region@af-south-1' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.af-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:af-south-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"af-south-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'gov cloud with fips@af-south-1' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.af-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:af-south-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"af-south-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'govcloud with fips + arn region@us-gov-west-1' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-gov-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"us-gov-west-1", :requires_account_id=>true, :s3_control_use_arn_region=>true, :use_dual_stack=>false, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'CreateBucket + OutpostId = outposts endpoint@us-east-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-east-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:bucket=>"blah", :operation=>"CreateBucket", :outpost_id=>"123", :region=>"us-east-2", :requires_account_id=>false, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'CreateBucket + OutpostId with fips = outposts endpoint@us-east-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-east-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:bucket=>"blah", :operation=>"CreateBucket", :outpost_id=>"123", :region=>"us-east-2", :requires_account_id=>false, :use_dual_stack=>false, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'CreateBucket without OutpostId = regular endpoint@us-east-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-control.us-east-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:bucket=>"blah", :operation=>"CreateBucket", :region=>"us-east-2", :requires_account_id=>false, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'ListRegionalBuckets + OutpostId = outposts endpoint@us-east-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-east-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:account_id=>"123", :operation=>"ListRegionalBuckets", :outpost_id=>"op-123", :region=>"us-east-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'ListRegionalBuckets without OutpostId = regular endpoint@us-east-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://123.s3-control.us-east-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:account_id=>"123", :operation=>"ListRegionalBuckets", :region=>"us-east-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'ListRegionalBucket + OutpostId with fips = outposts endpoint@us-east-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-east-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:account_id=>"123", :operation=>"CreateBucket", :outpost_id=>"op-123", :region=>"us-east-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'outpost access points do not support dualstack@us-west-2' do
      expect = {"error"=>"Invalid configuration: Outpost Access Points do not support dual-stack"}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'outpost access points do not support dualstack@cn-north-1' do
      expect = {"error"=>"Invalid configuration: Outpost Access Points do not support dual-stack"}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"cn-north-1", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'outpost access points do not support dualstack@af-south-1' do
      expect = {"error"=>"Invalid configuration: Outpost Access Points do not support dual-stack"}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"af-south-1", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'invalid ARN: must be include outpost ID@us-west-2' do
      expect = {"error"=>"Invalid ARN: The Outpost Id was not set"}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'invalid ARN: must specify access point@us-west-2' do
      expect = {"error"=>"Invalid ARN: Expected a 4-component resource"}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'invalid ARN@us-west-2' do
      expect = {"error"=>"Invalid ARN: Expected a 4-component resource"}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:myaccesspoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'when set, AccountId drives AP construction@us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://myid-1234.s3-control.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:access_point_name=>"myaccesspoint", :account_id=>"myid-1234", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'Account ID set inline &amp; in ARN but they both match@us-west-2' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"123456789012", :region=>"us-west-2", :requires_account_id=>true, :s3_control_use_arn_region=>false, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'Account ID set inline &amp; in ARN and they do not match@us-west-2' do
      expect = {"error"=>"Invalid ARN: the accountId specified in the ARN (`123456789012`) does not match the parameter (`9999999`)"}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :account_id=>"9999999", :region=>"us-west-2", :requires_account_id=>true, :s3_control_use_arn_region=>false, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'get access point prefixed with account id using endpoint url@us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://123456789012.control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"}}
      params = EndpointParameters.new(**{:access_point_name=>"apname", :account_id=>"123456789012", :endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :operation=>"GetAccessPoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'endpoint url with s3-outposts@us-west-2' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://beta.example.com"}}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :endpoint=>"https://beta.example.com", :operation=>"GetAccessPoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'access point name with a bucket arn@us-west-2' do
      expect = {"error"=>"Expected an outpost type `accesspoint`, found `bucket`"}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket", :endpoint=>"beta.example.com", :operation=>"GetAccessPoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'bucket arn with access point name@us-west-2' do
      expect = {"error"=>"Invalid ARN: Expected an outpost type `bucket`, found `accesspoint`"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :endpoint=>"beta.example.com", :operation=>"GetBucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'create bucket with outposts@us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://beta.example.com"}}
      params = EndpointParameters.new(**{:bucket=>"bucketname", :endpoint=>"https://beta.example.com", :operation=>"CreateBucket", :outpost_id=>"op-123", :region=>"us-west-2", :requires_account_id=>false, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'get bucket with endpoint_url@us-west-2' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://beta.example.com"}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket", :endpoint=>"https://beta.example.com", :operation=>"GetBucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'ListRegionalBucket + OutpostId endpoint url@us-east-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://beta.example.com"}}
      params = EndpointParameters.new(**{:account_id=>"123", :endpoint=>"https://beta.example.com", :operation=>"CreateBucket", :outpost_id=>"op-123", :region=>"us-east-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'ListRegionalBucket + OutpostId + fips + endpoint url@us-east-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://beta.example.com"}}
      params = EndpointParameters.new(**{:account_id=>"123", :endpoint=>"https://beta.example.com", :operation=>"CreateBucket", :outpost_id=>"op-123", :region=>"us-east-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'CreateBucket + OutpostId endpoint url@us-east-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://beta.example.com"}}
      params = EndpointParameters.new(**{:bucket=>"blah", :endpoint=>"https://beta.example.com", :operation=>"CreateBucket", :outpost_id=>"123", :region=>"us-east-2", :requires_account_id=>false, :use_dual_stack=>false, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'dualstack cannot be used with outposts when an endpoint URL is set@us-west-2.' do
      expect = {"error"=>"Invalid configuration: Outpost Access Points do not support dual-stack"}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :endpoint=>"https://beta.example.com", :operation=>"GetAccessPoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Dual-stack cannot be used with outposts@us-west-2' do
      expect = {"error"=>"Invalid configuration: Outposts do not support dual-stack"}
      params = EndpointParameters.new(**{:bucket=>"bucketname", :endpoint=>"https://beta.example.com", :operation=>"CreateBucket", :outpost_id=>"op-123", :region=>"us-west-2", :requires_account_id=>false, :use_dual_stack=>true, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'vanilla bucket arn requires account id@us-west-2' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :name=>"apname"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'bucket arn with UseArnRegion = true (arn region supercedes client configured region)@us-west-2' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-west-2", :requires_account_id=>true, :s3_control_use_arn_region=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'bucket ARN in gov partition (non-fips)@us-gov-east-1' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-gov-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-gov-east-1", :requires_account_id=>true, :s3_control_use_arn_region=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'bucket ARN in gov partition with FIPS@us-gov-west-1' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-west-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-gov-west-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws-us-gov:s3-outposts:us-gov-west-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-gov-west-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'bucket ARN in aws partition with FIPS@us-east-2' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-east-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-east-2:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-east-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'Outposts do not support dualstack@us-west-2' do
      expect = {"error"=>"Invalid configuration: Outpost buckets do not support dual-stack"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'vanilla bucket arn requires account id@cn-north-1' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.cn-north-1.amazonaws.com.cn"}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"cn-north-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :name=>"apname"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'bucket arn with UseArnRegion = true (arn region supercedes client configured region)@us-west-2' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-west-2", :requires_account_id=>true, :s3_control_use_arn_region=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'bucket ARN in gov partition (non-fips)@us-gov-east-1' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-gov-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-gov-east-1", :requires_account_id=>true, :s3_control_use_arn_region=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'bucket ARN in gov partition with FIPS@us-gov-west-1' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-west-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-gov-west-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws-us-gov:s3-outposts:us-gov-west-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-gov-west-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'bucket ARN in aws partition with FIPS@us-east-2' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-east-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-east-2:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-east-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'Outposts do not support dualstack@us-west-2' do
      expect = {"error"=>"Invalid configuration: Outpost buckets do not support dual-stack"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'vanilla bucket arn requires account id@af-south-1' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.af-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:af-south-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"af-south-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :name=>"apname"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'bucket arn with UseArnRegion = true (arn region supercedes client configured region)@us-west-2' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-west-2", :requires_account_id=>true, :s3_control_use_arn_region=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'bucket ARN in gov partition (non-fips)@us-gov-east-1' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-gov-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-gov-east-1", :requires_account_id=>true, :s3_control_use_arn_region=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'bucket ARN in gov partition with FIPS@us-gov-west-1' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-gov-west-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-gov-west-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws-us-gov:s3-outposts:us-gov-west-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-gov-west-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'bucket ARN in aws partition with FIPS@us-east-2' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts-fips.us-east-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-east-2:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-east-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'Outposts do not support dualstack@us-west-2' do
      expect = {"error"=>"Invalid configuration: Outpost buckets do not support dual-stack"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Invalid ARN: missing outpost id and bucket@us-west-2' do
      expect = {"error"=>"Invalid ARN: The Outpost Id was not set"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Invalid ARN: missing bucket@us-west-2' do
      expect = {"error"=>"Invalid ARN: Expected a 4-component resource"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Invalid ARN: missing outpost and bucket ids@us-west-2' do
      expect = {"error"=>"Invalid ARN: Expected a 4-component resource"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:bucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Invalid ARN: missing bucket id@us-west-2' do
      expect = {"error"=>"Invalid ARN: expected a bucket name"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'account id inserted into hostname@us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://1234567890.s3-control.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:account_id=>"1234567890", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'account id prefix with dualstack@us-east-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://1234567890.s3-control.dualstack.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:account_id=>"1234567890", :region=>"us-east-1", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'account id prefix with fips@us-east-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://1234567890.s3-control-fips.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:account_id=>"1234567890", :region=>"us-east-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'custom account id prefix with fips@us-east-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://1234567890-aBC.s3-control-fips.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:account_id=>"1234567890-aBC", :region=>"us-east-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'standard url @ us-east-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-control.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'fips url @ us-east-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-control-fips.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'dualstack url @ us-east-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-control.dualstack.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'fips,dualstack url @ us-east-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-control-fips.dualstack.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_dual_stack=>true, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'standard url @ cn-north-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-control.cn-north-1.amazonaws.com.cn"}}
      params = EndpointParameters.new(**{:region=>"cn-north-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'fips @ cn-north-1' do
      expect = {"error"=>"Partition does not support FIPS"}
      params = EndpointParameters.new(**{:region=>"cn-north-1", :use_dual_stack=>true, :use_fips=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'custom account id prefix @us-east-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://1234567890-aBC.s3-control.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:account_id=>"1234567890-aBC", :region=>"us-east-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'invalid account id prefix @us-east-1' do
      expect = {"error"=>"AccountId must only contain a-z, A-Z, 0-9 and `-`."}
      params = EndpointParameters.new(**{:account_id=>"/?invalid&not-host*label", :region=>"us-east-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'custom account id prefix with fips@us-east-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://1234567890-aBC.s3-control-fips.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:account_id=>"1234567890-aBC", :region=>"us-east-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'custom account id prefix with dualstack,fips@us-east-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://1234567890-aBC.s3-control-fips.dualstack.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:account_id=>"1234567890-aBC", :region=>"us-east-1", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'custom account id with custom endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://1234567890-aBC.example.com"}}
      params = EndpointParameters.new(**{:account_id=>"1234567890-aBC", :region=>"us-east-1", :requires_account_id=>true, :endpoint=>"https://example.com"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'RequiresAccountId with AccountId unset' do
      expect = {"error"=>"AccountId is required but not set"}
      params = EndpointParameters.new(**{:region=>"us-east-1", :requires_account_id=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'RequiresAccountId with AccountId unset and custom endpoint' do
      expect = {"error"=>"AccountId is required but not set"}
      params = EndpointParameters.new(**{:region=>"us-east-1", :endpoint=>"https://beta.example.com", :requires_account_id=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'RequiresAccountId with invalid AccountId and custom endpoint' do
      expect = {"error"=>"AccountId must only contain a-z, A-Z, 0-9 and `-`."}
      params = EndpointParameters.new(**{:region=>"us-east-1", :endpoint=>"https://beta.example.com", :account_id=>"/?invalid&not-host*label", :requires_account_id=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'account id with custom endpoint, fips and dualstack' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://1234567890-aBC.example.com"}}
      params = EndpointParameters.new(**{:account_id=>"1234567890-aBC", :region=>"us-east-1", :requires_account_id=>true, :endpoint=>"https://example.com", :use_fips=>true, :use_dualstack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'custom endpoint, fips and dualstack' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://example.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :endpoint=>"https://example.com", :use_fips=>true, :use_dualstack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'custom endpoint, fips' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://example.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :endpoint=>"https://example.com", :use_fips=>true, :use_dualstack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'custom endpoint, dualstack' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://example.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :endpoint=>"https://example.com", :use_fips=>false, :use_dualstack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'region not set' do
      expect = {"error"=>"Region must be set"}
      params = EndpointParameters.new(**{})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'invalid partition' do
      expect = {"error"=>"Invalid region: region was not a valid DNS name."}
      params = EndpointParameters.new(**{:region=>"invalid-region 42"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'ListRegionalBuckets + OutpostId without accountId set.' do
      expect = {"error"=>"AccountId is required but not set"}
      params = EndpointParameters.new(**{:operation=>"ListRegionalBuckets", :outpost_id=>"op-123", :region=>"us-east-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'ListRegionalBuckets + OutpostId with invalid accountId set.' do
      expect = {"error"=>"AccountId must only contain a-z, A-Z, 0-9 and `-`."}
      params = EndpointParameters.new(**{:account_id=>"/?invalid&not-host*label", :operation=>"ListRegionalBuckets", :outpost_id=>"op-123", :region=>"us-east-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'accesspoint set but missing accountId' do
      expect = {"error"=>"AccountId is required but not set"}
      params = EndpointParameters.new(**{:access_point_name=>"myaccesspoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'outpost accesspoint ARN with missing accountId' do
      expect = {"error"=>"Invalid ARN: missing account ID"}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2::outpost:op-01234567890123456:outpost:op1", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'bucket ARN with missing accountId' do
      expect = {"error"=>"Invalid ARN: missing account ID"}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2::outpost:op-01234567890123456:bucket:mybucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'endpoint url with accesspoint (non-arn)' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://123456789012.beta.example.com"}}
      params = EndpointParameters.new(**{:access_point_name=>"apname", :endpoint=>"https://beta.example.com", :account_id=>"123456789012", :operation=>"GetAccessPoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'access point name with an accesspoint arn@us-west-2' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://beta.example.com"}}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :endpoint=>"https://beta.example.com", :operation=>"GetAccessPoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'Dualstack + Custom endpoint is not supported(non-arn)' do
      expect = {"error"=>"Invalid Configuration: Dualstack and custom endpoint are not supported"}
      params = EndpointParameters.new(**{:access_point_name=>"apname", :endpoint=>"https://beta.example.com", :account_id=>"123456789012", :operation=>"GetAccessPoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'get bucket with endpoint_url and dualstack is not supported@us-west-2' do
      expect = {"error"=>"Invalid configuration: Outpost buckets do not support dual-stack"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket", :endpoint=>"https://beta.example.com", :operation=>"GetBucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'ListRegionalBuckets + OutpostId with fips in CN.' do
      expect = {"error"=>"Partition does not support FIPS"}
      params = EndpointParameters.new(**{:account_id=>"0123456789012", :operation=>"ListRegionalBuckets", :outpost_id=>"op-123", :region=>"cn-north-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'ListRegionalBuckets + invalid OutpostId.' do
      expect = {"error"=>"OutpostId must only contain a-z, A-Z, 0-9 and `-`."}
      params = EndpointParameters.new(**{:account_id=>"0123456789012", :operation=>"ListRegionalBuckets", :outpost_id=>"?outpost/invalid+", :region=>"us-west-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'bucket ARN with mismatched accountId' do
      expect = {"error"=>"Invalid ARN: the accountId specified in the ARN (`999999`) does not match the parameter (`0123456789012`)"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:999999:outpost:op-01234567890123456:bucket:mybucket", :account_id=>"0123456789012", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'OutpostId with invalid region' do
      expect = {"error"=>"Invalid region: region was not a valid DNS name."}
      params = EndpointParameters.new(**{:operation=>"ListRegionalBuckets", :outpost_id=>"op-123", :region=>"invalid-region 42", :account_id=>"0123456", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'OutpostId with RequireAccountId unset' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:operation=>"ListRegionalBuckets", :outpost_id=>"op-123", :region=>"us-west-2", :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'Outpost Accesspoint ARN with arn region and client region mismatch with UseArnRegion=false' do
      expect = {"error"=>"Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`"}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"us-west-2", :requires_account_id=>true, :use_arn_region=>false, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Outpost Bucket ARN with arn region and client region mismatch with UseArnRegion=false' do
      expect = {"error"=>"Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :endpoint=>"https://beta.example.com", :operation=>"GetBucket", :region=>"us-west-2", :requires_account_id=>true, :use_arn_region=>false, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Accesspoint ARN with region mismatch and UseArnRegion unset' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'Bucket ARN with region mismatch and UseArnRegion unset' do
      expect = {"endpoint"=>{"headers"=>{"x-amz-account-id"=>["123456789012"], "x-amz-outpost-id"=>["op-01234567890123456"]}, "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-outposts.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'Outpost Bucket ARN with partition mismatch with UseArnRegion=true' do
      expect = {"error"=>"Client was configured for partition `aws` but ARN has `aws-cn`"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:bucket:mybucket", :operation=>"GetBucket", :region=>"us-west-2", :requires_account_id=>true, :use_arn_region=>true, :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Accesspoint ARN with partition mismatch and UseArnRegion=true' do
      expect = {"error"=>"Client was configured for partition `aws` but ARN has `aws-cn`"}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_arn_region=>true, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Accesspoint ARN with region mismatch, UseArnRegion=false and custom endpoint' do
      expect = {"error"=>"Invalid configuration: region from ARN `cn-north-1` does not match client region `us-west-2` and UseArnRegion is `false`"}
      params = EndpointParameters.new(**{:access_point_name=>"arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :region=>"us-west-2", :endpoint=>"https://example.com", :requires_account_id=>true, :use_dual_stack=>false, :use_arn_region=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

  end
end
