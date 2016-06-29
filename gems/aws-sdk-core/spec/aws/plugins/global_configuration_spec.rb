require_relative '../../spec_helper'

module Aws
  module Plugins
    describe GlobalConfiguration do

      before(:each) do
        Aws.config.clear
      end

      before(:all) do
        GlobalConfiguration::IDENTIFIERS << :svc
      end

      after(:all) do
        GlobalConfiguration::IDENTIFIERS.delete(:svc)
      end

      GlobalConfigClient = Class.new(Aws::Client)
      GlobalConfigClient.identifier = :svc
      GlobalConfigClient.add_plugin(GlobalConfiguration)
      GlobalConfigClient.add_plugin(Class.new(Seahorse::Client::Plugin) do
        option(:endpoint, 'https://endpoint.com')
        option(:property, 'plugin-default')
      end)

      it 'gives priority to Aws.config over plugin defaults' do
        Aws.config[:property] = 'aws-default'
        expect(GlobalConfigClient.new.config.property).to eq('aws-default')
      end

      it 'gives priority to Aws.config[:svc] over Aws.config' do
        Aws.config[:property] = 'aws-default'
        Aws.config[:svc] = { property: 'svc-default' }
        expect(GlobalConfigClient.new.config.property).to eq('svc-default')
      end

      it 'gives priority to constructor options over Aws.config' do
        Aws.config[:property] = 'aws-default'
        Aws.config[:svc] = { property: 'svc-default' }
        expect(GlobalConfigClient.new(property: 'arg').config.property).to eq('arg')
      end

      it 'ignores configuration for others services in Aws.config' do
        Aws.config[:property] = 'aws-default'
        Aws.config[:svc] = { property: 'svc-default' }
        Aws.config[:s3] = { property: 's3-default' }
        expect(GlobalConfigClient.new.config.property).to eq('svc-default')
      end

      it 'keeps a map of service identifiers' do
        Aws::SERVICE_MODULE_NAMES.each do |svc|
          expect(GlobalConfiguration::IDENTIFIERS).to include(svc.downcase.to_sym)
        end
      end

    end
  end
end
