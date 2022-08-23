# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::EC2
  describe EndpointProvider do
    subject { Aws::EC2::EndpointProvider.new }

    # TODO: operation inputs

    it 'For region ap-south-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ap-south-2.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-south-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-south-2", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-south-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ap-south-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-south-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-south-2", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-south-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ap-south-2.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-south-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-south-2", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-south-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ap-south-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-south-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-south-2", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-south-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ap-south-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-south-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-south-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-south-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ap-south-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-south-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-south-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-south-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ap-south-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-south-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-south-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-south-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ap-south-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-south-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-south-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-south-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.eu-south-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-south-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-south-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-south-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.eu-south-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-south-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-south-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-south-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.eu-south-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-south-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-south-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-south-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.eu-south-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-south-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-south-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-south-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.eu-south-2.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-south-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-south-2", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-south-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.eu-south-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-south-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-south-2", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-south-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.eu-south-2.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-south-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-south-2", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-south-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.eu-south-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-south-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-south-2", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-gov-east-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.us-gov-east-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-gov-east-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-gov-east-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-gov-east-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.us-gov-east-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-gov-east-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-gov-east-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-gov-east-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.us-gov-east-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-gov-east-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-gov-east-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-gov-east-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.us-gov-east-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-gov-east-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-gov-east-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region me-central-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.me-central-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"me-central-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"me-central-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region me-central-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.me-central-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"me-central-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"me-central-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region me-central-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.me-central-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"me-central-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"me-central-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region me-central-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.me-central-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"me-central-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"me-central-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ca-central-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ca-central-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ca-central-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ca-central-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ca-central-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ca-central-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ca-central-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ca-central-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ca-central-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ca-central-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ca-central-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ca-central-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ca-central-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ca-central-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ca-central-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ca-central-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-central-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.eu-central-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-central-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-central-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-central-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.eu-central-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-central-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-central-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-central-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.eu-central-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-central-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-central-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-central-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.eu-central-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-central-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-central-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-iso-west-1 with FIPS enabled and DualStack enabled' do
      expect = {"error"=>"FIPS and DualStack are enabled, but this partition does not support one or both"}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-iso-west-1", :use_dual_stack=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'For region us-iso-west-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.us-iso-west-1.c2s.ic.gov", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-iso-west-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-iso-west-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-iso-west-1 with FIPS disabled and DualStack enabled' do
      expect = {"error"=>"DualStack is enabled but this partition does not support DualStack"}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-iso-west-1", :use_dual_stack=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'For region us-iso-west-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.us-iso-west-1.c2s.ic.gov", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-iso-west-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-iso-west-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-central-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.eu-central-2.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-central-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-central-2", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-central-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.eu-central-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-central-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-central-2", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-central-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.eu-central-2.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-central-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-central-2", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-central-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.eu-central-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-central-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-central-2", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-west-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.us-west-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-west-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-west-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-west-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.us-west-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-west-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-west-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-west-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.us-west-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-west-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-west-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-west-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.us-west-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-west-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-west-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-west-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.us-west-2.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-west-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-west-2", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-west-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.us-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-west-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-west-2", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-west-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.us-west-2.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-west-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-west-2", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-west-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.us-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-west-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-west-2", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region af-south-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.af-south-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"af-south-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"af-south-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region af-south-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.af-south-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"af-south-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"af-south-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region af-south-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.af-south-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"af-south-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"af-south-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region af-south-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.af-south-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"af-south-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"af-south-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-north-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.eu-north-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-north-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-north-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-north-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.eu-north-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-north-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-north-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-north-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.eu-north-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-north-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-north-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-north-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.eu-north-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-north-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-north-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-west-3 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.eu-west-3.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-west-3", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-west-3", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-west-3 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.eu-west-3.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-west-3", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-west-3", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-west-3 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.eu-west-3.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-west-3", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-west-3", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-west-3 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.eu-west-3.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-west-3", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-west-3", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-west-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.eu-west-2.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-west-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-west-2", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-west-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.eu-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-west-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-west-2", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-west-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.eu-west-2.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-west-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-west-2", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-west-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.eu-west-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-west-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-west-2", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-west-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.eu-west-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-west-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-west-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-west-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.eu-west-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-west-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"eu-west-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-west-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.eu-west-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-west-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-west-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region eu-west-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.eu-west-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"eu-west-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"eu-west-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-northeast-3 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ap-northeast-3.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-northeast-3", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-northeast-3", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-northeast-3 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ap-northeast-3.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-northeast-3", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-northeast-3", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-northeast-3 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ap-northeast-3.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-northeast-3", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-northeast-3", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-northeast-3 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ap-northeast-3.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-northeast-3", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-northeast-3", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-northeast-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ap-northeast-2.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-northeast-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-northeast-2", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-northeast-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ap-northeast-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-northeast-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-northeast-2", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-northeast-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ap-northeast-2.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-northeast-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-northeast-2", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-northeast-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ap-northeast-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-northeast-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-northeast-2", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-northeast-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ap-northeast-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-northeast-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-northeast-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-northeast-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ap-northeast-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-northeast-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-northeast-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-northeast-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ap-northeast-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-northeast-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-northeast-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-northeast-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ap-northeast-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-northeast-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-northeast-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region me-south-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.me-south-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"me-south-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"me-south-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region me-south-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.me-south-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"me-south-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"me-south-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region me-south-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.me-south-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"me-south-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"me-south-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region me-south-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.me-south-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"me-south-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"me-south-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region sa-east-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.sa-east-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"sa-east-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"sa-east-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region sa-east-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.sa-east-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"sa-east-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"sa-east-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region sa-east-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.sa-east-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"sa-east-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"sa-east-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region sa-east-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.sa-east-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"sa-east-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"sa-east-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-east-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ap-east-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-east-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-east-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-east-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ap-east-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-east-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-east-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-east-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ap-east-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-east-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-east-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-east-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ap-east-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-east-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-east-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region cn-north-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.cn-north-1.api.amazonwebservices.com.cn", "properties"=>{"authSchemes"=>[{"signingRegion"=>"cn-north-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"cn-north-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region cn-north-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.cn-north-1.amazonaws.com.cn", "properties"=>{"authSchemes"=>[{"signingRegion"=>"cn-north-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"cn-north-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region cn-north-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.cn-north-1.api.amazonwebservices.com.cn", "properties"=>{"authSchemes"=>[{"signingRegion"=>"cn-north-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"cn-north-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region cn-north-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.cn-north-1.amazonaws.com.cn", "properties"=>{"authSchemes"=>[{"signingRegion"=>"cn-north-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"cn-north-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-gov-west-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.us-gov-west-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-gov-west-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-gov-west-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-gov-west-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.us-gov-west-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-gov-west-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-gov-west-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-gov-west-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.us-gov-west-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-gov-west-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-gov-west-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-gov-west-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.us-gov-west-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-gov-west-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-gov-west-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-southeast-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ap-southeast-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-southeast-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-southeast-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-southeast-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ap-southeast-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-southeast-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-southeast-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-southeast-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ap-southeast-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-southeast-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-southeast-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-southeast-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ap-southeast-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-southeast-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-southeast-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-southeast-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ap-southeast-2.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-southeast-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-southeast-2", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-southeast-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ap-southeast-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-southeast-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-southeast-2", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-southeast-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ap-southeast-2.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-southeast-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-southeast-2", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-southeast-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ap-southeast-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-southeast-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-southeast-2", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-iso-east-1 with FIPS enabled and DualStack enabled' do
      expect = {"error"=>"FIPS and DualStack are enabled, but this partition does not support one or both"}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-iso-east-1", :use_dual_stack=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'For region us-iso-east-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.us-iso-east-1.c2s.ic.gov", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-iso-east-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-iso-east-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-iso-east-1 with FIPS disabled and DualStack enabled' do
      expect = {"error"=>"DualStack is enabled but this partition does not support DualStack"}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-iso-east-1", :use_dual_stack=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'For region us-iso-east-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.us-iso-east-1.c2s.ic.gov", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-iso-east-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-iso-east-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-southeast-3 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ap-southeast-3.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-southeast-3", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-southeast-3", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-southeast-3 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ap-southeast-3.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-southeast-3", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-southeast-3", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-southeast-3 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ap-southeast-3.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-southeast-3", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-southeast-3", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-southeast-3 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ap-southeast-3.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-southeast-3", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-southeast-3", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-southeast-4 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ap-southeast-4.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-southeast-4", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-southeast-4", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-southeast-4 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.ap-southeast-4.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-southeast-4", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"ap-southeast-4", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-southeast-4 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ap-southeast-4.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-southeast-4", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-southeast-4", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region ap-southeast-4 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.ap-southeast-4.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"ap-southeast-4", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"ap-southeast-4", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-east-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.us-east-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-east-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-east-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-east-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.us-east-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-east-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-east-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-east-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.us-east-1.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-east-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-east-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-east-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.us-east-1.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-east-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-east-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-east-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.us-east-2.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-east-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-east-2", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-east-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.us-east-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-east-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-east-2", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-east-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.us-east-2.api.aws", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-east-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-east-2", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-east-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.us-east-2.amazonaws.com", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-east-2", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-east-2", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region cn-northwest-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.cn-northwest-1.api.amazonwebservices.com.cn", "properties"=>{"authSchemes"=>[{"signingRegion"=>"cn-northwest-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"cn-northwest-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region cn-northwest-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.cn-northwest-1.amazonaws.com.cn", "properties"=>{"authSchemes"=>[{"signingRegion"=>"cn-northwest-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"cn-northwest-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region cn-northwest-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.cn-northwest-1.api.amazonwebservices.com.cn", "properties"=>{"authSchemes"=>[{"signingRegion"=>"cn-northwest-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"cn-northwest-1", :use_dual_stack=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region cn-northwest-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.cn-northwest-1.amazonaws.com.cn", "properties"=>{"authSchemes"=>[{"signingRegion"=>"cn-northwest-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"cn-northwest-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-isob-east-1 with FIPS enabled and DualStack enabled' do
      expect = {"error"=>"FIPS and DualStack are enabled, but this partition does not support one or both"}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-isob-east-1", :use_dual_stack=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'For region us-isob-east-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2-fips.us-isob-east-1.sc2s.sgov.gov", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-isob-east-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>true, :region=>"us-isob-east-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

    it 'For region us-isob-east-1 with FIPS disabled and DualStack enabled' do
      expect = {"error"=>"DualStack is enabled but this partition does not support DualStack"}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-isob-east-1", :use_dual_stack=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(RuntimeError, expect['error'])
    end

    it 'For region us-isob-east-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://ec2.us-isob-east-1.sc2s.sgov.gov", "properties"=>{"authSchemes"=>[{"signingRegion"=>"us-isob-east-1", "signingName"=>"ec2", "name"=>"sigv4"}]}, "headers"=>{}}}
      params = EndpointParameters.new(**{:use_fips=>false, :region=>"us-isob-east-1", :use_dual_stack=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'])
      expect(endpoint.properties).to eq(expect['endpoint']['properties'])
    end

  end
end
