require 'spec_helper'
require 'stringio'
require 'pathname'

module Aws
  describe 'VERSION' do

    it 'is a semver compatible string' do
      expect(VERSION).to match(/\d+\.\d+\.\d+/)
    end

  end

  describe '.config' do

    it 'defaults to an empty hash' do
      expect(Aws.config).to eq({})
    end

    it 'does not allow assigning config object to non-hash objects' do
      expect(-> { Aws.config = [1,2,3] }).to raise_error(ArgumentError)
    end

  end

  describe '.add_service' do

    let(:api_path) { Dir.glob(File.join(API_DIR, 'ec2', '*')).last + '/api-2.json' }

    let(:dummy_credentials) { Aws::Credentials.new('akid', 'secret') }

    before(:each) do
      Aws.config[:region] = 'region-name'
    end

    after(:each) do
      Aws.send(:remove_const, :DummyService)
      Aws.config = {}
    end

    it 'defines a new service module' do
      Aws.add_service('DummyService', api: api_path)
      expect(Aws::DummyService.ancestors).to include(Aws::Service)
    end

    it 'defines an errors module' do
      Aws.add_service('DummyService', api: api_path)
      errors = Aws::DummyService::Errors
      expect(errors::ServiceError.ancestors).to include(Aws::Errors::ServiceError)
      expect(errors::FooError.ancestors).to include(Aws::Errors::ServiceError)
    end

    it 'defines a client class' do
      Aws.add_service('DummyService', api: api_path)
      expect(Aws::DummyService::Client.ancestors).to include(Seahorse::Client::Base)
    end

    it 'defines a client class that requires a region' do
      Aws.add_service('DummyService')
      Aws.config = {}
      expect {
        Aws::DummyService::Client.new
      }.to raise_error(Errors::MissingRegionError)
    end

    describe ':api option' do

      it 'accepts nil' do
        Aws.add_service('DummyService', api: nil)
        expect(DummyService::Client.api).to be_kind_of(Seahorse::Model::Api)
      end

      it 'accepts string file path values' do
        Aws.add_service('DummyService', api: api_path)
        expect(DummyService::Client.api).to be_kind_of(Seahorse::Model::Api)
      end

      it 'accpets Pathname values' do
        Aws.add_service('DummyService', api: Pathname.new(api_path))
        expect(DummyService::Client.api).to be_kind_of(Seahorse::Model::Api)
      end

      it 'accpets hash values' do
        Aws.add_service('DummyService', api: Json.load_file(api_path))
        expect(DummyService::Client.api).to be_kind_of(Seahorse::Model::Api)
      end

      it 'accpets Seahorse::Model::Api values' do
        api = Aws::Api::Builder.build(Json.load_file(api_path))
        Aws.add_service('DummyService', api: api)
        expect(DummyService::Client.api).to be(api)
      end

    end

  end

  describe '.use_bundled_cert!' do

    after(:each) do
      Aws.config = {}
    end

    it 'configures a default ssl cert bundle' do
      path = Aws.use_bundled_cert!
      expect(File.exists?(path)).to be(true)
      expect(Aws.config[:ssl_ca_bundle]).to eq(path)
    end

    it 'replaced any other default ssl ca' do
      Aws.config[:ssl_ca_directory] = 'dir'
      Aws.config[:ssl_ca_store] = 'store'
      path = Aws.use_bundled_cert!
      expect(Aws.config).to eq(ssl_ca_bundle: path)
    end


  end
end
