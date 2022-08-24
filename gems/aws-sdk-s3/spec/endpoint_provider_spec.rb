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

    # TODO: operation inputs

    it 'region is not a valid DNS-suffix' do
      expect = {"error"=>"A valid partition could not be determined"}
      params = EndpointParameters.new(**{:use_fips=>false, :use_dual_stack=>false, :region=>"a b", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'Invalid access point ARN: Not S3' do
      expect = {"error"=>"Invalid ARN: The ARN was not for the S3 service, found: not-s3"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:not-s3:us-west-2:123456789012:accesspoint:myendpoint", :use_fips=>false, :use_dual_stack=>false, :region=>"us-east-1", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'Invalid access point ARN: invalid resource' do
      expect = {"error"=>"Invalid ARN: The ARN may only contain a single resource component after `accesspoint`."}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint:more-data", :use_fips=>false, :use_dual_stack=>false, :region=>"us-east-1", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'Invalid access point ARN: invalid no ap name' do
      expect = {"error"=>"Invalid ARN: Expected a resource of the format `accesspoint:<accesspoint name>` but no name was provided"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:", :use_fips=>false, :use_dual_stack=>false, :region=>"us-east-1", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'Invalid access point ARN: AccountId is invalid' do
      expect = {"error"=>"Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `123456_789012`"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3:us-west-2:123456_789012:accesspoint:apname", :use_fips=>false, :use_dual_stack=>false, :region=>"us-east-1", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'Invalid access point ARN: access point name is invalid' do
      expect = {"error"=>"Invalid ARN: The access point name may only contain a-z, A-Z, 0-9 and `-`. Found: `ap_name`"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:ap_name", :use_fips=>false, :use_dual_stack=>false, :region=>"us-east-1", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'Access points (disable access points explicitly false)' do
      expect = {"endpoint"=>{"url"=>"https://myendpoint-123456789012.s3-accesspoint.us-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", :use_fips=>false, :use_dual_stack=>false, :disable_access_points=>false, :region=>"us-east-1", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'Access points: partition does not support FIPS' do
      expect = {"error"=>"Partition does not support FIPS"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3:cn-north-1:123456789012:accesspoint:myendpoint", :use_fips=>true, :use_dual_stack=>false, :region=>"cn-north-1", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'Bucket region is invalid' do
      expect = {"error"=>"Could not load partition for ARN region `us-west -2`"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3:us-west -2:123456789012:accesspoint:myendpoint", :use_fips=>false, :use_dual_stack=>false, :disable_access_points=>false, :region=>"us-east-1", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'Access points when Access points explicitly disabled (used for CreateBucket)' do
      expect = {"error"=>"Access points are not supported for this operation"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", :use_fips=>false, :use_dual_stack=>false, :disable_access_points=>true, :region=>"us-east-1", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'S3 outposts vanilla test' do
      expect = {"endpoint"=>{"url"=>"https://reports-123456789012.op-01234567890123456.s3-outposts.us-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports", :use_fips=>false, :use_dual_stack=>false, :region=>"us-west-2", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'S3 outposts vanilla test (disable access points explicitly set)' do
      expect = {"endpoint"=>{"url"=>"https://reports-123456789012.op-01234567890123456.s3-outposts.us-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports", :use_fips=>false, :use_dual_stack=>false, :region=>"us-west-2", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'S3 outposts does not support dualstack' do
      expect = {"error"=>"S3 Outposts does not support Dual-stack"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports", :use_fips=>false, :use_dual_stack=>true, :region=>"us-east-1", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'S3 outposts does not support fips' do
      expect = {"error"=>"S3 Outposts does not support FIPS"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports", :use_fips=>true, :use_dual_stack=>false, :region=>"us-east-1", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'S3 outposts does not support accelerate' do
      expect = {"error"=>"S3 Outposts does not support S3 Accelerate"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports", :use_fips=>false, :use_dual_stack=>false, :region=>"us-east-1", :accelerate=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'missing arn type' do
      expect = {"error"=>"Invalid ARN: `arn:aws:s3:us-west-2:123456789012:` was not a valid ARN"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3:us-west-2:123456789012:", :use_fips=>false, :use_dual_stack=>false, :disable_access_points=>true, :region=>"us-east-1", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'SDK::Host + access point + Dualstack is an error' do
      expect = {"error"=>"DualStack cannot be combined with a Host override (PrivateLink)"}
      params = EndpointParameters.new(**{:endpoint=>"https://beta.example.com", :bucket=>"arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_fips=>false, :use_dual_stack=>true, :requires_account_id=>true, :accelerate=>false, :region=>"cn-north-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'Access point ARN with FIPS &amp; Dualstack' do
      expect = {"endpoint"=>{"url"=>"https://myendpoint-123456789012.s3-accesspoint-fips.dualstack.us-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", :use_fips=>true, :use_dual_stack=>true, :disable_access_points=>false, :region=>"us-east-1", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'Access point ARN with Dualstack' do
      expect = {"endpoint"=>{"url"=>"https://myendpoint-123456789012.s3-accesspoint.dualstack.us-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", :use_fips=>false, :use_dual_stack=>true, :disable_access_points=>false, :region=>"us-east-1", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'vanilla MRAP' do
      expect = {"endpoint"=>{"url"=>"https://mfzwi23gnjvgw.mrap.accesspoint.s3-global.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4a", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegionSet"=>["*"]}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", :use_fips=>false, :use_dual_stack=>false, :region=>"us-east-1", :disable_multi_region_access_points=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'MRAP does not support FIPS' do
      expect = {"error"=>"S3 MRAP does not support FIPS"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", :use_fips=>true, :use_dual_stack=>false, :region=>"us-east-1", :disable_multi_region_access_points=>false, :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'MRAP does not support DualStack' do
      expect = {"error"=>"S3 MRAP does not support dual-stack"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", :use_fips=>false, :use_dual_stack=>true, :region=>"us-east-1", :disable_multi_region_access_points=>false, :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'MRAP does not support S3 Accelerate' do
      expect = {"error"=>"S3 MRAP does not support S3 Accelerate"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", :use_fips=>false, :use_dual_stack=>false, :region=>"us-east-1", :disable_multi_region_access_points=>false, :accelerate=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'MRAP explicitly disabled' do
      expect = {"error"=>"Invalid configuration: Multi-Region Access Point ARNs are disabled."}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", :use_fips=>false, :use_dual_stack=>false, :region=>"us-east-1", :disable_multi_region_access_points=>true, :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'Dual-stack endpoint with path-style forced' do
      expect = {"endpoint"=>{"url"=>"https://s3.dualstack.us-west-2.amazonaws.com/bucketname", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucketname", :force_path_style=>true, :use_fips=>false, :use_dual_stack=>true, :region=>"us-west-2", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'Dual-stack endpoint + SDK::Host is error' do
      expect = {"error"=>"Cannot set dual-stack in combination with a custom endpoint."}
      params = EndpointParameters.new(**{:endpoint=>"https://abc.com", :bucket=>"bucketname", :force_path_style=>true, :use_fips=>false, :use_dual_stack=>true, :region=>"us-west-2", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'path style + ARN bucket' do
      expect = {"error"=>"Path-style addressing cannot be used with ARN buckets"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", :force_path_style=>true, :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :region=>"us-west-2"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'implicit path style bucket + dualstack' do
      expect = {"endpoint"=>{"url"=>"https://s3.dualstack.us-west-2.amazonaws.com/99_ab", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"99_ab", :use_fips=>false, :use_dual_stack=>true, :accelerate=>false, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'implicit path style bucket + dualstack' do
      expect = {"error"=>"Cannot set dual-stack in combination with a custom endpoint."}
      params = EndpointParameters.new(**{:endpoint=>"http://abc.com", :bucket=>"99_ab", :use_fips=>false, :use_dual_stack=>true, :accelerate=>false, :region=>"us-west-2"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'don&#39;t allow URL injections in the bucket' do
      expect = {"endpoint"=>{"url"=>"https://s3.us-west-2.amazonaws.com/example.com#", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"example.com#", :use_fips=>false, :use_dual_stack=>false, :region=>"us-west-2", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'scheme is respected' do
      expect = {"endpoint"=>{"url"=>"http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/99_ab", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"af-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:endpoint=>"http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :bucket=>"99_ab", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :region=>"af-south-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'scheme is respected (virtual addressing)' do
      expect = {"endpoint"=>{"url"=>"http://bucketname.control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/foo", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"af-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:endpoint=>"http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/foo", :bucket=>"bucketname", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :region=>"af-south-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'path style + implicit private link' do
      expect = {"endpoint"=>{"url"=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/99_ab", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"af-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :bucket=>"99_ab", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :region=>"af-south-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'invalid Endpoint override' do
      expect = {"error"=>"Custom endpoint `abcde://nota#url` was not a valid URI"}
      params = EndpointParameters.new(**{:endpoint=>"abcde://nota#url", :bucket=>"bucketname", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :region=>"af-south-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'using an IPv4 address forces path style' do
      expect = {"endpoint"=>{"url"=>"https://123.123.0.1/bucketname", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"af-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:endpoint=>"https://123.123.0.1", :bucket=>"bucketname", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :region=>"af-south-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'vanilla access point arn with region mismatch and UseArnRegion=false' do
      expect = {"error"=>"Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`"}
      params = EndpointParameters.new(**{:use_arn_region=>false, :bucket=>"arn:aws:s3:us-east-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>false, :region=>"us-west-2"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'vanilla access point arn with region mismatch and UseArnRegion unset' do
      expect = {"endpoint"=>{"url"=>"https://myendpoint-123456789012.s3-accesspoint.us-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>false, :region=>"us-east-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'vanilla access point arn with region mismatch and UseArnRegion=true' do
      expect = {"endpoint"=>{"url"=>"https://myendpoint-123456789012.s3-accesspoint.us-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_arn_region=>true, :bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>false, :region=>"us-east-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'outposts arn with region mismatch and UseArnRegion=false' do
      expect = {"error"=>"Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`"}
      params = EndpointParameters.new(**{:use_arn_region=>false, :bucket=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>false, :region=>"us-west-2"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'outposts arn with region mismatch, custom region and UseArnRegion=false' do
      expect = {"error"=>"Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`"}
      params = EndpointParameters.new(**{:endpoint=>"https://example.com", :use_arn_region=>false, :bucket=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>false, :region=>"us-west-2"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'outposts arn with region mismatch and UseArnRegion=true' do
      expect = {"endpoint"=>{"url"=>"https://myaccesspoint-123456789012.op-01234567890123456.s3-outposts.us-east-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "disableDoubleEncoding"=>true, "signingRegion"=>"us-east-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_arn_region=>true, :bucket=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>false, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'outposts arn with region mismatch and UseArnRegion unset' do
      expect = {"endpoint"=>{"url"=>"https://myaccesspoint-123456789012.op-01234567890123456.s3-outposts.us-east-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "disableDoubleEncoding"=>true, "signingRegion"=>"us-east-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>false, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'subdomains are not allowed in virtual buckets' do
      expect = {"endpoint"=>{"url"=>"https://s3.us-east-1.amazonaws.com/bucket.name", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-east-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket.name", :region=>"us-east-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'no region set' do
      expect = {"error"=>"A region must be set when sending requests to S3."}
      params = EndpointParameters.new(**{:bucket=>"bucket-name"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'outposts arn with partition mismatch and UseArnRegion=true' do
      expect = {"endpoint"=>{"url"=>"https://myaccesspoint-123456789012.op-01234567890123456.s3-outposts.cn-north-1.amazonaws.com.cn", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "disableDoubleEncoding"=>true, "signingRegion"=>"cn-north-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_arn_region=>true, :bucket=>"arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>false, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'vanilla virtual addressing@us-west-2' do
      expect = {"endpoint"=>{"url"=>"https://bucket-name.s3.us-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing + dualstack@us-west-2' do
      expect = {"endpoint"=>{"url"=>"https://bucket-name.s3.dualstack.us-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>true, :accelerate=>false, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'accelerate + dualstack@us-west-2' do
      expect = {"endpoint"=>{"url"=>"https://bucket-name.s3-accelerate.dualstack.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>true, :accelerate=>true, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'accelerate (dualstack=false)@us-west-2' do
      expect = {"endpoint"=>{"url"=>"https://bucket-name.s3-accelerate.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>true, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing + fips@us-west-2' do
      expect = {"endpoint"=>{"url"=>"https://bucket-name.s3-fips.us-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>false, :use_fips=>true, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing + dualstack + fips@us-west-2' do
      expect = {"endpoint"=>{"url"=>"https://bucket-name.s3-fips.dualstack.us-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>false, :use_fips=>true, :key=>"key", :use_dual_stack=>true, :accelerate=>false, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'accelerate + fips = error@us-west-2' do
      expect = {"error"=>"Accelerate cannot be used with FIPS"}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>false, :use_fips=>true, :key=>"key", :use_dual_stack=>false, :accelerate=>true, :region=>"us-west-2"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'vanilla virtual addressing@cn-north-1' do
      expect = {"endpoint"=>{"url"=>"https://bucket-name.s3.cn-north-1.amazonaws.com.cn", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"cn-north-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"cn-north-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing + dualstack@cn-north-1' do
      expect = {"endpoint"=>{"url"=>"https://bucket-name.s3.dualstack.cn-north-1.amazonaws.com.cn", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"cn-north-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>true, :accelerate=>false, :region=>"cn-north-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'accelerate (dualstack=false)@cn-north-1' do
      expect = {"error"=>"S3 Accelerate cannot be used in this region"}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>false, :use_fips=>false, :use_dual_stack=>false, :accelerate=>true, :region=>"cn-north-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'virtual addressing + fips@cn-north-1' do
      expect = {"error"=>"Partition does not support FIPS"}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>false, :use_fips=>true, :use_dual_stack=>false, :accelerate=>false, :region=>"cn-north-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'vanilla virtual addressing@af-south-1' do
      expect = {"endpoint"=>{"url"=>"https://bucket-name.s3.af-south-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"af-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"af-south-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing + dualstack@af-south-1' do
      expect = {"endpoint"=>{"url"=>"https://bucket-name.s3.dualstack.af-south-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"af-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>true, :accelerate=>false, :region=>"af-south-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'accelerate + dualstack@af-south-1' do
      expect = {"endpoint"=>{"url"=>"https://bucket-name.s3-accelerate.dualstack.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"af-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>true, :accelerate=>true, :region=>"af-south-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'accelerate (dualstack=false)@af-south-1' do
      expect = {"endpoint"=>{"url"=>"https://bucket-name.s3-accelerate.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"af-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>true, :region=>"af-south-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing + fips@af-south-1' do
      expect = {"endpoint"=>{"url"=>"https://bucket-name.s3-fips.af-south-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"af-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>false, :use_fips=>true, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"af-south-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing + dualstack + fips@af-south-1' do
      expect = {"endpoint"=>{"url"=>"https://bucket-name.s3-fips.dualstack.af-south-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"af-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>false, :use_fips=>true, :key=>"key", :use_dual_stack=>true, :accelerate=>false, :region=>"af-south-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'accelerate + fips = error@af-south-1' do
      expect = {"error"=>"Accelerate cannot be used with FIPS"}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>false, :use_fips=>true, :key=>"key", :use_dual_stack=>false, :accelerate=>true, :region=>"af-south-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'vanilla path style@us-west-2' do
      expect = {"endpoint"=>{"url"=>"https://s3.us-west-2.amazonaws.com/bucket-name", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>true, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'path style + fips@us-west-2' do
      expect = {"error"=>"Path-style addressing cannot be used with FIPS"}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>true, :use_fips=>true, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"us-west-2"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'path style + accelerate = error@us-west-2' do
      expect = {"error"=>"Path-style addressing cannot be used with S3 Accelerate"}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>true, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>true, :region=>"us-west-2"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'path style + dualstack@us-west-2' do
      expect = {"endpoint"=>{"url"=>"https://s3.dualstack.us-west-2.amazonaws.com/bucket-name", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>true, :use_fips=>false, :key=>"key", :use_dual_stack=>true, :accelerate=>false, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'path style + arn is error@us-west-2' do
      expect = {"error"=>"Path-style addressing cannot be used with ARN buckets"}
      params = EndpointParameters.new(**{:bucket=>"arn:PARTITION:s3-outposts:REGION:123456789012:outpost:op-01234567890123456:bucket:mybucket", :force_path_style=>true, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>false, :region=>"us-west-2"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'path style + invalid host label@us-west-2' do
      expect = {"endpoint"=>{"url"=>"https://s3.us-west-2.amazonaws.com/99a_b", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"99a_b", :force_path_style=>true, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'no path style + invalid host label@us-west-2' do
      expect = {"endpoint"=>{"url"=>"https://s3.us-west-2.amazonaws.com/99a_b", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"99a_b", :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'vanilla path style@cn-north-1' do
      expect = {"endpoint"=>{"url"=>"https://s3.cn-north-1.amazonaws.com.cn/bucket-name", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"cn-north-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>true, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"cn-north-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'path style + fips@cn-north-1' do
      expect = {"error"=>"Path-style addressing cannot be used with FIPS"}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>true, :use_fips=>true, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"cn-north-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'path style + accelerate = error@cn-north-1' do
      expect = {"error"=>"Path-style addressing cannot be used with S3 Accelerate"}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>true, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>true, :region=>"cn-north-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'path style + dualstack@cn-north-1' do
      expect = {"endpoint"=>{"url"=>"https://s3.dualstack.cn-north-1.amazonaws.com.cn/bucket-name", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"cn-north-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>true, :use_fips=>false, :key=>"key", :use_dual_stack=>true, :accelerate=>false, :region=>"cn-north-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'path style + arn is error@cn-north-1' do
      expect = {"error"=>"Path-style addressing cannot be used with ARN buckets"}
      params = EndpointParameters.new(**{:bucket=>"arn:PARTITION:s3-outposts:REGION:123456789012:outpost:op-01234567890123456:bucket:mybucket", :force_path_style=>true, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>false, :region=>"cn-north-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'path style + invalid host label@cn-north-1' do
      expect = {"endpoint"=>{"url"=>"https://s3.cn-north-1.amazonaws.com.cn/99a_b", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"cn-north-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"99a_b", :force_path_style=>true, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"cn-north-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'no path style + invalid host label@cn-north-1' do
      expect = {"endpoint"=>{"url"=>"https://s3.cn-north-1.amazonaws.com.cn/99a_b", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"cn-north-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"99a_b", :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"cn-north-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'vanilla path style@af-south-1' do
      expect = {"endpoint"=>{"url"=>"https://s3.af-south-1.amazonaws.com/bucket-name", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"af-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>true, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"af-south-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'path style + fips@af-south-1' do
      expect = {"error"=>"Path-style addressing cannot be used with FIPS"}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>true, :use_fips=>true, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"af-south-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'path style + accelerate = error@af-south-1' do
      expect = {"error"=>"Path-style addressing cannot be used with S3 Accelerate"}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>true, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>true, :region=>"af-south-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'path style + dualstack@af-south-1' do
      expect = {"endpoint"=>{"url"=>"https://s3.dualstack.af-south-1.amazonaws.com/bucket-name", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"af-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucket-name", :force_path_style=>true, :use_fips=>false, :key=>"key", :use_dual_stack=>true, :accelerate=>false, :region=>"af-south-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'path style + arn is error@af-south-1' do
      expect = {"error"=>"Path-style addressing cannot be used with ARN buckets"}
      params = EndpointParameters.new(**{:bucket=>"arn:PARTITION:s3-outposts:REGION:123456789012:outpost:op-01234567890123456:bucket:mybucket", :force_path_style=>true, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>false, :region=>"af-south-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'path style + invalid host label@af-south-1' do
      expect = {"endpoint"=>{"url"=>"https://s3.af-south-1.amazonaws.com/99a_b", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"af-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"99a_b", :force_path_style=>true, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"af-south-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'no path style + invalid host label@af-south-1' do
      expect = {"endpoint"=>{"url"=>"https://s3.af-south-1.amazonaws.com/99a_b", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"af-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"99a_b", :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"af-south-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing + private link@us-west-2' do
      expect = {"endpoint"=>{"url"=>"http://bucket-name.control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:endpoint=>"http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :bucket=>"bucket-name", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'path style + private link@us-west-2' do
      expect = {"endpoint"=>{"url"=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/bucket-name", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :bucket=>"bucket-name", :force_path_style=>true, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'SDK::Host + FIPS@us-west-2' do
      expect = {"error"=>"Host override cannot be combined with Dualstack, FIPS, or S3 Accelerate"}
      params = EndpointParameters.new(**{:endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :bucket=>"bucket-name", :force_path_style=>false, :use_fips=>true, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"us-west-2"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'SDK::Host + DualStack@us-west-2' do
      expect = {"error"=>"Host override cannot be combined with Dualstack, FIPS, or S3 Accelerate"}
      params = EndpointParameters.new(**{:endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :bucket=>"bucket-name", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>true, :accelerate=>false, :region=>"us-west-2"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'SDK::HOST + accelerate@us-west-2' do
      expect = {"error"=>"Host override cannot be combined with Dualstack, FIPS, or S3 Accelerate"}
      params = EndpointParameters.new(**{:endpoint=>"http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :bucket=>"bucket-name", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>true, :region=>"us-west-2"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'SDK::Host + access point ARN@us-west-2' do
      expect = {"endpoint"=>{"url"=>"https://myendpoint-123456789012.beta.example.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:endpoint=>"https://beta.example.com", :bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>false, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing + private link@cn-north-1' do
      expect = {"endpoint"=>{"url"=>"https://bucket-name.control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"cn-north-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :bucket=>"bucket-name", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"cn-north-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'path style + private link@cn-north-1' do
      expect = {"endpoint"=>{"url"=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/bucket-name", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"cn-north-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :bucket=>"bucket-name", :force_path_style=>true, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"cn-north-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'SDK::Host + FIPS@cn-north-1' do
      expect = {"error"=>"Partition does not support FIPS"}
      params = EndpointParameters.new(**{:endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :bucket=>"bucket-name", :force_path_style=>false, :use_fips=>true, :use_dual_stack=>false, :accelerate=>false, :region=>"cn-north-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'SDK::Host + DualStack@cn-north-1' do
      expect = {"error"=>"Host override cannot be combined with Dualstack, FIPS, or S3 Accelerate"}
      params = EndpointParameters.new(**{:endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :bucket=>"bucket-name", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>true, :accelerate=>false, :region=>"cn-north-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'SDK::HOST + accelerate@cn-north-1' do
      expect = {"error"=>"S3 Accelerate cannot be used in this region"}
      params = EndpointParameters.new(**{:endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :bucket=>"bucket-name", :force_path_style=>false, :use_fips=>false, :use_dual_stack=>false, :accelerate=>true, :region=>"cn-north-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'SDK::Host + access point ARN@cn-north-1' do
      expect = {"endpoint"=>{"url"=>"https://myendpoint-123456789012.beta.example.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"cn-north-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:endpoint=>"https://beta.example.com", :bucket=>"arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>false, :region=>"cn-north-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing + private link@af-south-1' do
      expect = {"endpoint"=>{"url"=>"https://bucket-name.control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"af-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :bucket=>"bucket-name", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"af-south-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'path style + private link@af-south-1' do
      expect = {"endpoint"=>{"url"=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/bucket-name", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"af-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :bucket=>"bucket-name", :force_path_style=>true, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"af-south-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'SDK::Host + FIPS@af-south-1' do
      expect = {"error"=>"Host override cannot be combined with Dualstack, FIPS, or S3 Accelerate"}
      params = EndpointParameters.new(**{:endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :bucket=>"bucket-name", :force_path_style=>false, :use_fips=>true, :key=>"key", :use_dual_stack=>false, :accelerate=>false, :region=>"af-south-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'SDK::Host + DualStack@af-south-1' do
      expect = {"error"=>"Host override cannot be combined with Dualstack, FIPS, or S3 Accelerate"}
      params = EndpointParameters.new(**{:endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :bucket=>"bucket-name", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>true, :accelerate=>false, :region=>"af-south-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'SDK::HOST + accelerate@af-south-1' do
      expect = {"error"=>"Host override cannot be combined with Dualstack, FIPS, or S3 Accelerate"}
      params = EndpointParameters.new(**{:endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :bucket=>"bucket-name", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :accelerate=>true, :region=>"af-south-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'SDK::Host + access point ARN@af-south-1' do
      expect = {"endpoint"=>{"url"=>"https://myendpoint-123456789012.beta.example.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"af-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:endpoint=>"https://beta.example.com", :bucket=>"arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>false, :region=>"af-south-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'vanilla access point arn@us-west-2' do
      expect = {"endpoint"=>{"url"=>"https://myendpoint-123456789012.s3-accesspoint.us-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>false, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'access point arn + FIPS@us-west-2' do
      expect = {"endpoint"=>{"url"=>"https://myendpoint-123456789012.s3-accesspoint-fips.us-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_fips=>true, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>false, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'access point arn + accelerate = error@us-west-2' do
      expect = {"error"=>"Access Points do not support S3 Accelerate"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>true, :region=>"us-west-2"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'access point arn + FIPS + DualStack@us-west-2' do
      expect = {"endpoint"=>{"url"=>"https://myendpoint-123456789012.s3-accesspoint-fips.dualstack.us-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_fips=>true, :key=>"key", :use_dual_stack=>true, :requires_account_id=>true, :accelerate=>false, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'vanilla access point arn@cn-north-1' do
      expect = {"endpoint"=>{"url"=>"https://myendpoint-123456789012.s3-accesspoint.cn-north-1.amazonaws.com.cn", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"cn-north-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>false, :region=>"cn-north-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'access point arn + FIPS@cn-north-1' do
      expect = {"error"=>"Partition does not support FIPS"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_fips=>true, :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>false, :region=>"cn-north-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'access point arn + accelerate = error@cn-north-1' do
      expect = {"error"=>"Access Points do not support S3 Accelerate"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>true, :region=>"cn-north-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'access point arn + FIPS + DualStack@cn-north-1' do
      expect = {"error"=>"Partition does not support FIPS"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_fips=>true, :use_dual_stack=>true, :requires_account_id=>true, :accelerate=>false, :region=>"cn-north-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'vanilla access point arn@af-south-1' do
      expect = {"endpoint"=>{"url"=>"https://myendpoint-123456789012.s3-accesspoint.af-south-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"af-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>false, :region=>"af-south-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'access point arn + FIPS@af-south-1' do
      expect = {"endpoint"=>{"url"=>"https://myendpoint-123456789012.s3-accesspoint-fips.af-south-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"af-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_fips=>true, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>false, :region=>"af-south-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'access point arn + accelerate = error@af-south-1' do
      expect = {"error"=>"Access Points do not support S3 Accelerate"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_fips=>false, :key=>"key", :use_dual_stack=>false, :requires_account_id=>true, :accelerate=>true, :region=>"af-south-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'access point arn + FIPS + DualStack@af-south-1' do
      expect = {"endpoint"=>{"url"=>"https://myendpoint-123456789012.s3-accesspoint-fips.dualstack.af-south-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"af-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_fips=>true, :key=>"key", :use_dual_stack=>true, :requires_account_id=>true, :accelerate=>false, :region=>"af-south-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'S3 Outposts Abba Real Outpost Prod us-west-1' do
      expect = {"endpoint"=>{"url"=>"https://test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3.op-0b1d075431d83bebd.s3-outposts.us-west-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3", :use_fips=>false, :use_dual_stack=>false, :region=>"us-west-1", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'S3 Outposts Abba Real Outpost Prod ap-east-1' do
      expect = {"endpoint"=>{"url"=>"https://test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3.op-0b1d075431d83bebd.s3-outposts.ap-east-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "disableDoubleEncoding"=>true, "signingRegion"=>"ap-east-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3", :use_fips=>false, :use_dual_stack=>false, :region=>"ap-east-1", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'S3 Outposts Abba Ec2 Outpost Prod us-east-1' do
      expect = {"endpoint"=>{"url"=>"https://test-accessp-e0000075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3.ec2.s3-outposts.us-east-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "disableDoubleEncoding"=>true, "signingRegion"=>"us-east-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"test-accessp-e0000075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3", :use_fips=>false, :use_dual_stack=>false, :region=>"us-east-1", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'S3 Outposts Abba Ec2 Outpost Prod me-south-1' do
      expect = {"endpoint"=>{"url"=>"https://test-accessp-e0000075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3.ec2.s3-outposts.me-south-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "disableDoubleEncoding"=>true, "signingRegion"=>"me-south-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"test-accessp-e0000075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3", :use_fips=>false, :use_dual_stack=>false, :region=>"me-south-1", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'S3 Outposts Abba Real Outpost Beta' do
      expect = {"endpoint"=>{"url"=>"https://test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kbeta0--op-s3.op-0b1d075431d83bebd.beta.us-east-1.seaport.aws.a2z.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "disableDoubleEncoding"=>true, "signingRegion"=>"us-east-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:endpoint=>"https://beta.us-east-1.seaport.aws.a2z.com", :bucket=>"test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kbeta0--op-s3", :use_fips=>false, :use_dual_stack=>false, :region=>"us-east-1", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'S3 Outposts Abba Ec2 Outpost Beta' do
      expect = {"endpoint"=>{"url"=>"https://161743052723-e00000136899934034jeahy1t8gpzpbwjj8kb7beta0--op-s3.ec2.beta.us-east-1.seaport.aws.a2z.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "disableDoubleEncoding"=>true, "signingRegion"=>"us-east-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:endpoint=>"https://beta.us-east-1.seaport.aws.a2z.com", :bucket=>"161743052723-e00000136899934034jeahy1t8gpzpbwjj8kb7beta0--op-s3", :use_fips=>false, :use_dual_stack=>false, :region=>"us-east-1", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'S3 Outposts Abba - No endpoint set for beta' do
      expect = {"error"=>"Expected a endpoint to be specified but no endpoint was found"}
      params = EndpointParameters.new(**{:bucket=>"test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kbeta0--op-s3", :use_fips=>false, :use_dual_stack=>false, :region=>"us-east-1", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'S3 Outposts Abba Invalid hardware type' do
      expect = {"error"=>"Unrecognized hardware type: \"Expected hardware type o or e but got h\""}
      params = EndpointParameters.new(**{:bucket=>"test-accessp-h0000075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3", :use_fips=>false, :use_dual_stack=>false, :region=>"us-east-1", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'S3 Outposts Abba Special character in Outpost Arn' do
      expect = {"error"=>"Invalid ARN: The outpost Id must only contain a-z, A-Z, 0-9 and `-`."}
      params = EndpointParameters.new(**{:bucket=>"test-accessp-o00000754%1d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3", :use_fips=>false, :use_dual_stack=>false, :region=>"us-east-1", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'S3 Outposts Snow with bucket' do
      expect = {"endpoint"=>{"url"=>"http://10.0.1.12:433/bucketName", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-snow", "disableDoubleEncoding"=>true, "signingRegion"=>"snow"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucketName", :snow_endpoint_url=>"http://10.0.1.12:433", :use_fips=>false, :use_dual_stack=>false, :region=>"snow", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'S3 Outposts Snow without bucket' do
      expect = {"endpoint"=>{"url"=>"https://10.0.1.12:433", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-snow", "disableDoubleEncoding"=>true, "signingRegion"=>"snow"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:snow_endpoint_url=>"https://10.0.1.12:433", :use_fips=>false, :use_dual_stack=>false, :region=>"snow", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'S3 Outposts Snow no port' do
      expect = {"endpoint"=>{"url"=>"http://10.0.1.12/bucketName", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-snow", "disableDoubleEncoding"=>true, "signingRegion"=>"snow"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucketName", :snow_endpoint_url=>"http://10.0.1.12", :use_fips=>false, :use_dual_stack=>false, :region=>"snow", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'S3 Outposts Snow dns endpoint' do
      expect = {"endpoint"=>{"url"=>"https://amazonaws.com/bucketName", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-snow", "disableDoubleEncoding"=>true, "signingRegion"=>"snow"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:bucket=>"bucketName", :snow_endpoint_url=>"https://amazonaws.com", :use_fips=>false, :use_dual_stack=>false, :region=>"snow", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'S3 Outposts Snow invalid url' do
      expect = {"error"=>"Snow endpoint url was not a valid url"}
      params = EndpointParameters.new(**{:snow_endpoint_url=>"invalid.url", :use_fips=>false, :use_dual_stack=>false, :region=>"snow", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'S3 Outposts Snow no snow endpoint' do
      expect = {"error"=>"Expected snow endpoint url to be set but no url was found"}
      params = EndpointParameters.new(**{:bucket=>"bucketName", :use_fips=>false, :use_dual_stack=>false, :region=>"snow", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'S3 Outposts Snow FIPS enabled' do
      expect = {"error"=>"S3 Snow does not support FIPS"}
      params = EndpointParameters.new(**{:bucket=>"bucketName", :snow_endpoint_url=>"https://10.0.1.12:433", :use_fips=>true, :use_dual_stack=>false, :region=>"snow", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'S3 Outposts Snow Dual-stack enabled' do
      expect = {"error"=>"S3 Snow does not support Dual-stack"}
      params = EndpointParameters.new(**{:bucket=>"bucketName", :snow_endpoint_url=>"https://10.0.1.12:433", :use_fips=>false, :use_dual_stack=>true, :region=>"snow", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'S3 Outposts Snow Accelerate enabled' do
      expect = {"error"=>"S3 Snow does not support S3 Accelerate"}
      params = EndpointParameters.new(**{:bucket=>"bucketName", :snow_endpoint_url=>"https://10.0.1.12:433", :use_fips=>false, :use_dual_stack=>false, :region=>"snow", :accelerate=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'object lambda @us-east-1' do
      expect = {"endpoint"=>{"url"=>"https://mybanner-123456789012.s3-object-lambda.us-east-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "disableDoubleEncoding"=>true, "signingRegion"=>"us-east-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_arn_region=>false, :bucket=>"arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner", :use_fips=>false, :use_dual_stack=>false, :region=>"us-east-1", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'object lambda @us-west-2' do
      expect = {"endpoint"=>{"url"=>"https://mybanner-123456789012.s3-object-lambda.us-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_arn_region=>false, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner", :use_fips=>false, :use_dual_stack=>false, :region=>"us-west-2", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'object lambda, colon resource deliminator @us-west-2' do
      expect = {"endpoint"=>{"url"=>"https://mybanner-123456789012.s3-object-lambda.us-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_arn_region=>false, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint:mybanner", :use_fips=>false, :use_dual_stack=>false, :region=>"us-west-2", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'object lambda @us-east-1, client region us-west-2, useArnRegion=true' do
      expect = {"endpoint"=>{"url"=>"https://mybanner-123456789012.s3-object-lambda.us-east-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "disableDoubleEncoding"=>true, "signingRegion"=>"us-east-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_arn_region=>true, :bucket=>"arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner", :use_fips=>false, :use_dual_stack=>false, :region=>"us-west-2", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'object lambda @us-east-1, client region s3-external-1, useArnRegion=true' do
      expect = {"endpoint"=>{"url"=>"https://mybanner-123456789012.s3-object-lambda.us-east-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "disableDoubleEncoding"=>true, "signingRegion"=>"us-east-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_arn_region=>true, :bucket=>"arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner", :use_fips=>false, :use_dual_stack=>false, :region=>"s3-external-1", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'object lambda @us-east-1, client region s3-external-1, useArnRegion=false' do
      expect = {"error"=>"Invalid configuration: region from ARN `us-east-1` does not match client region `s3-external-1` and UseArnRegion is `false`"}
      params = EndpointParameters.new(**{:use_arn_region=>false, :bucket=>"arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner", :use_fips=>false, :use_dual_stack=>false, :region=>"s3-external-1", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'object lambda @us-east-1, client region aws-global, useArnRegion=true' do
      expect = {"endpoint"=>{"url"=>"https://mybanner-123456789012.s3-object-lambda.us-east-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "disableDoubleEncoding"=>true, "signingRegion"=>"us-east-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_arn_region=>true, :bucket=>"arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner", :use_fips=>false, :use_dual_stack=>false, :region=>"aws-global", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'object lambda @us-east-1, client region aws-global, useArnRegion=false' do
      expect = {"error"=>"Invalid configuration: region from ARN `us-east-1` does not match client region `aws-global` and UseArnRegion is `false`"}
      params = EndpointParameters.new(**{:use_arn_region=>false, :bucket=>"arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner", :use_fips=>false, :use_dual_stack=>false, :region=>"aws-global", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'object lambda @cn-north-1, client region us-west-2 (cross partition), useArnRegion=true' do
      expect = {"endpoint"=>{"url"=>"https://mybanner-123456789012.s3-object-lambda.cn-north-1.amazonaws.com.cn", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "disableDoubleEncoding"=>true, "signingRegion"=>"cn-north-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_arn_region=>true, :bucket=>"arn:aws-cn:s3-object-lambda:cn-north-1:123456789012:accesspoint/mybanner", :use_fips=>false, :use_dual_stack=>false, :region=>"aws-global", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'object lambda with dualstack' do
      expect = {"error"=>"S3 Object Lambda does not support Dual-stack"}
      params = EndpointParameters.new(**{:use_arn_region=>false, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner", :use_fips=>false, :use_dual_stack=>true, :region=>"us-west-2", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'object lambda @us-gov-east-1' do
      expect = {"endpoint"=>{"url"=>"https://mybanner-123456789012.s3-object-lambda.us-gov-east-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "disableDoubleEncoding"=>true, "signingRegion"=>"us-gov-east-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_arn_region=>false, :bucket=>"arn:aws-us-gov:s3-object-lambda:us-gov-east-1:123456789012:accesspoint/mybanner", :use_fips=>false, :use_dual_stack=>false, :region=>"us-gov-east-1", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'object lambda @us-gov-east-1, with fips' do
      expect = {"endpoint"=>{"url"=>"https://mybanner-123456789012.s3-object-lambda-fips.us-gov-east-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "disableDoubleEncoding"=>true, "signingRegion"=>"us-gov-east-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_arn_region=>false, :bucket=>"arn:aws-us-gov:s3-object-lambda:us-gov-east-1:123456789012:accesspoint/mybanner", :use_fips=>true, :use_dual_stack=>false, :region=>"us-gov-east-1", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'object lambda @cn-north-1, with fips' do
      expect = {"error"=>"Partition does not support FIPS"}
      params = EndpointParameters.new(**{:use_arn_region=>false, :bucket=>"arn:aws-cn:s3-object-lambda:cn-north-1:123456789012:accesspoint/mybanner", :use_fips=>true, :use_dual_stack=>false, :region=>"cn-north-1", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'object lambda with accelerate' do
      expect = {"error"=>"S3 Object Lambda does not support S3 Accelerate"}
      params = EndpointParameters.new(**{:use_arn_region=>false, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner", :use_fips=>false, :use_dual_stack=>false, :region=>"us-west-2", :accelerate=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'object lambda with invalid arn - bad service and someresource' do
      expect = {"error"=>"Invalid ARN: Unrecognized format: arn:aws:sqs:us-west-2:123456789012:someresource (type: someresource)"}
      params = EndpointParameters.new(**{:use_arn_region=>false, :bucket=>"arn:aws:sqs:us-west-2:123456789012:someresource", :use_fips=>false, :use_dual_stack=>false, :region=>"us-west-2", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'object lambda with invalid arn - invalid resource' do
      expect = {"error"=>"Invalid ARN: Object Lambda ARNs only support `accesspoint` arn types, but found: `bucket_name`"}
      params = EndpointParameters.new(**{:use_arn_region=>false, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123456789012:bucket_name:mybucket", :use_fips=>false, :use_dual_stack=>false, :region=>"us-west-2", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'object lambda with invalid arn - missing region' do
      expect = {"error"=>"Invalid ARN: bucket ARN is missing a region"}
      params = EndpointParameters.new(**{:use_arn_region=>false, :bucket=>"arn:aws:s3-object-lambda::123456789012:accesspoint/mybanner", :use_fips=>false, :use_dual_stack=>false, :region=>"us-west-2", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'object lambda with invalid arn - fips in region' do
      expect = {"error"=>"Could not load partition for ARN region `fips-us-gov-west-1`"}
      params = EndpointParameters.new(**{:use_arn_region=>true, :bucket=>"arn:aws-us-gov:s3-object-lambda:fips-us-gov-west-1:123456789012:accesspoint/myendpoint", :use_fips=>false, :use_dual_stack=>false, :region=>"us-west-2", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'object lambda with invalid arn - fips in region' do
      expect = {"error"=>"Could not load partition for ARN region `us-gov-west-1-fips`"}
      params = EndpointParameters.new(**{:use_arn_region=>true, :bucket=>"arn:aws-us-gov:s3-object-lambda:us-gov-west-1-fips:123456789012:accesspoint/myendpoint", :use_fips=>false, :use_dual_stack=>false, :region=>"us-west-2", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'object lambda with invalid arn - missing account-id' do
      expect = {"error"=>"Invalid ARN: Missing account id"}
      params = EndpointParameters.new(**{:use_arn_region=>true, :bucket=>"arn:aws:s3-object-lambda:us-west-2::accesspoint/mybanner", :use_fips=>false, :use_dual_stack=>false, :region=>"us-west-2", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'object lambda with invalid arn - account id contains invalid characters' do
      expect = {"error"=>"Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `123.45678.9012`"}
      params = EndpointParameters.new(**{:use_arn_region=>true, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123.45678.9012:accesspoint:mybucket", :use_fips=>false, :use_dual_stack=>false, :region=>"us-west-2", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'object lambda with invalid arn - missing access point name' do
      expect = {"error"=>"Invalid ARN: Expected a resource of the format `accesspoint:<accesspoint name>` but no name was provided"}
      params = EndpointParameters.new(**{:use_arn_region=>true, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint", :use_fips=>false, :use_dual_stack=>false, :region=>"us-west-2", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'object lambda with invalid arn - access point name contains invalid character: *' do
      expect = {"error"=>"Invalid ARN: The access point name may only contain a-z, A-Z, 0-9 and `-`. Found: `*`"}
      params = EndpointParameters.new(**{:use_arn_region=>true, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint:*", :use_fips=>false, :use_dual_stack=>false, :region=>"us-west-2", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'object lambda with invalid arn - access point name contains invalid character: .' do
      expect = {"error"=>"Invalid ARN: The access point name may only contain a-z, A-Z, 0-9 and `-`. Found: `my.bucket`"}
      params = EndpointParameters.new(**{:use_arn_region=>true, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint:my.bucket", :use_fips=>false, :use_dual_stack=>false, :region=>"us-west-2", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'object lambda with invalid arn - access point name contains sub resources' do
      expect = {"error"=>"Invalid ARN: The ARN may only contain a single resource component after `accesspoint`."}
      params = EndpointParameters.new(**{:use_arn_region=>true, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint:mybucket:object:foo", :use_fips=>false, :use_dual_stack=>false, :region=>"us-west-2", :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'object lambda with custom endpoint' do
      expect = {"endpoint"=>{"url"=>"https://mybanner-123456789012.my-endpoint.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_arn_region=>false, :endpoint=>"https://my-endpoint.com", :bucket=>"arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner", :use_fips=>false, :use_dual_stack=>false, :region=>"us-west-2", :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'WriteGetObjectResponse @ us-west-2' do
      expect = {"endpoint"=>{"url"=>"https://s3-object-lambda.us-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_object_lambda_endpoint=>true, :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'WriteGetObjectResponse with custom endpoint' do
      expect = {"endpoint"=>{"url"=>"https://my-endpoint.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "disableDoubleEncoding"=>true, "signingRegion"=>"us-west-2"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:endpoint=>"https://my-endpoint.com", :use_object_lambda_endpoint=>true, :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :region=>"us-west-2"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'WriteGetObjectResponse @ us-east-1' do
      expect = {"endpoint"=>{"url"=>"https://s3-object-lambda.us-east-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "disableDoubleEncoding"=>true, "signingRegion"=>"us-east-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_object_lambda_endpoint=>true, :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :region=>"us-east-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'WriteGetObjectResponse with fips' do
      expect = {"endpoint"=>{"url"=>"https://s3-object-lambda-fips.us-east-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "disableDoubleEncoding"=>true, "signingRegion"=>"us-east-1"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_object_lambda_endpoint=>true, :use_fips=>true, :use_dual_stack=>false, :accelerate=>false, :region=>"us-east-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'WriteGetObjectResponse with dualstack' do
      expect = {"error"=>"S3 Object Lambda does not support Dual-stack"}
      params = EndpointParameters.new(**{:use_object_lambda_endpoint=>true, :use_fips=>false, :use_dual_stack=>true, :accelerate=>false, :region=>"us-east-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'WriteGetObjectResponse with accelerate' do
      expect = {"error"=>"S3 Object Lambda does not support S3 Accelerate"}
      params = EndpointParameters.new(**{:use_object_lambda_endpoint=>true, :use_fips=>false, :use_dual_stack=>false, :accelerate=>true, :region=>"us-east-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'WriteGetObjectResponse with fips in CN' do
      expect = {"error"=>"Partition does not support FIPS"}
      params = EndpointParameters.new(**{:use_object_lambda_endpoint=>true, :use_fips=>true, :use_dual_stack=>false, :accelerate=>false, :region=>"cn-north-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'WriteGetObjectResponse with invalid partition' do
      expect = {"error"=>"A valid partition could not be determined"}
      params = EndpointParameters.new(**{:use_object_lambda_endpoint=>true, :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :region=>"fake-partition"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

  end
end
