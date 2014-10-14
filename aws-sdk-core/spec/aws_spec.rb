require 'spec_helper'
require 'stringio'

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

  describe 'add_service' do

    let(:dummy_credentials) { Aws::Credentials.new('akid', 'secret') }

    before(:each) do
      Aws.config[:region] = 'region-name'
    end

    after(:each) do
      Aws.send(:remove_const, :DummyService)
      Aws.config = {}
    end

    it 'defines a new service module' do
      Aws.add_service('DummyService', api: File.join(GEM_ROOT, 'apis/EC2.api.json'))
      expect(Aws::DummyService.ancestors).to include(Aws::Service)
    end

    it 'defines an errors module' do
      Aws.add_service('DummyService', api: File.join(GEM_ROOT, 'apis/EC2.api.json'))
      errors = Aws::DummyService::Errors
      expect(errors::ServiceError.ancestors).to include(Aws::Errors::ServiceError)
      expect(errors::FooError.ancestors).to include(Aws::Errors::ServiceError)
    end

    it 'defines a client class' do
      Aws.add_service('DummyService', api: File.join(GEM_ROOT, 'apis/EC2.api.json'))
      expect(Aws::DummyService::Client.ancestors).to include(Seahorse::Client::Base)
    end

    it 'defines a client class that requires a region' do
      Aws.add_service('DummyService')
      Aws.config = {}
      expect {
        Aws::DummyService::Client.new
      }.to raise_error(Errors::MissingRegionError)
    end

  end
end
