# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::CloudFrontKeyValueStore
  describe EndpointProvider do
    subject { Aws::CloudFrontKeyValueStore::EndpointProvider.new }

    context 'FIPS should error' do
      let(:expected) do
        {"error"=>"Invalid Configuration: FIPS is not supported with CloudFront-KeyValueStore."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_fips=>true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'KVS ARN must be provided to use this service' do
      let(:expected) do
        {"error"=>"KVS ARN must be provided to use this service"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'KVS ARN must be a valid ARN' do
      let(:expected) do
        {"error"=>"KVS ARN must be a valid ARN"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:kvs_arn=>"not-a-valid-arn"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Provided ARN was not a valid CloudFront Service ARN. Found: `notcloudfront`' do
      let(:expected) do
        {"error"=>"Provided ARN is not a valid CloudFront Service ARN. Found: `notcloudfront`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:kvs_arn=>"arn:aws:notcloudfront::123456789012:key-value-store/my-first-kvs-e10b1dce4f394248811e77167e0451ba"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Provided ARN must be a global resource ARN. Found: `us-west-2`' do
      let(:expected) do
        {"error"=>"Provided ARN must be a global resource ARN. Found: `us-west-2`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:kvs_arn=>"arn:aws:cloudfront:us-west-2:123456789012:key-value-store/my-first-kvs-e10b1dce4f394248811e77167e0451ba"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'ARN resource type is invalid. Expected `key-value-store`, found: `some-other-resource-type`' do
      let(:expected) do
        {"error"=>"ARN resource type is invalid. Expected `key-value-store`, found: `some-other-resource-type`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:kvs_arn=>"arn:aws:cloudfront::123456789012:some-other-resource-type/my-first-kvs-e10b1dce4f394248811e77167e0451ba"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'CloudFront-KeyValueStore is not supported in partition `aws-cn`' do
      let(:expected) do
        {"error"=>"CloudFront-KeyValueStore is not supported in partition `aws-cn`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:kvs_arn=>"arn:aws-cn:cloudfront::123456789012:key-value-store/my-first-kvs-e10b1dce4f394248811e77167e0451ba"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'CloudFront-KeyValueStore is not supported in partition `aws-us-gov`' do
      let(:expected) do
        {"error"=>"CloudFront-KeyValueStore is not supported in partition `aws-us-gov`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:kvs_arn=>"arn:aws-us-gov:cloudfront::123456789012:key-value-store/my-first-kvs-e10b1dce4f394248811e77167e0451ba"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Valid account based endpoint' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"signingName"=>"cloudfront-keyvaluestore", "name"=>"sigv4a", "signingRegionSet"=>["*"]}]}, "url"=>"https://123456789012.cloudfront-kvs.global.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:kvs_arn=>"arn:aws:cloudfront::123456789012:key-value-store/my-first-kvs-e10b1dce4f394248811e77167e0451ba"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Valid account based endpoint, with SDK region' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"signingName"=>"cloudfront-keyvaluestore", "name"=>"sigv4a", "signingRegionSet"=>["*"]}]}, "url"=>"https://123456789012.cloudfront-kvs.global.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:kvs_arn=>"arn:aws:cloudfront::123456789012:key-value-store/my-first-kvs-e10b1dce4f394248811e77167e0451ba", :region=>"us-west-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Valid ARN, different partition, should error' do
      let(:expected) do
        {"error"=>"Client was configured for partition `aws-cn` but Kvs ARN has `aws`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:kvs_arn=>"arn:aws:cloudfront::123456789012:key-value-store/my-first-kvs-e10b1dce4f394248811e77167e0451ba", :region=>"cn-north-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Valid account based endpoint with FIPS, should error' do
      let(:expected) do
        {"error"=>"Invalid Configuration: FIPS is not supported with CloudFront-KeyValueStore."}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:kvs_arn=>"arn:aws:cloudfront::123456789012:key-value-store/my-first-kvs-e10b1dce4f394248811e77167e0451ba", :region=>"us-east-1", :use_fips=>true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'Custom sdk endpoint override' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"signingName"=>"cloudfront-keyvaluestore", "name"=>"sigv4a", "signingRegionSet"=>["*"]}]}, "url"=>"https://123456789012.my-override.example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:kvs_arn=>"arn:aws:cloudfront::123456789012:key-value-store/my-first-kvs-e10b1dce4f394248811e77167e0451ba", :region=>"us-east-1", :endpoint=>"https://my-override.example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Custom sdk endpoint override with path and http' do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"signingName"=>"cloudfront-keyvaluestore", "name"=>"sigv4a", "signingRegionSet"=>["*"]}]}, "url"=>"http://123456789012.my-override.example.com/custom-path"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:kvs_arn=>"arn:aws:cloudfront::123456789012:key-value-store/my-first-kvs-e10b1dce4f394248811e77167e0451ba", :endpoint=>"http://my-override.example.com/custom-path"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'Custom override with different partition should error' do
      let(:expected) do
        {"error"=>"Client was configured for partition `aws-us-gov` but Kvs ARN has `aws`"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:kvs_arn=>"arn:aws:cloudfront::123456789012:key-value-store/my-first-kvs-e10b1dce4f394248811e77167e0451ba", :region=>"us-gov-east-1", :endpoint=>"https://my-override.example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

  end
end
