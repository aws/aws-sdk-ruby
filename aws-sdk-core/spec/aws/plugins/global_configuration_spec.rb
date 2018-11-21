require 'spec_helper'

module Aws
  module Plugins
    describe GlobalConfiguration do

      def plugin(&block)
        Class.new(Seahorse::Client::Plugin, &block)
      end

      before(:each) do
        # to silence warnings about Svc getting redefined each pass
        Aws.send(:remove_const, :Svc) if Aws.const_defined?(:Svc)
      end

      before(:each) do
        api = Aws::Api::Builder.build('metadata' => {
          'apiVersion' => '2013-01-01',
        })
        svc = Aws.add_service(:Svc, api: api)::Client
        svc.remove_plugin(RegionalEndpoint)
        svc.remove_plugin(EndpointDiscovery)
        svc.remove_plugin(RequestSigner)
        svc.add_plugin(GlobalConfiguration)
        svc.add_plugin(plugin { option(:endpoint, 'http://foo.com') })
        svc.add_plugin(plugin { option(:regional_endpoint, false) })
        svc.add_plugin(plugin { option(:property, 'plugin-default') })
        allow(Aws).to receive(:config).and_return({})
      end

      it 'gives priority to Aws.config over plugin defaults' do
        Aws.config[:property] = 'aws-default'
        expect(Aws::Svc::Client.new.config.property).to eq('aws-default')
      end

      it 'gives priority to Aws.config[:svc] over Aws.config' do
        Aws.config[:property] = 'aws-default'
        Aws.config[:svc] = { property: 'svc-default' }
        expect(Aws::Svc::Client.new.config.property).to eq('svc-default')
      end

      it 'gives priority to constructor options over Aws.config' do
        Aws.config[:property] = 'aws-default'
        Aws.config[:svc] = { property: 'svc-default' }
        expect(Aws::Svc::Client.new(property: 'arg').config.property).to eq('arg')
      end

      it 'ignores configuration for others services in Aws.config' do
        Aws.config[:property] = 'aws-default'
        Aws.config[:svc] = { property: 'svc-default' }
        Aws.config[:s3] = { property: 's3-default' }
        expect(Aws::Svc::Client.new.config.property).to eq('svc-default')
      end

      it 'keeps a map of service identifiers' do
        Aws::SERVICE_MODULE_NAMES.each do |name|
          identifier = name.downcase.to_sym
          expect(GlobalConfiguration::IDENTIFIERS).to include(identifier)
        end
      end

    end
  end
end
