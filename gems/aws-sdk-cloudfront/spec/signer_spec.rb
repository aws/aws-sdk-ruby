# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module CloudFront
    describe Signer do
      let(:klass) do
        Class.new do
          include Signer
        end
      end

      let(:options) { { key_pair_id: 'CF_KEYPAIR_ID' } }
      let(:rsa_key) { OpenSSL::PKey::RSA.new(1024).to_pem }

      describe '#initialize' do
        it 'accepts RSA private key' do
          options[:private_key] = rsa_key
          expect { klass.new(options) }.to_not raise_error
        end

        it 'accepts ECDSA private key' do
          options[:private_key_path] = "#{File.dirname(__FILE__)}/ecdsa_dummy_key"
          expect { klass.new(options) }.to_not raise_error
        end

        it 'accepts private key path' do
          options[:private_key_path] = "#{File.dirname(__FILE__)}/rsa_dummy_key"
          expect { klass.new(options) }.to_not raise_error
        end

        it 'raises when key pair id is blank' do
          expect { klass.new(private_key: rsa_key) }.to raise_error(ArgumentError, /:key_pair_id must not be blank/)
        end

        it 'raises when private key type is unsupported' do
          options[:private_key] = OpenSSL::PKey::DSA.new(1024).to_pem
          expect { klass.new(options) }.to raise_error(ArgumentError, /Invalid private key/)
        end
      end
    end
  end
end
