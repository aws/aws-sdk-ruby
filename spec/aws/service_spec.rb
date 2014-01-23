require 'spec_helper'

module Aws
  describe Service do

    before(:each) do
      stub_const('Aws::Api::ServiceCustomizations::DEFAULT_PLUGINS', [])
    end

    let(:api_older) {
      Seahorse::Model::Api.new('metadata' => { 'apiVersion' => '2013-01-01'})
    }

    let(:api_newer) {
      Seahorse::Model::Api.new('metadata' => { 'apiVersion' => '2013-02-02'})
    }

    let(:apis) {{
      api_newer.version => { 'api' => api_newer },
      api_older.version => { 'api' => api_older },
    }}

    describe 'default_client_class' do

      it 'returns a client with the default api version' do
        svc = Service.define(:name, apis)
        allow(svc).to receive(:default_api_version).and_return(api_older.version)
        expect(svc.default_client_class.api).to be(api_older)
      end

    end

    describe 'add_version' do

      it 'registers a new API version' do
        svc = Class.new(Service)
        svc.add_version('2013-01-02', 'path/to/api.json')
        expect(svc.api_versions).to eq(['2013-01-02'])
      end

      it 'can be called multiple times' do
        svc = Class.new(Service)
        svc.add_version('2013-02-03', 'path/to/api2.json')
        svc.add_version('2013-01-02', 'path/to/api1.json')
        expect(svc.api_versions).to eq(['2013-01-02', '2013-02-03'])
        expect(svc.latest_api_version).to eq('2013-02-03')
      end

      it 'treats the newest api version as the default' do
        svc = Class.new(Service)
        svc.add_version('2013-02-03', 'path/to/api2.json')
        svc.add_version('2013-01-02', 'path/to/api1.json')
        expect(svc.default_api_version).to eq(svc.latest_api_version)
      end

    end

    describe '.add_plugin' do

      it 'adds a plugin to each versioned client class' do
        plugin = double('plugin')
        svc = Service.define(:name, apis)
        svc.add_plugin(plugin)
        svc.versioned_clients.each do |klass|
          expect(klass.plugins).to include(plugin)
        end
      end

    end

    describe '.remove_plugin' do

      it 'removes a plugin from each versioned client class' do
        plugin = double('plugin')
        svc = Service.define(:name, apis)
        svc.add_plugin(plugin)
        svc.remove_plugin(plugin)
        svc.versioned_clients.each do |klass|
          expect(klass.plugins).not_to include(plugin)
        end
      end

    end

    describe '.define' do

      let(:apis) { [] }

      let(:svc) { Aws.add_service(:SvcName, apis) }

      before(:each) do
        Aws.send(:remove_const, :SvcName) if Aws.const_defined?(:SvcName)
      end

      it 'defines a new client factory' do
        expect(svc.ancestors).to include(Service)
      end

      it 'populates the method name' do
        expect(svc.identifier).to eq(:svcname)
      end

      it 'accepts apis as a path to an api' do
        today = Time.now.strftime('%Y-%m-%d')
        svc.add_version(today, 'api' => 'apis/s3-2006-03-01.api.json')
        svc.new(api_version: today)
      end

      it 'accepts apis as a hash' do
        today = Time.now.strftime('%Y-%m-%d')
        api = MultiJson.load(File.read('apis/s3-2006-03-01.api.json'))
        svc.add_version(today, 'api' => api)
        svc.new(api_version: today)
      end

      it 'accepts apis as a hash' do
        today = Time.now.strftime('%Y-%m-%d')
        api = MultiJson.load(File.read('apis/s3-2006-03-01.api.json'))
        svc.add_version(today, 'api' => api)
        svc.new(api_version: today)
      end

      it 'accepts apis as Seahorse::Model::Api' do
        api = Seahorse::Model::Api.new('metadata' => {
          'apiVersion' => '2013-01-02'
        })
        svc = Service.define(:svc, { api.version => { 'api' => api }})
        expect(svc.const_get(:V20130102).new.config.api).to be(api)
      end

    end

    describe 'new' do

      before(:each) do
        Aws.send(:remove_const, :SvcName) if Aws.const_defined?(:SvcName)
      end

      after(:each) do
        Aws.config = {}
      end

      it 'builds the client class with the latest api version by default' do
        svc = Aws.add_service(:SvcName, apis)
        expect(svc.new.config.api).to be(api_newer)
        expect(svc.new).to be_kind_of(svc.const_get(:V20130202))
      end

      it 'defaults to the global configured version for the client' do
        Aws.config[:svcname] = { api_version: api_older.version }
        svc = Aws.add_service(:SvcName, apis)
        expect(svc.new.config.api).to be(api_older)
        expect(svc.new).to be_kind_of(svc.const_get(:V20130101))
      end

      it 'accepts the api verison as a constructor option' do
        Aws.config[:svcname] = { api_version: api_older.version }
        svc = Aws.add_service(:SvcName, apis)
        client = svc.new(api_version: api_newer.version)
        expect(client.config.api).to be(api_newer)
        expect(client).to be_kind_of(svc.const_get(:V20130202))
      end

      it 'uses the closest version without going over' do
        Aws.config[:api_version] = '2013-01-15'
        svc = Aws.add_service(:SvcName, apis)
        expect(svc.new.class).to be(svc.const_get(:V20130101))
      end

      it 'raises an error if the global version is preceedes all versions' do
        Aws.config[:api_version] = '2000-00-00'
        svc = Aws.add_service(:SvcName, apis)
        expect {
          expect(svc.new)
        }.to raise_error(Errors::NoSuchApiVersionError, /2000-00-00/)
      end

      it 'merges global defaults options when constructing the client' do
        Aws::EC2.add_plugin(Plugins::GlobalConfiguration)
        Aws::EC2.add_plugin(Plugins::RegionalEndpoint)
        Aws::S3.add_plugin(Plugins::GlobalConfiguration)
        Aws::S3.add_plugin(Plugins::RegionalEndpoint)

        # shared default
        Aws.config = { region: 'us-east-1' }
        expect(Aws::EC2.new.config.region).to eq('us-east-1')
        expect(Aws::S3.new.config.region).to eq('us-east-1')

        # default enabled, s3 disables
        Aws.config = {
          region: 'us-east-1',
          s3: { region: 'us-west-2' }
        }
        expect(Aws::EC2.new.config.region).to eq('us-east-1')
        expect(Aws::S3.new.config.region).to eq('us-west-2')
      end

    end

    describe 'client classes' do

      it 'returns each client class from .versioned_clients' do
        svc = Service.define(:name, apis)
        expect(svc.versioned_clients).to eq([
          svc.const_get(:V20130101),
          svc.const_get(:V20130202),
        ])
      end

      it 'defines clients for each api version' do
        target = Seahorse::Client::Base
        c = Service.define(:name, apis)
        expect(c.const_get(:V20130101).ancestors).to include(target)
      end

      it 'raises an error if the asked for client class does not exist' do
        svc = Service.define(:name)
        expect {
          svc.const_get(:V20001012)
        }.to raise_error(Errors::NoSuchApiVersionError)
      end

      it 'raises a helpful error when the api is not defined' do
        svc = Service.define(:name)
        expect {
          svc.const_get(:V20001012)
        }.to raise_error("API 2000-10-12 not defined for #{svc.name}")
      end

      it 'does not interfere with const missing' do
        svc = Service.define(:name)
        expect {
          svc.const_get(:FooBar)
        }.to raise_error(NameError, /uninitialized constant/)
      end

    end

    describe 'Errors module' do

      let(:svc) { Service.define(:name) }

      let(:errors) { svc.const_get(:Errors) }

      it 'has an errors module' do
        expect(svc.const_defined?(:Errors)).to be(true)
      end

      it 'lazily creates error classes' do
        err_class = errors.const_get(:AbcXyz)
        expect(err_class.new(nil, nil)).to be_kind_of(Errors::ServiceError)
      end

    end

    describe 'DynamicErrors module' do

      it 'allows you to create error classes named like Ruby classes' do
        mod = Module.new
        mod.extend(Aws::Errors::DynamicErrors)
        error_class = mod.error_class('Range')
        expect(error_class).not_to be(Range)
        expect(error_class).to be(mod::Range)
        expect(error_class.ancestors).to include(Errors::ServiceError)
      end

      it 'always returns the same error class given the same error code' do
        mod = Module.new
        mod.extend(Aws::Errors::DynamicErrors)
        klass2 = mod.error_class(:Range)
        klass1 = mod.error_class('Range')
        expect(klass1).to be(klass2)
      end

    end
  end
end
