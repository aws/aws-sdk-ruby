# frozen_string_literal: true

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

      let(:plugin) do
        p = double('plugin')
        allow(p).to receive(:is_a?).with(kind_of(Class)).and_return(false)
        p
      end

      let(:options) do
        {
          region: 'us-east-1',
          credentials: Credentials.new('akid', 'secret'),
          plugins: [plugin]
        }
      end

      before(:each) do
        Aws.config.clear
        Aws.config = options
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

      context 'plugins' do
        it 'instructs plugins to #before_initialize' do
          expect(plugin).to receive(:before_initialize).with(GlobalConfigClient, options)
          GlobalConfigClient.new
        end

        it 'instructs plugins to #add_options' do
          expect(plugin).to receive(:add_options)
          GlobalConfigClient.new
        end

        it 'instructs plugins to #add_handlers' do
          expect(plugin).to receive(:add_handlers).
            with(kind_of(Seahorse::Client::HandlerList), kind_of(Struct))
          GlobalConfigClient.new
        end

        it 'instructs plugins to #after_initialize' do
          expect(plugin).to receive(:after_initialize).with(kind_of(Seahorse::Client::Base))
          GlobalConfigClient.new
        end

        it 'does not call methods that plugin does not respond to' do
          plugin = Object.new
          allow(plugin).to receive(:respond_to?).with(:before_initialize).and_return(false)
          allow(plugin).to receive(:respond_to?).with(:add_options).and_return(false)
          allow(plugin).to receive(:respond_to?).with(:add_handlers).and_return(false)
          allow(plugin).to receive(:respond_to?).with(:after_initialize).and_return(false)
          expect(plugin).not_to receive(:before_initialize)
          expect(plugin).not_to receive(:add_options)
          expect(plugin).not_to receive(:add_handlers)
          expect(plugin).not_to receive(:after_initialize)
          Aws.config[:plugins] = [plugin]
          GlobalConfigClient.new
        end
      end

    end
  end
end
