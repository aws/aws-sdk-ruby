# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe EC2Metadata do
    let(:ec2_metadata) { EC2Metadata.new }
    let(:endpoint) { 'http://169.254.169.254' }
    let(:metadata_path) { '/latest/meta-data/foo' }
    let(:metadata_endpoint) { "#{endpoint}#{metadata_path}" }

    def stub_get_token(token_value = 'my-token')
      stub_request(:put, "#{endpoint}/latest/api/token")
        .to_return(status: 200, body: token_value, headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' })
      token_value
    end

    describe '#initalize' do
      it 'resolves to correct endpoint based on endpoint mode' do
        ec2_metadata = EC2Metadata.new(endpoint_mode: 'IPv6')
        expect(ec2_metadata.instance_variable_get(:@endpoint)).to eq('http://[fd00:ec2::254]')

        ec2_metadata = EC2Metadata.new(endpoint_mode: 'IPv4')
        expect(ec2_metadata.instance_variable_get(:@endpoint)).to eq(endpoint)
      end

      it 'given endpoint takes precedence over endpoint mode' do
        ec2_metadata = EC2Metadata.new(endpoint_mode: 'IPv6', endpoint: endpoint)
        expect(ec2_metadata.instance_variable_get(:@endpoint)).to eq(endpoint)
      end

      it 'raises when an invalid endpoint mode is given' do
        expect { EC2Metadata.new(endpoint_mode: 'meep') }.to raise_error(ArgumentError)
      end
    end

    describe '#get' do
      it 'fetches a token before getting metadata' do
        token = stub_get_token
        stub_request(:get, metadata_endpoint)
          .with(headers: { 'x-aws-ec2-metadata-token' => token })
          .to_return(status: 200, body: "foo\n")
        expect(ec2_metadata.get(metadata_path)).to eq("foo\n")
      end

      it 'should fetch a new token if the original token is expired' do
        token = stub_get_token
        # 401 token expired
        stub_request(:get, metadata_endpoint)
          .with(headers: { 'x-aws-ec2-metadata-token' => token })
          .to_return(status: 401)
        new_token = stub_get_token('new-token')
        stub_request(:get, metadata_endpoint)
          .with(headers: { 'x-aws-ec2-metadata-token' => new_token })
          .to_return(status: 200, body: "foo\n")
        expect(ec2_metadata.get(metadata_path)).to eq("foo\n")
      end

      it 'does not retry on errors that should not be retried' do
        stub_request(:put, "#{endpoint}/latest/api/token").to_return({ status: 400 }, { status: 403 })
        expect { ec2_metadata.get(metadata_path) }.to raise_error(Aws::EC2Metadata::TokenRetrievalError)
        expect { ec2_metadata.get(metadata_path) }.to raise_error(Aws::EC2Metadata::RequestForbiddenError)

        token = stub_get_token
        stub_request(:get, metadata_endpoint)
          .with(headers: { 'x-aws-ec2-metadata-token' => token })
          .to_return(status: 404)
        expect { ec2_metadata.get(metadata_path) }.to raise_error(Aws::EC2Metadata::MetadataNotFoundError)
      end

      context 'endpoint configuration' do
        let(:endpoint) { 'http://123.123.123.123:9001' }

        it 'uses endpoint with a scheme and custom port' do
          token = stub_get_token
          ec2_metadata = EC2Metadata.new(endpoint: endpoint)
          stub_request(:get, "#{endpoint}/latest/meta-data/foo").with(headers: { 'x-aws-ec2-metadata-token' => token })
          ec2_metadata.get(metadata_path)
        end

        it 'uses endpoint without a scheme and a configured port' do
          uri = URI(endpoint)
          token = stub_get_token
          ec2_metadata = EC2Metadata.new(endpoint: uri.hostname, port: uri.port)
          stub_request(:get, "#{endpoint}/latest/meta-data/foo").with(headers: { 'x-aws-ec2-metadata-token' => token })
          ec2_metadata.get(metadata_path)
        end

        it 'endpoint takes precedence over endpoint mode' do
          token = stub_get_token
          ec2_metadata = EC2Metadata.new(endpoint_mode: 'IPv6', endpoint: endpoint)
          stub_request(:get, "#{endpoint}/latest/meta-data/foo")
            .with(headers: { 'x-aws-ec2-metadata-token' => token })
          ec2_metadata.get(metadata_path)
        end
      end

      context 'backoff strategy' do
        before(:each) do
          token = stub_get_token
          stub_request(:get, metadata_endpoint)
            .with(headers: { 'x-aws-ec2-metadata-token' => token })
            .to_raise(Errno::ECONNREFUSED)
            .to_raise(Errno::ECONNREFUSED)
            .to_raise(Errno::ECONNREFUSED)
        end

        it 'retries with a proc' do
          ec2_metadata = EC2Metadata.new(backoff: ->(n) { Kernel.sleep(2**n) })
          expect(Kernel).to receive(:sleep).with(1)
          expect(Kernel).to receive(:sleep).with(2)
          expect(Kernel).to receive(:sleep).with(4)
          expect { ec2_metadata.get(metadata_path) }.to raise_error(Errno::ECONNREFUSED)
        end

        it 'retries with a number of seconds to sleep' do
          ec2_metadata = EC2Metadata.new(backoff: 3)
          expect(Kernel).to receive(:sleep).with(3).exactly(3).times
          expect { ec2_metadata.get(metadata_path) }.to raise_error(Errno::ECONNREFUSED)
        end

        it 'defaults to exponential backoff' do
          expect(Kernel).to receive(:sleep).with(1.0)
          expect(Kernel).to receive(:sleep).with(1.2)
          expect(Kernel).to receive(:sleep).with(1.44)
          expect { ec2_metadata.get(metadata_path) }.to raise_error(Errno::ECONNREFUSED)
        end
      end
    end
  end
end
