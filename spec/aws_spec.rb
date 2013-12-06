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
      klass = double('service-class')
      expect(klass).to receive(:add_plugin).with('p')
      expect(Aws).to receive(:service_classes).and_return(klass: klass)
      Aws.add_plugin('p')
    end

  end

  describe 'remove_plugin' do

    it 'removes a plugin from every client for each service' do
      klass = double('service-class')
      expect(klass).to receive(:remove_plugin).with('p')
      expect(Aws).to receive(:service_classes).and_return(klass: klass)
      Aws.remove_plugin('p')
    end

  end

  describe 'add_service' do

    before(:each) do
      Aws.config[:region] = 'us-east-1'
    end

    after(:each) do
      Aws.send(:remove_const, :DummyService)
      Aws.config = {}
    end

    it 'defines a new service interface' do
      Aws.add_service(:DummyService)
      expect(Aws::DummyService.ancestors).to include(Aws::Service)
    end

    it 'adds a helper method that constructs a service and client object' do
      Aws.add_service(:DummyService, ['apis/S3-2006-03-01.json'])
      svc = Aws.dummyservice(http_wire_trace: true, credentials: dummy_credentials)
      expect(Aws::DummyService.api_versions).to eq(['2006-03-01'])
      expect(svc).to be_kind_of(Seahorse::Client::Base)
      expect(svc.config.api).to be_kind_of(Seahorse::Model::Api)
      expect(svc.config.http_wire_trace).to be(true)
    end

    it 'filters the :api_version option from the client constructor' do
      Aws.add_service(:DummyService, ['apis/S3-2006-03-01.json'])
      Aws.config[:api_version] = '2007-01-01'
      Aws.config[:credentials] = dummy_credentials
      expect { Aws.dummyservice }.not_to raise_error
      expect { Aws.dummyservice(api_version: '2006-03-01') }.not_to raise_error
    end

    it 'translates apis' do
      api = Seahorse::Model::Api.new

      api_path = 'apis/source/s3-2006-03-01.json'
      expect(Api::Translator).to receive(:translate).
        with(MultiJson.load(File.read(api_path)),
          documentation: false, errors: false).and_return(api)

      Aws.add_service(:DummyService, [api_path])
      Aws::DummyService::V20060301.clear_plugins
      expect(Aws.dummyservice.config.api).to be(api)
    end

  end
end
