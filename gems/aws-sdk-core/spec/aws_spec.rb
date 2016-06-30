require_relative 'spec_helper'
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

  describe '.eager_autoload!' do

    it 'loads all services by default' do
      pending('only works when run with every service present')
      raise 'failure'
      eager_loader = Aws.eager_autoload!
      BuildTools::Services.each do |svc|
        expect(eager_loader.loaded).to include(Aws.const_get(svc.name))
      end
    end

    it 'can load fewer than all services' do
      pending('only works when run in isolation')
      raise 'failure'
      eager_loader = Aws.eager_autoload!(services:['S3', 'IAM'])
      expect(eager_loader.loaded).to include(Aws::S3)
      expect(eager_loader.loaded).to include(Aws::IAM)
      expect(eager_loader.loaded).not_to include(Aws::EC2)
    end

    it  'loads non-service modules' do
      eager_loader = Aws.eager_autoload!
      expect(eager_loader.loaded).to include(Aws::Xml)
    end

  end
end
