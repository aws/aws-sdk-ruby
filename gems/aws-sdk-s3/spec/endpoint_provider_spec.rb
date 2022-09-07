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
      expect = {"error"=>"Invalid region: region was not a valid DNS name."}
      params = EndpointParameters.new(**{:region=>"a b", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Invalid access point ARN: Not S3' do
      expect = {"error"=>"Invalid ARN: The ARN was not for the S3 service, found: not-s3"}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :bucket=>"arn:aws:not-s3:us-west-2:123456789012:accesspoint:myendpoint"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Invalid access point ARN: invalid resource' do
      expect = {"error"=>"Invalid ARN: The ARN may only contain a single resource component after `accesspoint`."}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint:more-data"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Invalid access point ARN: invalid no ap name' do
      expect = {"error"=>"Invalid ARN: Expected a resource of the format `accesspoint:<accesspoint name>` but no name was provided"}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Invalid access point ARN: AccountId is invalid' do
      expect = {"error"=>"Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `123456_789012`"}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :bucket=>"arn:aws:s3:us-west-2:123456_789012:accesspoint:apname"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Invalid access point ARN: access point name is invalid' do
      expect = {"error"=>"Invalid ARN: The access point name may only contain a-z, A-Z, 0-9 and `-`. Found: `ap_name`"}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:ap_name"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Access points (disable access points explicitly false)' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://myendpoint-123456789012.s3-accesspoint.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :disable_access_points=>false, :bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'Access points: partition does not support FIPS' do
      expect = {"error"=>"Partition does not support FIPS"}
      params = EndpointParameters.new(**{:region=>"cn-north-1", :use_fips=>true, :use_dual_stack=>false, :accelerate=>false, :bucket=>"arn:aws:s3:cn-north-1:123456789012:accesspoint:myendpoint"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Bucket region is invalid' do
      expect = {"error"=>"Invalid region in ARN: `us-west -2` (invalid DNS name)"}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :disable_access_points=>false, :bucket=>"arn:aws:s3:us-west -2:123456789012:accesspoint:myendpoint"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Access points when Access points explicitly disabled (used for CreateBucket)' do
      expect = {"error"=>"Access points are not supported for this operation"}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :disable_access_points=>true, :bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'missing arn type' do
      expect = {"error"=>"Invalid ARN: `arn:aws:s3:us-west-2:123456789012:` was not a valid ARN"}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :disable_access_points=>true, :bucket=>"arn:aws:s3:us-west-2:123456789012:"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'SDK::Host + access point + Dualstack is an error' do
      expect = {"error"=>"DualStack cannot be combined with a Host override (PrivateLink)"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :endpoint=>"https://beta.example.com", :region=>"cn-north-1", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Access point ARN with FIPS &amp; Dualstack' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://myendpoint-123456789012.s3-accesspoint-fips.dualstack.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>true, :use_dual_stack=>true, :accelerate=>false, :disable_access_points=>false, :bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'Access point ARN with Dualstack' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://myendpoint-123456789012.s3-accesspoint.dualstack.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>false, :use_dual_stack=>true, :accelerate=>false, :disable_access_points=>false, :bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'vanilla MRAP' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4a", "signingRegionSet"=>["*"], "signingName"=>"s3", "disableDoubleEncoding"=>true}]}, "url"=>"https://mfzwi23gnjvgw.mrap.accesspoint.s3-global.amazonaws.com"}}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", :region=>"us-east-1", :disable_multi_region_access_points=>false, :use_fips=>false, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'MRAP does not support FIPS' do
      expect = {"error"=>"S3 MRAP does not support FIPS"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", :region=>"us-east-1", :disable_multi_region_access_points=>false, :use_fips=>true, :use_dual_stack=>false, :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'MRAP does not support DualStack' do
      expect = {"error"=>"S3 MRAP does not support dual-stack"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", :region=>"us-east-1", :disable_multi_region_access_points=>false, :use_fips=>false, :use_dual_stack=>true, :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'MRAP does not support S3 Accelerate' do
      expect = {"error"=>"S3 MRAP does not support S3 Accelerate"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", :region=>"us-east-1", :disable_multi_region_access_points=>false, :use_fips=>false, :use_dual_stack=>false, :accelerate=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'MRAP explicitly disabled' do
      expect = {"error"=>"Invalid configuration: Multi-Region Access Point ARNs are disabled."}
      params = EndpointParameters.new(**{:bucket=>"arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", :region=>"us-east-1", :disable_multi_region_access_points=>true, :use_fips=>false, :use_dual_stack=>false, :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Dual-stack endpoint with path-style forced' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.dualstack.us-west-2.amazonaws.com/bucketname"}}
      params = EndpointParameters.new(**{:bucket=>"bucketname", :region=>"us-west-2", :force_path_style=>true, :use_fips=>false, :accelerate=>false, :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'Dual-stack endpoint + SDK::Host is error' do
      expect = {"error"=>"Cannot set dual-stack in combination with a custom endpoint."}
      params = EndpointParameters.new(**{:bucket=>"bucketname", :region=>"us-west-2", :force_path_style=>true, :use_fips=>false, :accelerate=>false, :use_dual_stack=>true, :endpoint=>"https://abc.com"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'path style + ARN bucket' do
      expect = {"error"=>"Path-style addressing cannot be used with ARN buckets"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", :force_path_style=>true, :region=>"us-west-2", :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'implicit path style bucket + dualstack' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.dualstack.us-west-2.amazonaws.com/99_ab"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"99_ab", :region=>"us-west-2", :use_dual_stack=>true, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'implicit path style bucket + dualstack' do
      expect = {"error"=>"Cannot set dual-stack in combination with a custom endpoint."}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"99_ab", :region=>"us-west-2", :use_dual_stack=>true, :use_fips=>false, :endpoint=>"http://abc.com"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'don&#39;t allow URL injections in the bucket' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.us-west-2.amazonaws.com/example.com#"}}
      params = EndpointParameters.new(**{:bucket=>"example.com#", :region=>"us-west-2", :use_dual_stack=>false, :use_fips=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'scheme is respected' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/99_ab"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"99_ab", :endpoint=>"http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :region=>"af-south-1", :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'scheme is respected (virtual addressing)' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"http://bucketname.control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/foo"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucketname", :endpoint=>"http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/foo", :region=>"af-south-1", :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'path style + implicit private link' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/99_ab"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"99_ab", :endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :region=>"af-south-1", :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'invalid Endpoint override' do
      expect = {"error"=>"Custom endpoint `abcde://nota#url` was not a valid URI"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucketname", :endpoint=>"abcde://nota#url", :region=>"af-south-1", :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'using an IPv4 address forces path style' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://123.123.0.1/bucketname"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucketname", :endpoint=>"https://123.123.0.1", :region=>"af-south-1", :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'vanilla access point arn with region mismatch and UseArnRegion=false' do
      expect = {"error"=>"Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws:s3:us-east-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_arn_region=>false, :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'vanilla access point arn with region mismatch and UseArnRegion unset' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://myendpoint-123456789012.s3-accesspoint.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", :force_path_style=>false, :region=>"us-east-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'vanilla access point arn with region mismatch and UseArnRegion=true' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://myendpoint-123456789012.s3-accesspoint.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", :force_path_style=>false, :use_arn_region=>true, :region=>"us-east-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'subdomains are not allowed in virtual buckets' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "disableDoubleEncoding"=>true, "signingRegion"=>"us-east-1"}]}, "url"=>"https://s3.us-east-1.amazonaws.com/bucket.name"}}
      params = EndpointParameters.new(**{:bucket=>"bucket.name", :region=>"us-east-1"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'no region set' do
      expect = {"error"=>"A region must be set when sending requests to S3."}
      params = EndpointParameters.new(**{:bucket=>"bucket-name"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'UseGlobalEndpoints=true, region=us-east-1 uses the global endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_global_endpoint=>true, :use_fips=>false, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'UseGlobalEndpoints=true, region=us-west-2 uses the regional endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-west-2", :use_global_endpoint=>true, :use_fips=>false, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'UseGlobalEndpoints=true, region=cn-north-1 uses the regional endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.cn-north-1.amazonaws.com.cn"}}
      params = EndpointParameters.new(**{:region=>"cn-north-1", :use_global_endpoint=>true, :use_fips=>false, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'UseGlobalEndpoints=true, region=us-east-1, fips=true uses the regional endpoint with fips' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-fips.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_global_endpoint=>true, :use_fips=>true, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'UseGlobalEndpoints=true, region=us-east-1, dualstack=true uses the regional endpoint with dualstack' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.dualstack.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_global_endpoint=>true, :use_fips=>false, :use_dual_stack=>true, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'UseGlobalEndpoints=true, region=us-east-1, dualstack and fips uses the regional endpoint with fips/dualstack' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-fips.dualstack.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_global_endpoint=>true, :use_fips=>true, :use_dual_stack=>true, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'UseGlobalEndpoints=true, region=us-east-1 with custom endpoint, uses custom' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://example.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :endpoint=>"https://example.com", :use_global_endpoint=>true, :use_fips=>false, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'UseGlobalEndpoints=true, region=us-west-2 with custom endpoint, uses custom' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://example.com"}}
      params = EndpointParameters.new(**{:region=>"us-west-2", :endpoint=>"https://example.com", :use_global_endpoint=>true, :use_fips=>false, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'UseGlobalEndpoints=true, region=us-east-1 with accelerate on non bucket case uses the global endpoint and ignores accelerate' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_global_endpoint=>true, :use_fips=>false, :use_dual_stack=>false, :accelerate=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'aws-global region uses the global endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"aws-global", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'aws-global region with fips uses the regional endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-fips.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"aws-global", :use_fips=>true, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'aws-global region with dualstack uses the regional endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.dualstack.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"aws-global", :use_fips=>false, :use_dual_stack=>true, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'aws-global region with fips and dualstack uses the regional endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-fips.dualstack.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"aws-global", :use_fips=>true, :use_dual_stack=>true, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'aws-global region with accelerate on non-bucket case, uses global endpoint and ignores accelerate' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"aws-global", :use_fips=>false, :use_dual_stack=>false, :accelerate=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'aws-global region with custom endpoint, uses custom' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://example.com"}}
      params = EndpointParameters.new(**{:region=>"aws-global", :endpoint=>"https://example.com", :use_global_endpoint=>false, :use_fips=>false, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing, aws-global region uses the global endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"aws-global", :bucket=>"bucket-name", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing, aws-global region with fips uses the regional fips endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3-fips.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"aws-global", :bucket=>"bucket-name", :use_fips=>true, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing, aws-global region with dualstack uses the regional dualstack endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3.dualstack.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"aws-global", :bucket=>"bucket-name", :use_fips=>false, :use_dual_stack=>true, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing, aws-global region with fips/dualstack uses the regional fips/dualstack endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3-fips.dualstack.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"aws-global", :bucket=>"bucket-name", :use_fips=>true, :use_dual_stack=>true, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing, aws-global region with accelerate uses the global accelerate endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3-accelerate.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"aws-global", :bucket=>"bucket-name", :use_fips=>false, :use_dual_stack=>false, :accelerate=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing, aws-global region with custom endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.example.com"}}
      params = EndpointParameters.new(**{:region=>"aws-global", :endpoint=>"https://example.com", :bucket=>"bucket-name", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing, UseGlobalEndpoint and us-east-1 region uses the global endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_global_endpoint=>true, :bucket=>"bucket-name", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing, UseGlobalEndpoint and us-west-2 region uses the regional endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-west-2", :use_global_endpoint=>true, :bucket=>"bucket-name", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing, UseGlobalEndpoint and us-east-1 region and fips uses the regional fips endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3-fips.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_global_endpoint=>true, :bucket=>"bucket-name", :use_fips=>true, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing, UseGlobalEndpoint and us-east-1 region and dualstack uses the regional dualstack endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3.dualstack.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_global_endpoint=>true, :bucket=>"bucket-name", :use_fips=>false, :use_dual_stack=>true, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing, UseGlobalEndpoint and us-east-1 region and accelerate uses the global accelerate endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3-accelerate.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_global_endpoint=>true, :bucket=>"bucket-name", :use_fips=>false, :use_dual_stack=>false, :accelerate=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing, UseGlobalEndpoint and us-east-1 region with custom endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.example.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :endpoint=>"https://example.com", :use_global_endpoint=>true, :bucket=>"bucket-name", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'ForcePathStyle, aws-global region uses the global endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.amazonaws.com/bucket-name"}}
      params = EndpointParameters.new(**{:region=>"aws-global", :bucket=>"bucket-name", :force_path_style=>true, :use_fips=>false, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'ForcePathStyle, aws-global region with fips is invalid' do
      expect = {"error"=>"Path-style addressing cannot be used with FIPS"}
      params = EndpointParameters.new(**{:region=>"aws-global", :bucket=>"bucket-name", :force_path_style=>true, :use_fips=>true, :use_dual_stack=>false, :accelerate=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'ForcePathStyle, aws-global region with dualstack uses regional dualstack endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.dualstack.us-east-1.amazonaws.com/bucket-name"}}
      params = EndpointParameters.new(**{:region=>"aws-global", :bucket=>"bucket-name", :force_path_style=>true, :use_fips=>false, :use_dual_stack=>true, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'ForcePathStyle, aws-global region custom endpoint uses the custom endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://example.com/bucket-name"}}
      params = EndpointParameters.new(**{:region=>"aws-global", :endpoint=>"https://example.com", :bucket=>"bucket-name", :force_path_style=>true, :use_fips=>false, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'ForcePathStyle, UseGlobalEndpoint us-east-1 region uses the global endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.amazonaws.com/bucket-name"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :bucket=>"bucket-name", :use_global_endpoint=>true, :force_path_style=>true, :use_fips=>false, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'ForcePathStyle, UseGlobalEndpoint us-west-2 region uses the regional endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.us-west-2.amazonaws.com/bucket-name"}}
      params = EndpointParameters.new(**{:region=>"us-west-2", :bucket=>"bucket-name", :use_global_endpoint=>true, :force_path_style=>true, :use_fips=>false, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'ForcePathStyle, UseGlobalEndpoint us-east-1 region, dualstack uses the regional dualstack endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.dualstack.us-east-1.amazonaws.com/bucket-name"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :bucket=>"bucket-name", :use_global_endpoint=>true, :force_path_style=>true, :use_fips=>false, :use_dual_stack=>true, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'ForcePathStyle, UseGlobalEndpoint us-east-1 region custom endpoint uses the custom endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://example.com/bucket-name"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :bucket=>"bucket-name", :endpoint=>"https://example.com", :use_global_endpoint=>true, :force_path_style=>true, :use_fips=>false, :use_dual_stack=>false, :accelerate=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'ARN with aws-global region and  UseArnRegion uses the regional endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://reports-123456789012.op-01234567890123456.s3-outposts.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"aws-global", :use_arn_region=>true, :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :bucket=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-01234567890123456/accesspoint/reports"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'cross partition MRAP ARN is an error' do
      expect = {"error"=>"Client was configured for partition `aws` but bucket referred to partition `aws-cn`"}
      params = EndpointParameters.new(**{:bucket=>"arn:aws-cn:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", :region=>"us-west-1"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'vanilla virtual addressing@us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>false, :region=>"us-west-2", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing + dualstack@us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3.dualstack.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>false, :region=>"us-west-2", :use_dual_stack=>true, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'accelerate + dualstack@us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3-accelerate.dualstack.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>true, :bucket=>"bucket-name", :force_path_style=>false, :region=>"us-west-2", :use_dual_stack=>true, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'accelerate (dualstack=false)@us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3-accelerate.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>true, :bucket=>"bucket-name", :force_path_style=>false, :region=>"us-west-2", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing + fips@us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3-fips.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>false, :region=>"us-west-2", :use_dual_stack=>false, :use_fips=>true, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing + dualstack + fips@us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3-fips.dualstack.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>false, :region=>"us-west-2", :use_dual_stack=>true, :use_fips=>true, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'accelerate + fips = error@us-west-2' do
      expect = {"error"=>"Accelerate cannot be used with FIPS"}
      params = EndpointParameters.new(**{:accelerate=>true, :bucket=>"bucket-name", :force_path_style=>false, :region=>"us-west-2", :use_dual_stack=>false, :use_fips=>true, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'vanilla virtual addressing@cn-north-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3.cn-north-1.amazonaws.com.cn"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>false, :region=>"cn-north-1", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing + dualstack@cn-north-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3.dualstack.cn-north-1.amazonaws.com.cn"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>false, :region=>"cn-north-1", :use_dual_stack=>true, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'accelerate (dualstack=false)@cn-north-1' do
      expect = {"error"=>"S3 Accelerate cannot be used in this region"}
      params = EndpointParameters.new(**{:accelerate=>true, :bucket=>"bucket-name", :force_path_style=>false, :region=>"cn-north-1", :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'virtual addressing + fips@cn-north-1' do
      expect = {"error"=>"Partition does not support FIPS"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>false, :region=>"cn-north-1", :use_dual_stack=>false, :use_fips=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'vanilla virtual addressing@af-south-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3.af-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>false, :region=>"af-south-1", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing + dualstack@af-south-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3.dualstack.af-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>false, :region=>"af-south-1", :use_dual_stack=>true, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'accelerate + dualstack@af-south-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3-accelerate.dualstack.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>true, :bucket=>"bucket-name", :force_path_style=>false, :region=>"af-south-1", :use_dual_stack=>true, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'accelerate (dualstack=false)@af-south-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3-accelerate.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>true, :bucket=>"bucket-name", :force_path_style=>false, :region=>"af-south-1", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing + fips@af-south-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3-fips.af-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>false, :region=>"af-south-1", :use_dual_stack=>false, :use_fips=>true, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing + dualstack + fips@af-south-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.s3-fips.dualstack.af-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>false, :region=>"af-south-1", :use_dual_stack=>true, :use_fips=>true, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'accelerate + fips = error@af-south-1' do
      expect = {"error"=>"Accelerate cannot be used with FIPS"}
      params = EndpointParameters.new(**{:accelerate=>true, :bucket=>"bucket-name", :force_path_style=>false, :region=>"af-south-1", :use_dual_stack=>false, :use_fips=>true, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'vanilla path style@us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.us-west-2.amazonaws.com/bucket-name"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>true, :region=>"us-west-2", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'path style + fips@us-west-2' do
      expect = {"error"=>"Path-style addressing cannot be used with FIPS"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>true, :region=>"us-west-2", :use_dual_stack=>false, :use_fips=>true, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'path style + accelerate = error@us-west-2' do
      expect = {"error"=>"Path-style addressing cannot be used with S3 Accelerate"}
      params = EndpointParameters.new(**{:accelerate=>true, :bucket=>"bucket-name", :force_path_style=>true, :region=>"us-west-2", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'path style + dualstack@us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.dualstack.us-west-2.amazonaws.com/bucket-name"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>true, :region=>"us-west-2", :use_dual_stack=>true, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'path style + arn is error@us-west-2' do
      expect = {"error"=>"Path-style addressing cannot be used with ARN buckets"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:PARTITION:s3-outposts:REGION:123456789012:outpost:op-01234567890123456:bucket:mybucket", :force_path_style=>true, :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'path style + invalid DNS name@us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.us-west-2.amazonaws.com/99a_b"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"99a_b", :force_path_style=>true, :region=>"us-west-2", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'no path style + invalid DNS name@us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.us-west-2.amazonaws.com/99a_b"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"99a_b", :region=>"us-west-2", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'vanilla path style@cn-north-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.cn-north-1.amazonaws.com.cn/bucket-name"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>true, :region=>"cn-north-1", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'path style + fips@cn-north-1' do
      expect = {"error"=>"Path-style addressing cannot be used with FIPS"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>true, :region=>"cn-north-1", :use_dual_stack=>false, :use_fips=>true, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'path style + accelerate = error@cn-north-1' do
      expect = {"error"=>"Path-style addressing cannot be used with S3 Accelerate"}
      params = EndpointParameters.new(**{:accelerate=>true, :bucket=>"bucket-name", :force_path_style=>true, :region=>"cn-north-1", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'path style + dualstack@cn-north-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.dualstack.cn-north-1.amazonaws.com.cn/bucket-name"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>true, :region=>"cn-north-1", :use_dual_stack=>true, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'path style + arn is error@cn-north-1' do
      expect = {"error"=>"Path-style addressing cannot be used with ARN buckets"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:PARTITION:s3-outposts:REGION:123456789012:outpost:op-01234567890123456:bucket:mybucket", :force_path_style=>true, :region=>"cn-north-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'path style + invalid DNS name@cn-north-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.cn-north-1.amazonaws.com.cn/99a_b"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"99a_b", :force_path_style=>true, :region=>"cn-north-1", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'no path style + invalid DNS name@cn-north-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.cn-north-1.amazonaws.com.cn/99a_b"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"99a_b", :region=>"cn-north-1", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'vanilla path style@af-south-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.af-south-1.amazonaws.com/bucket-name"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>true, :region=>"af-south-1", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'path style + fips@af-south-1' do
      expect = {"error"=>"Path-style addressing cannot be used with FIPS"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>true, :region=>"af-south-1", :use_dual_stack=>false, :use_fips=>true, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'path style + accelerate = error@af-south-1' do
      expect = {"error"=>"Path-style addressing cannot be used with S3 Accelerate"}
      params = EndpointParameters.new(**{:accelerate=>true, :bucket=>"bucket-name", :force_path_style=>true, :region=>"af-south-1", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'path style + dualstack@af-south-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.dualstack.af-south-1.amazonaws.com/bucket-name"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>true, :region=>"af-south-1", :use_dual_stack=>true, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'path style + arn is error@af-south-1' do
      expect = {"error"=>"Path-style addressing cannot be used with ARN buckets"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:PARTITION:s3-outposts:REGION:123456789012:outpost:op-01234567890123456:bucket:mybucket", :force_path_style=>true, :region=>"af-south-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'path style + invalid DNS name@af-south-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.af-south-1.amazonaws.com/99a_b"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"99a_b", :force_path_style=>true, :region=>"af-south-1", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'no path style + invalid DNS name@af-south-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3.af-south-1.amazonaws.com/99a_b"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"99a_b", :region=>"af-south-1", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing + private link@us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"http://bucket-name.control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>false, :endpoint=>"http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :region=>"us-west-2", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'path style + private link@us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/bucket-name"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>true, :endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :region=>"us-west-2", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'SDK::Host + FIPS@us-west-2' do
      expect = {"error"=>"Host override cannot be combined with Dualstack, FIPS, or S3 Accelerate"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>false, :endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :region=>"us-west-2", :use_dual_stack=>false, :use_fips=>true, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'SDK::Host + DualStack@us-west-2' do
      expect = {"error"=>"Host override cannot be combined with Dualstack, FIPS, or S3 Accelerate"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>false, :endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :region=>"us-west-2", :use_dual_stack=>true, :use_fips=>false, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'SDK::HOST + accelerate@us-west-2' do
      expect = {"error"=>"Host override cannot be combined with Dualstack, FIPS, or S3 Accelerate"}
      params = EndpointParameters.new(**{:accelerate=>true, :bucket=>"bucket-name", :force_path_style=>false, :endpoint=>"http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :region=>"us-west-2", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'SDK::Host + access point ARN@us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://myendpoint-123456789012.beta.example.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", :force_path_style=>false, :endpoint=>"https://beta.example.com", :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing + private link@cn-north-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>false, :endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :region=>"cn-north-1", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'path style + private link@cn-north-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/bucket-name"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>true, :endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :region=>"cn-north-1", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'SDK::Host + FIPS@cn-north-1' do
      expect = {"error"=>"Partition does not support FIPS"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>false, :endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :region=>"cn-north-1", :use_dual_stack=>false, :use_fips=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'SDK::Host + DualStack@cn-north-1' do
      expect = {"error"=>"Host override cannot be combined with Dualstack, FIPS, or S3 Accelerate"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>false, :endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :region=>"cn-north-1", :use_dual_stack=>true, :use_fips=>false, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'SDK::HOST + accelerate@cn-north-1' do
      expect = {"error"=>"S3 Accelerate cannot be used in this region"}
      params = EndpointParameters.new(**{:accelerate=>true, :bucket=>"bucket-name", :force_path_style=>false, :endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :region=>"cn-north-1", :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'SDK::Host + access point ARN@cn-north-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://myendpoint-123456789012.beta.example.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :endpoint=>"https://beta.example.com", :region=>"cn-north-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'virtual addressing + private link@af-south-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://bucket-name.control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>false, :endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :region=>"af-south-1", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'path style + private link@af-south-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/bucket-name"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>true, :endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :region=>"af-south-1", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'SDK::Host + FIPS@af-south-1' do
      expect = {"error"=>"Host override cannot be combined with Dualstack, FIPS, or S3 Accelerate"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>false, :endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :region=>"af-south-1", :use_dual_stack=>false, :use_fips=>true, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'SDK::Host + DualStack@af-south-1' do
      expect = {"error"=>"Host override cannot be combined with Dualstack, FIPS, or S3 Accelerate"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"bucket-name", :force_path_style=>false, :endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :region=>"af-south-1", :use_dual_stack=>true, :use_fips=>false, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'SDK::HOST + accelerate@af-south-1' do
      expect = {"error"=>"Host override cannot be combined with Dualstack, FIPS, or S3 Accelerate"}
      params = EndpointParameters.new(**{:accelerate=>true, :bucket=>"bucket-name", :force_path_style=>false, :endpoint=>"https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", :region=>"af-south-1", :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'SDK::Host + access point ARN@af-south-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://myendpoint-123456789012.beta.example.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :endpoint=>"https://beta.example.com", :region=>"af-south-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'vanilla access point arn@us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://myendpoint-123456789012.s3-accesspoint.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", :force_path_style=>false, :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'access point arn + FIPS@us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://myendpoint-123456789012.s3-accesspoint-fips.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", :force_path_style=>false, :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'access point arn + accelerate = error@us-west-2' do
      expect = {"error"=>"Access Points do not support S3 Accelerate"}
      params = EndpointParameters.new(**{:accelerate=>true, :bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", :force_path_style=>false, :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'access point arn + FIPS + DualStack@us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://myendpoint-123456789012.s3-accesspoint-fips.dualstack.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", :force_path_style=>false, :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>true, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'vanilla access point arn@cn-north-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://myendpoint-123456789012.s3-accesspoint.cn-north-1.amazonaws.com.cn"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :region=>"cn-north-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'access point arn + FIPS@cn-north-1' do
      expect = {"error"=>"Partition does not support FIPS"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :region=>"cn-north-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'access point arn + accelerate = error@cn-north-1' do
      expect = {"error"=>"Access Points do not support S3 Accelerate"}
      params = EndpointParameters.new(**{:accelerate=>true, :bucket=>"arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :region=>"cn-north-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'access point arn + FIPS + DualStack@cn-north-1' do
      expect = {"error"=>"Partition does not support FIPS"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :region=>"cn-north-1", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'vanilla access point arn@af-south-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://myendpoint-123456789012.s3-accesspoint.af-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :region=>"af-south-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'access point arn + FIPS@af-south-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://myendpoint-123456789012.s3-accesspoint-fips.af-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :region=>"af-south-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>true, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'access point arn + accelerate = error@af-south-1' do
      expect = {"error"=>"Access Points do not support S3 Accelerate"}
      params = EndpointParameters.new(**{:accelerate=>true, :bucket=>"arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :region=>"af-south-1", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'access point arn + FIPS + DualStack@af-south-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3", "signingRegion"=>"af-south-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://myendpoint-123456789012.s3-accesspoint-fips.dualstack.af-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint", :force_path_style=>false, :region=>"af-south-1", :requires_account_id=>true, :use_dual_stack=>true, :use_fips=>true, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'S3 outposts vanilla test' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://reports-123456789012.op-01234567890123456.s3-outposts.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-west-2", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'S3 outposts custom endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://reports-123456789012.op-01234567890123456.example.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-west-2", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports", :endpoint=>"https://example.amazonaws.com"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'outposts arn with region mismatch and UseArnRegion=false' do
      expect = {"error"=>"Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :force_path_style=>false, :use_arn_region=>false, :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'outposts arn with region mismatch, custom region and UseArnRegion=false' do
      expect = {"error"=>"Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`"}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :endpoint=>"https://example.com", :force_path_style=>false, :use_arn_region=>false, :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'outposts arn with region mismatch and UseArnRegion=true' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://myaccesspoint-123456789012.op-01234567890123456.s3-outposts.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :force_path_style=>false, :use_arn_region=>true, :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'outposts arn with region mismatch and UseArnRegion unset' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://myaccesspoint-123456789012.op-01234567890123456.s3-outposts.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :force_path_style=>false, :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'outposts arn with partition mismatch and UseArnRegion=true' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://myaccesspoint-123456789012.op-01234567890123456.s3-outposts.cn-north-1.amazonaws.com.cn"}}
      params = EndpointParameters.new(**{:accelerate=>false, :bucket=>"arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", :force_path_style=>false, :use_arn_region=>true, :region=>"us-west-2", :requires_account_id=>true, :use_dual_stack=>false, :use_fips=>false, :key=>"key"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'ARN with UseGlobalEndpoint and use-east-1 region uses the regional endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-outposts", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://reports-123456789012.op-01234567890123456.s3-outposts.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_global_endpoint=>true, :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :bucket=>"arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-01234567890123456/accesspoint/reports"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'S3 outposts does not support dualstack' do
      expect = {"error"=>"S3 Outposts does not support Dual-stack"}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>false, :use_dual_stack=>true, :accelerate=>false, :bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'S3 outposts does not support fips' do
      expect = {"error"=>"S3 Outposts does not support FIPS"}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>true, :use_dual_stack=>false, :accelerate=>false, :bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'S3 outposts does not support accelerate' do
      expect = {"error"=>"S3 Outposts does not support S3 Accelerate"}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>false, :use_dual_stack=>false, :accelerate=>true, :bucket=>"arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'object lambda @us-east-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://mybanner-123456789012.s3-object-lambda.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>false, :bucket=>"arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'object lambda @us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://mybanner-123456789012.s3-object-lambda.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-west-2", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>false, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'object lambda, colon resource deliminator @us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://mybanner-123456789012.s3-object-lambda.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-west-2", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>false, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint:mybanner"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'object lambda @us-east-1, client region us-west-2, useArnRegion=true' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://mybanner-123456789012.s3-object-lambda.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-west-2", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>true, :bucket=>"arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'object lambda @us-east-1, client region s3-external-1, useArnRegion=true' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://mybanner-123456789012.s3-object-lambda.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"s3-external-1", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>true, :bucket=>"arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'object lambda @us-east-1, client region s3-external-1, useArnRegion=false' do
      expect = {"error"=>"Invalid configuration: region from ARN `us-east-1` does not match client region `s3-external-1` and UseArnRegion is `false`"}
      params = EndpointParameters.new(**{:region=>"s3-external-1", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>false, :bucket=>"arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'object lambda @us-east-1, client region aws-global, useArnRegion=true' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://mybanner-123456789012.s3-object-lambda.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"aws-global", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>true, :bucket=>"arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'object lambda @us-east-1, client region aws-global, useArnRegion=false' do
      expect = {"error"=>"Invalid configuration: region from ARN `us-east-1` does not match client region `aws-global` and UseArnRegion is `false`"}
      params = EndpointParameters.new(**{:region=>"aws-global", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>false, :bucket=>"arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'object lambda @cn-north-1, client region us-west-2 (cross partition), useArnRegion=true' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "signingRegion"=>"cn-north-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://mybanner-123456789012.s3-object-lambda.cn-north-1.amazonaws.com.cn"}}
      params = EndpointParameters.new(**{:region=>"aws-global", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>true, :bucket=>"arn:aws-cn:s3-object-lambda:cn-north-1:123456789012:accesspoint/mybanner"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'object lambda with dualstack' do
      expect = {"error"=>"S3 Object Lambda does not support Dual-stack"}
      params = EndpointParameters.new(**{:region=>"us-west-2", :use_fips=>false, :use_dual_stack=>true, :accelerate=>false, :use_arn_region=>false, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'object lambda @us-gov-east-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://mybanner-123456789012.s3-object-lambda.us-gov-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-gov-east-1", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>false, :bucket=>"arn:aws-us-gov:s3-object-lambda:us-gov-east-1:123456789012:accesspoint/mybanner"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'object lambda @us-gov-east-1, with fips' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "signingRegion"=>"us-gov-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://mybanner-123456789012.s3-object-lambda-fips.us-gov-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-gov-east-1", :use_fips=>true, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>false, :bucket=>"arn:aws-us-gov:s3-object-lambda:us-gov-east-1:123456789012:accesspoint/mybanner"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'object lambda @cn-north-1, with fips' do
      expect = {"error"=>"Partition does not support FIPS"}
      params = EndpointParameters.new(**{:region=>"cn-north-1", :use_fips=>true, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>false, :bucket=>"arn:aws-cn:s3-object-lambda:cn-north-1:123456789012:accesspoint/mybanner"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'object lambda with accelerate' do
      expect = {"error"=>"S3 Object Lambda does not support S3 Accelerate"}
      params = EndpointParameters.new(**{:region=>"us-west-2", :use_fips=>false, :use_dual_stack=>false, :accelerate=>true, :use_arn_region=>false, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'object lambda with invalid arn - bad service and someresource' do
      expect = {"error"=>"Invalid ARN: Unrecognized format: arn:aws:sqs:us-west-2:123456789012:someresource (type: someresource)"}
      params = EndpointParameters.new(**{:region=>"us-west-2", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>false, :bucket=>"arn:aws:sqs:us-west-2:123456789012:someresource"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'object lambda with invalid arn - invalid resource' do
      expect = {"error"=>"Invalid ARN: Object Lambda ARNs only support `accesspoint` arn types, but found: `bucket_name`"}
      params = EndpointParameters.new(**{:region=>"us-west-2", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>false, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123456789012:bucket_name:mybucket"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'object lambda with invalid arn - missing region' do
      expect = {"error"=>"Invalid ARN: bucket ARN is missing a region"}
      params = EndpointParameters.new(**{:region=>"us-west-2", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>false, :bucket=>"arn:aws:s3-object-lambda::123456789012:accesspoint/mybanner"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'object lambda with invalid arn - missing account-id' do
      expect = {"error"=>"Invalid ARN: Missing account id"}
      params = EndpointParameters.new(**{:region=>"us-west-2", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>true, :bucket=>"arn:aws:s3-object-lambda:us-west-2::accesspoint/mybanner"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'object lambda with invalid arn - account id contains invalid characters' do
      expect = {"error"=>"Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `123.45678.9012`"}
      params = EndpointParameters.new(**{:region=>"us-west-2", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>true, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123.45678.9012:accesspoint:mybucket"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'object lambda with invalid arn - missing access point name' do
      expect = {"error"=>"Invalid ARN: Expected a resource of the format `accesspoint:<accesspoint name>` but no name was provided"}
      params = EndpointParameters.new(**{:region=>"us-west-2", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>true, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'object lambda with invalid arn - access point name contains invalid character: *' do
      expect = {"error"=>"Invalid ARN: The access point name may only contain a-z, A-Z, 0-9 and `-`. Found: `*`"}
      params = EndpointParameters.new(**{:region=>"us-west-2", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>true, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint:*"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'object lambda with invalid arn - access point name contains invalid character: .' do
      expect = {"error"=>"Invalid ARN: The access point name may only contain a-z, A-Z, 0-9 and `-`. Found: `my.bucket`"}
      params = EndpointParameters.new(**{:region=>"us-west-2", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>true, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint:my.bucket"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'object lambda with invalid arn - access point name contains sub resources' do
      expect = {"error"=>"Invalid ARN: The ARN may only contain a single resource component after `accesspoint`."}
      params = EndpointParameters.new(**{:region=>"us-west-2", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>true, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint:mybucket:object:foo"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'object lambda with custom endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://mybanner-123456789012.my-endpoint.com"}}
      params = EndpointParameters.new(**{:region=>"us-west-2", :use_fips=>false, :use_dual_stack=>false, :accelerate=>false, :use_arn_region=>false, :bucket=>"arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner", :endpoint=>"https://my-endpoint.com"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'WriteGetObjectResponse @ us-west-2' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-object-lambda.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :use_object_lambda_endpoint=>true, :region=>"us-west-2", :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'WriteGetObjectResponse with custom endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "signingRegion"=>"us-west-2", "disableDoubleEncoding"=>true}]}, "url"=>"https://my-endpoint.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :use_object_lambda_endpoint=>true, :endpoint=>"https://my-endpoint.com", :region=>"us-west-2", :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'WriteGetObjectResponse @ us-east-1' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-object-lambda.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :use_object_lambda_endpoint=>true, :region=>"us-east-1", :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'WriteGetObjectResponse with fips' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "signingRegion"=>"us-east-1", "disableDoubleEncoding"=>true}]}, "url"=>"https://s3-object-lambda-fips.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :use_object_lambda_endpoint=>true, :region=>"us-east-1", :use_dual_stack=>false, :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'WriteGetObjectResponse with dualstack' do
      expect = {"error"=>"S3 Object Lambda does not support Dual-stack"}
      params = EndpointParameters.new(**{:accelerate=>false, :use_object_lambda_endpoint=>true, :region=>"us-east-1", :use_dual_stack=>true, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'WriteGetObjectResponse with accelerate' do
      expect = {"error"=>"S3 Object Lambda does not support S3 Accelerate"}
      params = EndpointParameters.new(**{:accelerate=>true, :use_object_lambda_endpoint=>true, :region=>"us-east-1", :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'WriteGetObjectResponse with fips in CN' do
      expect = {"error"=>"Partition does not support FIPS"}
      params = EndpointParameters.new(**{:accelerate=>false, :region=>"cn-north-1", :use_object_lambda_endpoint=>true, :use_dual_stack=>false, :use_fips=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'WriteGetObjectResponse with invalid partition' do
      expect = {"error"=>"Invalid region: region was not a valid DNS name."}
      params = EndpointParameters.new(**{:accelerate=>false, :use_object_lambda_endpoint=>true, :region=>"not a valid DNS name", :use_dual_stack=>false, :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'WriteGetObjectResponse with an unknown partition' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingName"=>"s3-object-lambda", "disableDoubleEncoding"=>true, "signingRegion"=>"us-east.special"}]}, "url"=>"https://s3-object-lambda.us-east.special.amazonaws.com"}}
      params = EndpointParameters.new(**{:accelerate=>false, :use_object_lambda_endpoint=>true, :region=>"us-east.special", :use_dual_stack=>false, :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

  end
end
