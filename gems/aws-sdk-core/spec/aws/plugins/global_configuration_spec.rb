require_relative '../../spec_helper'

module Aws
  module Plugins
    describe GlobalConfiguration do

      GlobalConfigClient = ApiHelper.sample_service::Client
      GlobalConfigClient.instance_variable_set("@identifier", :svc)
      GlobalConfigClient.add_plugin(Class.new(Seahorse::Client::Plugin) do
        option(:endpoint, 'https://endpoint.com')
        option(:property, 'plugin-default')
      end)

      before(:each) do
        Aws.config.clear
        Aws.config[:region] = 'us-east-1'
        Aws.config[:credentials] = Credentials.new('akid', 'secret')
      end

      before(:all) do
        GlobalConfiguration.add_identifier(:svc)
      end

      after(:all) do
        Aws.config.clear
        GlobalConfiguration.identifiers.delete(:svc)
      end

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

    end
  end
end
