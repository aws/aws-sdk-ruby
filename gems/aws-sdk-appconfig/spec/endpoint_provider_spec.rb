# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::AppConfig
  describe EndpointProvider do
    subject { Aws::AppConfig::EndpointProvider.new }

    context 'For region ap-south-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ap-south-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"ap-south-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ap-south-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"ap-south-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ap-south-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"ap-south-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ap-south-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"ap-south-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ap-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"ap-south-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ap-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"ap-south-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ap-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"ap-south-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ap-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"ap-south-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.eu-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"eu-south-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.eu-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"eu-south-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.eu-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"eu-south-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.eu-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"eu-south-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.eu-south-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"eu-south-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.eu-south-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"eu-south-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.eu-south-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"eu-south-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.eu-south-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"eu-south-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-east-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-east-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-east-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-east-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"us-gov-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-central-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.me-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"me-central-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-central-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.me-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"me-central-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-central-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.me-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"me-central-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-central-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.me-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"me-central-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ca-central-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ca-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"ca-central-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ca-central-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ca-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"ca-central-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ca-central-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ca-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"ca-central-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ca-central-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ca-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"ca-central-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.eu-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"eu-central-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.eu-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"eu-central-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.eu-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"eu-central-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.eu-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"eu-central-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-iso-west-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"error"=>"FIPS and DualStack are enabled, but this partition does not support one or both"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"us-iso-west-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'For region us-iso-west-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.us-iso-west-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"us-iso-west-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-iso-west-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"error"=>"DualStack is enabled but this partition does not support DualStack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"us-iso-west-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'For region us-iso-west-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.us-iso-west-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"us-iso-west-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.eu-central-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"eu-central-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.eu-central-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"eu-central-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.eu-central-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"eu-central-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.eu-central-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"eu-central-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.us-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"us-west-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.us-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"us-west-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.us-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"us-west-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.us-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"us-west-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.us-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"us-west-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"us-west-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.us-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"us-west-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"us-west-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region af-south-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.af-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"af-south-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region af-south-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.af-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"af-south-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region af-south-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.af-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"af-south-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region af-south-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.af-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"af-south-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-north-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.eu-north-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"eu-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-north-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.eu-north-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"eu-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-north-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.eu-north-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"eu-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-north-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.eu-north-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"eu-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-3 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.eu-west-3.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"eu-west-3"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-3 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.eu-west-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"eu-west-3"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-3 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.eu-west-3.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"eu-west-3"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-3 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.eu-west-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"eu-west-3"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.eu-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"eu-west-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.eu-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"eu-west-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.eu-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"eu-west-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.eu-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"eu-west-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"eu-west-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"eu-west-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"eu-west-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"eu-west-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-3 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ap-northeast-3.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"ap-northeast-3"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-3 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ap-northeast-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"ap-northeast-3"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-3 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ap-northeast-3.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"ap-northeast-3"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-3 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ap-northeast-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"ap-northeast-3"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ap-northeast-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"ap-northeast-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ap-northeast-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"ap-northeast-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ap-northeast-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"ap-northeast-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ap-northeast-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"ap-northeast-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ap-northeast-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"ap-northeast-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ap-northeast-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"ap-northeast-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ap-northeast-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"ap-northeast-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ap-northeast-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"ap-northeast-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-south-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.me-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"me-south-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-south-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.me-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"me-south-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-south-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.me-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"me-south-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-south-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.me-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"me-south-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region sa-east-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.sa-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"sa-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region sa-east-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.sa-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"sa-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region sa-east-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.sa-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"sa-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region sa-east-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.sa-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"sa-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-east-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ap-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"ap-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-east-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ap-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"ap-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-east-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ap-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"ap-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-east-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ap-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"ap-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region cn-north-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region cn-north-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region cn-north-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.cn-north-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region cn-north-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.cn-north-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"cn-north-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-west-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"us-gov-west-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-west-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"us-gov-west-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-west-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"us-gov-west-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-west-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"us-gov-west-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ap-southeast-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"ap-southeast-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ap-southeast-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"ap-southeast-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ap-southeast-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"ap-southeast-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ap-southeast-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"ap-southeast-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ap-southeast-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"ap-southeast-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ap-southeast-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"ap-southeast-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ap-southeast-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"ap-southeast-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ap-southeast-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"ap-southeast-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-iso-east-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"error"=>"FIPS and DualStack are enabled, but this partition does not support one or both"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"us-iso-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'For region us-iso-east-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"us-iso-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-iso-east-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"error"=>"DualStack is enabled but this partition does not support DualStack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"us-iso-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'For region us-iso-east-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"us-iso-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-3 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ap-southeast-3.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"ap-southeast-3"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-3 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ap-southeast-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"ap-southeast-3"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-3 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ap-southeast-3.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"ap-southeast-3"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-3 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ap-southeast-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"ap-southeast-3"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-4 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ap-southeast-4.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"ap-southeast-4"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-4 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.ap-southeast-4.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"ap-southeast-4"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-4 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ap-southeast-4.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"ap-southeast-4"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-4 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.ap-southeast-4.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"ap-southeast-4"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"us-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.us-east-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"us-east-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.us-east-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"us-east-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.us-east-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"us-east-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.us-east-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"us-east-2"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region cn-northwest-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"cn-northwest-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region cn-northwest-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"cn-northwest-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region cn-northwest-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"cn-northwest-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region cn-northwest-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"cn-northwest-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-isob-east-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"error"=>"FIPS and DualStack are enabled, but this partition does not support one or both"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>true, :region=>"us-isob-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'For region us-isob-east-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig-fips.us-isob-east-1.sc2s.sgov.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"us-isob-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-isob-east-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"error"=>"DualStack is enabled but this partition does not support DualStack"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"us-isob-east-1"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'For region us-isob-east-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://appconfig.us-isob-east-1.sc2s.sgov.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"us-isob-east-1"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For custom endpoint with fips disabled and dualstack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>false, :region=>"us-east-1", :endpoint=>"https://example.com"})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For custom endpoint with fips enabled and dualstack disabled' do
      let(:expected) do
        {"error"=>"Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>false, :use_fips=>true, :region=>"us-east-1", :endpoint=>"https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'For custom endpoint with fips disabled and dualstack enabled' do
      let(:expected) do
        {"error"=>"Invalid Configuration: Dualstack and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:use_dual_stack=>true, :use_fips=>false, :region=>"us-east-1", :endpoint=>"https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

  end
end
