# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::EventBridge
  describe EndpointProvider do
    subject { Aws::EventBridge::EndpointProvider.new }

    # TODO: operation inputs

    it 'For region ap-south-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ap-south-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-south-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-south-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ap-south-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-south-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-south-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ap-south-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-south-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-south-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ap-south-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-south-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-south-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ap-south-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-south-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-south-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ap-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-south-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-south-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ap-south-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-south-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-south-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ap-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-south-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-south-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.eu-south-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-south-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-south-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.eu-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-south-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-south-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.eu-south-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-south-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-south-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.eu-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-south-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-south-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.eu-south-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-south-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-south-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.eu-south-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-south-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-south-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.eu-south-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-south-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-south-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.eu-south-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-south-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-gov-east-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.us-gov-east-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-gov-east-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-gov-east-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.us-gov-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-gov-east-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-gov-east-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.us-gov-east-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-gov-east-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-gov-east-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.us-gov-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-gov-east-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region me-central-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.me-central-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"me-central-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region me-central-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.me-central-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"me-central-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region me-central-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.me-central-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"me-central-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region me-central-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.me-central-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"me-central-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ca-central-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ca-central-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ca-central-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ca-central-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ca-central-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ca-central-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ca-central-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ca-central-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ca-central-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ca-central-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ca-central-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ca-central-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-central-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.eu-central-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-central-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-central-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.eu-central-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-central-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-central-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.eu-central-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-central-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-central-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.eu-central-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-central-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-iso-west-1 with FIPS enabled and DualStack enabled' do
      expect = {"error"=>"FIPS and DualStack are enabled, but this partition does not support one or both"}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-iso-west-1", :use_fips=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'For region us-iso-west-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.us-iso-west-1.c2s.ic.gov"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-iso-west-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-iso-west-1 with FIPS disabled and DualStack enabled' do
      expect = {"error"=>"DualStack is enabled but this partition does not support DualStack"}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-iso-west-1", :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'For region us-iso-west-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.us-iso-west-1.c2s.ic.gov"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-iso-west-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-central-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.eu-central-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-central-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-central-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.eu-central-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-central-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-central-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.eu-central-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-central-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-central-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.eu-central-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-central-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-west-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.us-west-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-west-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-west-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.us-west-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-west-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-west-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.us-west-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-west-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-west-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.us-west-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-west-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-west-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.us-west-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-west-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-west-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-west-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-west-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.us-west-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-west-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-west-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-west-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region af-south-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.af-south-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"af-south-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region af-south-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.af-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"af-south-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region af-south-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.af-south-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"af-south-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region af-south-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.af-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"af-south-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-north-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.eu-north-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-north-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-north-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.eu-north-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-north-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-north-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.eu-north-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-north-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-north-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.eu-north-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-north-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-3 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.eu-west-3.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-west-3", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-3 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.eu-west-3.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-west-3", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-3 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.eu-west-3.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-west-3", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-3 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.eu-west-3.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-west-3", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.eu-west-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-west-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.eu-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-west-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.eu-west-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-west-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.eu-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-west-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.eu-west-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-west-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.eu-west-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-west-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.eu-west-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-west-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.eu-west-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-west-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-northeast-3 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ap-northeast-3.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-northeast-3", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-northeast-3 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ap-northeast-3.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-northeast-3", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-northeast-3 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ap-northeast-3.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-northeast-3", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-northeast-3 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ap-northeast-3.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-northeast-3", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-northeast-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ap-northeast-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-northeast-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-northeast-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ap-northeast-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-northeast-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-northeast-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ap-northeast-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-northeast-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-northeast-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ap-northeast-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-northeast-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-northeast-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ap-northeast-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-northeast-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-northeast-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ap-northeast-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-northeast-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-northeast-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ap-northeast-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-northeast-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-northeast-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ap-northeast-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-northeast-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region me-south-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.me-south-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"me-south-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region me-south-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.me-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"me-south-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region me-south-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.me-south-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"me-south-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region me-south-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.me-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"me-south-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region sa-east-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.sa-east-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"sa-east-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region sa-east-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.sa-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"sa-east-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region sa-east-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.sa-east-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"sa-east-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region sa-east-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.sa-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"sa-east-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-east-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ap-east-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-east-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-east-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ap-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-east-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-east-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ap-east-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-east-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-east-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ap-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-east-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region cn-north-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"cn-north-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region cn-north-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.cn-north-1.amazonaws.com.cn"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"cn-north-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region cn-north-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.cn-north-1.api.amazonwebservices.com.cn"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"cn-north-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region cn-north-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.cn-north-1.amazonaws.com.cn"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"cn-north-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-gov-west-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.us-gov-west-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-gov-west-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-gov-west-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.us-gov-west-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-gov-west-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-gov-west-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.us-gov-west-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-gov-west-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-gov-west-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.us-gov-west-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-gov-west-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ap-southeast-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-southeast-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ap-southeast-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-southeast-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ap-southeast-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-southeast-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ap-southeast-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-southeast-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ap-southeast-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-southeast-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ap-southeast-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-southeast-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ap-southeast-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-southeast-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ap-southeast-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-southeast-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-iso-east-1 with FIPS enabled and DualStack enabled' do
      expect = {"error"=>"FIPS and DualStack are enabled, but this partition does not support one or both"}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-iso-east-1", :use_fips=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'For region us-iso-east-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.us-iso-east-1.c2s.ic.gov"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-iso-east-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-iso-east-1 with FIPS disabled and DualStack enabled' do
      expect = {"error"=>"DualStack is enabled but this partition does not support DualStack"}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-iso-east-1", :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'For region us-iso-east-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.us-iso-east-1.c2s.ic.gov"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-iso-east-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-3 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ap-southeast-3.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-southeast-3", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-3 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ap-southeast-3.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-southeast-3", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-3 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ap-southeast-3.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-southeast-3", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-3 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ap-southeast-3.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-southeast-3", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-4 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ap-southeast-4.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-southeast-4", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-4 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.ap-southeast-4.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-southeast-4", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-4 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ap-southeast-4.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-southeast-4", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-4 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.ap-southeast-4.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-southeast-4", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-east-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.us-east-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-east-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-east-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-east-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-east-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.us-east-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-east-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-east-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-east-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-east-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.us-east-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-east-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-east-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.us-east-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-east-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-east-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.us-east-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-east-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-east-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.us-east-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-east-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region cn-northwest-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.cn-northwest-1.api.amazonwebservices.com.cn"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"cn-northwest-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region cn-northwest-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.cn-northwest-1.amazonaws.com.cn"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"cn-northwest-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region cn-northwest-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://events.cn-northwest-1.api.amazonwebservices.com.cn"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"cn-northwest-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region cn-northwest-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.cn-northwest-1.amazonaws.com.cn"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"cn-northwest-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-isob-east-1 with FIPS enabled and DualStack enabled' do
      expect = {"error"=>"FIPS and DualStack are enabled, but this partition does not support one or both"}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-isob-east-1", :use_fips=>true})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'For region us-isob-east-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events-fips.us-isob-east-1.sc2s.sgov.gov"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-isob-east-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-isob-east-1 with FIPS disabled and DualStack enabled' do
      expect = {"error"=>"DualStack is enabled but this partition does not support DualStack"}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-isob-east-1", :use_fips=>false})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'For region us-isob-east-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://events.us-isob-east-1.sc2s.sgov.gov"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-isob-east-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For custom endpoint with fips disabled and dualstack disabled' do
      expect = {"endpoint"=>{"url"=>"https://example.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-east-1", :use_fips=>false, :endpoint=>"https://example.com"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For custom endpoint with fips enabled and dualstack disabled' do
      expect = {"error"=>"Invalid Configuration: FIPS and custom endpoint are not supported"}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-east-1", :use_fips=>true, :endpoint=>"https://example.com"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'For custom endpoint with fips disabled and dualstack enabled' do
      expect = {"error"=>"Invalid Configuration: Dualstack and custom endpoint are not supported"}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-east-1", :use_fips=>false, :endpoint=>"https://example.com"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Valid endpointId with fips disabled and dualstack disabled' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"signingName"=>"eventbridge", "signingRegionSet"=>["*"], "name"=>"sigv4a"}]}, "url"=>"https://abc123.456def.endpoint.events.amazonaws.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>false, :use_dual_stack=>false, :endpoint_id=>"abc123.456def"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'Valid EndpointId with dualstack disabled and fips enabled' do
      expect = {"error"=>"Invalid Configuration: FIPS is not supported with EventBridge multi-region endpoints."}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>true, :use_dual_stack=>false, :endpoint_id=>"abc123.456def"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Valid EndpointId with dualstack enabled and fips enabled' do
      expect = {"error"=>"Invalid Configuration: FIPS is not supported with EventBridge multi-region endpoints."}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>true, :use_dual_stack=>true, :endpoint_id=>"abc123.456def"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Invalid EndpointId' do
      expect = {"error"=>"EndpointId must be a valid host label."}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>false, :use_dual_stack=>false, :endpoint_id=>"badactor.com?foo=bar"})
      expect do
        subject.resolve_endpoint(params)
      end.to raise_error(ArgumentError, expect['error'])
    end

    it 'Valid endpointId with fips disabled and dualstack true' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"signingName"=>"eventbridge", "signingRegionSet"=>["*"], "name"=>"sigv4a"}]}, "url"=>"https://abc123.456def.endpoint.events.api.aws"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>false, :use_dual_stack=>true, :endpoint_id=>"abc123.456def"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'Valid endpointId with custom sdk endpoint' do
      expect = {"endpoint"=>{"properties"=>{"authSchemes"=>[{"signingName"=>"eventbridge", "signingRegionSet"=>["*"], "name"=>"sigv4a"}]}, "url"=>"https://example.com"}}
      params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>false, :use_dual_stack=>true, :endpoint_id=>"abc123.456def", :endpoint=>"https://example.com"})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

  end
end
