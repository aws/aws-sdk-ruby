# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::MarketplaceMetering
  describe EndpointProvider do
    subject { Aws::MarketplaceMetering::EndpointProvider.new }

    context 'For region ap-south-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ap-south-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-south-2", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ap-south-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-south-2", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ap-south-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-south-2", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ap-south-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-south-2", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ap-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-south-1", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ap-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-south-1", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ap-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-south-1", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-south-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ap-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-south-1", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.eu-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-south-1", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.eu-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-south-1", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.eu-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-south-1", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.eu-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-south-1", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.eu-south-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-south-2", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.eu-south-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-south-2", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.eu-south-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-south-2", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-south-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.eu-south-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-south-2", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-east-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-gov-east-1", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-east-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-gov-east-1", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-east-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.us-gov-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-gov-east-1", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-east-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.us-gov-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-gov-east-1", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-central-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.me-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"me-central-1", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-central-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.me-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"me-central-1", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-central-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.me-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"me-central-1", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-central-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.me-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"me-central-1", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ca-central-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ca-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ca-central-1", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ca-central-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ca-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ca-central-1", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ca-central-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ca-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ca-central-1", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ca-central-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ca-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ca-central-1", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.eu-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-central-1", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.eu-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-central-1", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.eu-central-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-central-1", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.eu-central-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-central-1", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.eu-central-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-central-2", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.eu-central-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-central-2", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.eu-central-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-central-2", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-central-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.eu-central-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-central-2", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.us-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-west-1", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.us-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-west-1", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.us-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-west-1", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.us-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-west-1", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.us-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-west-2", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-west-2", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.us-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-west-2", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-west-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.us-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-west-2", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region af-south-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.af-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"af-south-1", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region af-south-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.af-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"af-south-1", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region af-south-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.af-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"af-south-1", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region af-south-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.af-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"af-south-1", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-north-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.eu-north-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-north-1", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-north-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.eu-north-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-north-1", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-north-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.eu-north-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-north-1", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-north-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.eu-north-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-north-1", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-3 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.eu-west-3.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-west-3", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-3 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.eu-west-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-west-3", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-3 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.eu-west-3.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-west-3", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-3 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.eu-west-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-west-3", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.eu-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-west-2", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.eu-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-west-2", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.eu-west-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-west-2", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.eu-west-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-west-2", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-west-1", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-west-1", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.eu-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-west-1", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region eu-west-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.eu-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-west-1", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-3 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ap-northeast-3.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-northeast-3", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-3 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ap-northeast-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-northeast-3", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-3 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ap-northeast-3.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-northeast-3", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-3 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ap-northeast-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-northeast-3", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ap-northeast-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-northeast-2", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ap-northeast-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-northeast-2", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ap-northeast-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-northeast-2", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ap-northeast-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-northeast-2", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ap-northeast-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-northeast-1", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ap-northeast-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-northeast-1", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ap-northeast-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-northeast-1", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-northeast-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ap-northeast-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-northeast-1", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-south-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.me-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"me-south-1", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-south-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.me-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"me-south-1", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-south-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.me-south-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"me-south-1", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region me-south-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.me-south-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"me-south-1", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region sa-east-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.sa-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"sa-east-1", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region sa-east-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.sa-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"sa-east-1", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region sa-east-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.sa-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"sa-east-1", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region sa-east-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.sa-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"sa-east-1", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-east-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ap-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-east-1", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-east-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ap-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-east-1", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-east-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ap-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-east-1", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-east-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ap-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-east-1", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-west-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-gov-west-1", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-west-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-gov-west-1", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-west-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-gov-west-1", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-gov-west-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.us-gov-west-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-gov-west-1", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ap-southeast-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-southeast-1", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ap-southeast-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-southeast-1", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ap-southeast-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-southeast-1", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ap-southeast-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-southeast-1", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ap-southeast-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-southeast-2", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ap-southeast-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-southeast-2", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ap-southeast-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-southeast-2", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ap-southeast-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-southeast-2", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-3 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ap-southeast-3.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-southeast-3", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-3 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ap-southeast-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-southeast-3", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-3 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ap-southeast-3.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-southeast-3", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-3 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ap-southeast-3.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-southeast-3", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-4 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ap-southeast-4.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-southeast-4", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-4 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.ap-southeast-4.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-southeast-4", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-4 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ap-southeast-4.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-southeast-4", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region ap-southeast-4 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.ap-southeast-4.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"ap-southeast-4", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-1", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-1", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-1", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.us-east-1.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-1", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-2 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.us-east-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-2", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-2 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.us-east-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-2", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-2 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.us-east-2.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-2", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region us-east-2 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.us-east-2.amazonaws.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-2", :use_dual_stack=>false, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region cn-northwest-1 with FIPS enabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"cn-northwest-1", :use_dual_stack=>true, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region cn-northwest-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"cn-northwest-1", :use_dual_stack=>false, :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region cn-northwest-1 with FIPS disabled and DualStack enabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"cn-northwest-1", :use_dual_stack=>true, :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context 'For region cn-northwest-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.cn-northwest-1.amazonaws.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"cn-northwest-1", :use_dual_stack=>false, :use_fips=>false})
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
        params = EndpointParameters.new(**{:region=>"us-isob-east-1", :use_dual_stack=>true, :use_fips=>true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'For region us-isob-east-1 with FIPS enabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace-fips.us-isob-east-1.sc2s.sgov.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-isob-east-1", :use_dual_stack=>false, :use_fips=>true})
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
        params = EndpointParameters.new(**{:region=>"us-isob-east-1", :use_dual_stack=>true, :use_fips=>false})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context 'For region us-isob-east-1 with FIPS disabled and DualStack disabled' do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://metering.marketplace.us-isob-east-1.sc2s.sgov.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-isob-east-1", :use_dual_stack=>false, :use_fips=>false})
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
        params = EndpointParameters.new(**{:region=>"us-east-1", :use_dual_stack=>false, :use_fips=>false, :endpoint=>"https://example.com"})
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
        params = EndpointParameters.new(**{:region=>"us-east-1", :use_dual_stack=>false, :use_fips=>true, :endpoint=>"https://example.com"})
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
        params = EndpointParameters.new(**{:region=>"us-east-1", :use_dual_stack=>true, :use_fips=>false, :endpoint=>"https://example.com"})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

  end
end
