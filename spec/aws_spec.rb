require 'spec_helper'

module Aws
  describe 'VERSION' do

    it 'is a semver compatible string' do
      expect(VERSION).to match(/\d+\.\d+\.\d+/)
    end

  end

  describe 'config' do

    it 'defaults to an empty hash' do
      expect(Aws.config).to eq({})
    end

    it 'does not allow assigning config object to non-hash objects' do
      expect(-> { Aws.config = [1,2,3] }).to raise_error(ArgumentError)
    end

  end

  describe 'add_plugin' do

    it 'adds a plugin to every client for all services' do
      client_class = double('client-class')
      svc_module = Module.new
      svc_module.const_set(:Client, client_class)
      allow(Aws).to receive(:service_modules).and_return(klass: svc_module)
      expect(svc_module::Client).to receive(:add_plugin).with('p')
      Aws.add_plugin('p')
    end

  end

  describe 'remove_plugin' do

    it 'removes a plugin from every client for each service' do
      client_class = double('client-class')
      svc_module = Module.new
      svc_module.const_set(:Client, client_class)
      allow(Aws).to receive(:service_modules).and_return(klass: svc_module)
      expect(svc_module::Client).to receive(:remove_plugin).with('p')
      Aws.remove_plugin('p')
    end

  end

  describe 'add_service' do

    let(:dummy_credentials) { Aws::Credentials.new('akid', 'secret') }

    before(:each) do
      Aws.config[:region] = 'region-name'
    end

    after(:each) do
      Aws.send(:remove_const, :DummyService)
      Aws.config = {}
    end

    it 'defines a new service interface' do
      Aws.add_service('DummyService', 'api' => 'apis/s3-2006-03-01.api.json')
      expect(Aws::DummyService.ancestors).to include(Aws::Service)
    end

    it 'adds a helper method that constructs a service and client object' do
      Aws.add_service('DummyService', 'api' => 'apis/s3-2006-03-01.api.json')
      svc = Aws.dummyservice(http_wire_trace: true, credentials: dummy_credentials)
      expect(svc).to be_kind_of(Seahorse::Client::Base)
      expect(svc.config.api).to be_kind_of(Seahorse::Model::Api)
      expect(svc.config.http_wire_trace).to be(true)
    end

    it 'adds the helper method to Aws (not Module)' do
      Aws.add_service('DummyService', 'api' => 'apis/s3-2006-03-01.api.json')
      expect(Aws).to respond_to(:dummyservice)
      expect(Aws.class).not_to respond_to(:dummyservice)
    end

  end
end
