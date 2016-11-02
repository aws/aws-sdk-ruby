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
end
