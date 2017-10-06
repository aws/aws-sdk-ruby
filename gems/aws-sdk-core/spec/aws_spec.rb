require_relative 'spec_helper'
require 'stringio'
require 'pathname'

module Aws
  describe 'VERSION' do

    it 'is a semver compatible string' do
      expect(CORE_GEM_VERSION).to match(/\d+\.\d+\.\d+/)
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

  describe '.use_bundled_cert!' do

    after(:each) do
      Aws.config = {}
    end

    it 'configures a default ssl cert bundle' do
      path = Aws.use_bundled_cert!
      expect(File.exist?(path)).to be(true)
      expect(Aws.config[:ssl_ca_bundle]).to eq(path)
    end

    it 'replaced any other default ssl ca' do
      Aws.config[:ssl_ca_directory] = 'dir'
      Aws.config[:ssl_ca_store] = 'store'
      path = Aws.use_bundled_cert!
      expect(Aws.config).to eq(ssl_ca_bundle: path)
    end

  end

  describe '.empty_connection_pools!' do
    it 'closes any existing sessions' do
      endpoint = "http://example.com"
      conn_pool = Seahorse::Client::NetHttp::ConnectionPool.for({})
      session = conn_pool.send(:start_session, endpoint)
      conn_pool.instance_variable_get(:@pool)[endpoint] = [session]
      expect(conn_pool.size).to eq(1)

      Aws.empty_connection_pools!
      expect(conn_pool.size).to eq(0)
    end
  end

  describe 'add_plugins' do

    let(:dir) { File.expand_path('../fixtures/apis', __FILE__) }

    it 'adds custom plugins to service' do
      SvcTest = ApiHelper.sample_service(
        api: Json.load_file("#{dir}/s3.json")
      )
      Aws.add_plugins({
        'YellowSeahorseFixtures::Plugin' => File.join(dir, "../example.com/plugin.rb")
      }, SvcTest)
      client = SvcTest::Client.new(region: 'foo')
      expect(client.class.plugins).to include(YellowSeahorseFixtures::Plugin)
    end

    it 'adds custom plugins to all available AWS service' do
      Aws::Svc1 = ApiHelper.sample_service(
        api: Json.load_file("#{dir}/s3.json")
      )
      Aws::Svc2 = ApiHelper.sample_service(
        api: Json.load_file("#{dir}/dynamodb.json")
      )
      Aws.add_plugins({
        'YellowSeahorseFixtures::Plugin' => File.join(dir, "../example.com/plugin.rb")
      })

      client1 = Aws::Svc1::Client.new(region: 'foo')
      expect(client1.class.plugins).to include(YellowSeahorseFixtures::Plugin)
      client2 = Aws::Svc2::Client.new(region: 'foo')
      expect(client2.class.plugins).to include(YellowSeahorseFixtures::Plugin)
    end
  end
end
