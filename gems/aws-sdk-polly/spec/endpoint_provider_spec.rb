# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::Polly
  describe EndpointProvider do
    subject { Aws::Polly::EndpointProvider.new }

    # TODO: operation inputs

    it 'For region ap-south-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.ap-south-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-south-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-south-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.ap-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-south-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-south-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.ap-south-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-south-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-south-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.ap-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-south-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ca-central-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.ca-central-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ca-central-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ca-central-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.ca-central-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ca-central-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ca-central-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.ca-central-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ca-central-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ca-central-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.ca-central-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ca-central-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-central-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.eu-central-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-central-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-central-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.eu-central-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-central-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-central-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.eu-central-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-central-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-central-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.eu-central-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-central-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-west-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.us-west-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-west-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-west-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.us-west-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-west-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-west-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.us-west-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-west-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-west-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.us-west-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-west-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-west-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.us-west-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-west-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-west-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-west-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-west-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.us-west-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-west-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-west-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.us-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-west-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region af-south-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.af-south-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"af-south-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region af-south-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.af-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"af-south-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region af-south-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.af-south-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"af-south-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region af-south-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.af-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"af-south-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-north-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.eu-north-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-north-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-north-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.eu-north-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-north-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-north-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.eu-north-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-north-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-north-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.eu-north-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-north-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-3 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.eu-west-3.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-west-3", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-3 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.eu-west-3.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-west-3", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-3 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.eu-west-3.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-west-3", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-3 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.eu-west-3.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-west-3", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.eu-west-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-west-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.eu-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-west-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.eu-west-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-west-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.eu-west-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-west-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.eu-west-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-west-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.eu-west-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-west-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.eu-west-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"eu-west-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region eu-west-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.eu-west-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"eu-west-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-northeast-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.ap-northeast-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-northeast-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-northeast-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.ap-northeast-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-northeast-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-northeast-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.ap-northeast-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-northeast-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-northeast-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.ap-northeast-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-northeast-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-northeast-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.ap-northeast-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-northeast-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-northeast-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.ap-northeast-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-northeast-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-northeast-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.ap-northeast-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-northeast-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-northeast-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.ap-northeast-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-northeast-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region me-south-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.me-south-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"me-south-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region me-south-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.me-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"me-south-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region me-south-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.me-south-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"me-south-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region me-south-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.me-south-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"me-south-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region sa-east-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.sa-east-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"sa-east-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region sa-east-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.sa-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"sa-east-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region sa-east-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.sa-east-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"sa-east-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region sa-east-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.sa-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"sa-east-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-east-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.ap-east-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-east-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-east-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.ap-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-east-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-east-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.ap-east-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-east-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-east-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.ap-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-east-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-gov-west-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.us-gov-west-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-gov-west-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-gov-west-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.us-gov-west-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-gov-west-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-gov-west-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.us-gov-west-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-gov-west-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-gov-west-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.us-gov-west-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-gov-west-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.ap-southeast-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-southeast-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.ap-southeast-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-southeast-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.ap-southeast-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-southeast-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.ap-southeast-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-southeast-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.ap-southeast-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-southeast-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.ap-southeast-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-southeast-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.ap-southeast-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"ap-southeast-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region ap-southeast-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.ap-southeast-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"ap-southeast-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-east-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.us-east-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-east-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-east-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-east-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-east-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.us-east-1.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-east-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-east-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.us-east-1.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-east-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-east-2 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.us-east-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-east-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-east-2 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.us-east-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-east-2", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-east-2 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.us-east-2.api.aws"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"us-east-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region us-east-2 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.us-east-2.amazonaws.com"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"us-east-2", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region cn-northwest-1 with FIPS enabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.cn-northwest-1.api.amazonwebservices.com.cn"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"cn-northwest-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region cn-northwest-1 with FIPS enabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly-fips.cn-northwest-1.amazonaws.com.cn"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"cn-northwest-1", :use_fips=>true})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region cn-northwest-1 with FIPS disabled and DualStack enabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.cn-northwest-1.api.amazonwebservices.com.cn"}}
      params = EndpointParameters.new(**{:use_dual_stack=>true, :region=>"cn-northwest-1", :use_fips=>false})
      endpoint = subject.resolve_endpoint(params)
      expect(endpoint.url).to eq(expect['endpoint']['url'])
      expect(endpoint.headers).to eq(expect['endpoint']['headers'] || {})
      expect(endpoint.properties).to eq(expect['endpoint']['properties'] || {})
    end

    it 'For region cn-northwest-1 with FIPS disabled and DualStack disabled' do
      expect = {"endpoint"=>{"url"=>"https://polly.cn-northwest-1.amazonaws.com.cn"}}
      params = EndpointParameters.new(**{:use_dual_stack=>false, :region=>"cn-northwest-1", :use_fips=>false})
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

  end
end
