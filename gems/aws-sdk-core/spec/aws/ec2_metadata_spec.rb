# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe EC2Metadata do
    let(:client) { EC2Metadata.new }
    let(:endpoint) { 'http://169.254.169.254' }
    let(:metadata_path) { '/latest/meta-data/foo' }
    let(:metadata_endpoint) { "#{endpoint}/latest/meta-data/foo" }

    def stub_get_token(token_value = 'my-token')
      stub_request(:put, "#{endpoint}/latest/api/token")
        .to_return(
          status: 200,
          body: token_value,
          headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' }
        )
      token_value
    end

    describe '#initalize' do
      it 'uses default values when options given' do
        expect(client.instance_variable_get(:@token_ttl)).to eq(21_600)
        expect(client.instance_variable_get(:@retries)).to eq(3)
        expect(client.instance_variable_get(:@endpoint)).to eq(endpoint)
        expect(client.instance_variable_get(:@port)).to eq(80)
        expect(client.instance_variable_get(:@backoff)).to be_an(Proc)
        expect(client.instance_variable_get(:@http_open_timeout)).to eq(1)
        expect(client.instance_variable_get(:@http_read_timeout)).to eq(1)
        expect(client.instance_variable_get(:@http_debug_output)).to be_nil
      end

      context 'endpoint configuration' do
        it 'resolves to correct endpoint based on endpoint mode' do
          client = EC2Metadata.new(endpoint_mode: 'IPv6')
          expect(client.instance_variable_get(:@endpoint))
            .to eq('http://[fd00:ec2::254]')

          client = EC2Metadata.new(endpoint_mode: 'IPv4')
          expect(client.instance_variable_get(:@endpoint))
            .to eq(endpoint)
        end

        it 'given endpoint takes precedence over endpoint mode' do
          client = EC2Metadata.new(endpoint_mode: 'IPv6', endpoint: endpoint)
          expect(client.instance_variable_get(:@endpoint)).to eq(endpoint)
        end

        it 'raises when an invalid endpoint mode is given' do
          expect { EC2Metadata.new(endpoint_mode: 'meep') }
            .to raise_error(ArgumentError)
        end
      end
    end

    describe '#get' do
      let(:expected_body) { "foo\n" }

      it 'fetches a token before getting metadata' do
        token = stub_get_token
        stub_request(:get, metadata_endpoint)
          .with(headers: { 'x-aws-ec2-metadata-token' => token })
          .to_return(status: 200, body: expected_body)
        expect(client.get(metadata_path)).to eq(expected_body)
      end

      it 'should fetch a new token if the original token is expired' do
        token = stub_get_token
        stub_request(:get, metadata_endpoint)
          .with(headers: { 'x-aws-ec2-metadata-token' => token })
          .to_return(status: 401) # 401 token expired

        new_token = stub_get_token('new-token')
        stub_request(:get, metadata_endpoint)
          .with(headers: { 'x-aws-ec2-metadata-token' => new_token })
          .to_return(status: 200, body: expected_body)

        expect(client.get(metadata_path)).to eq(expected_body)
      end

      it 'does not retry on errors that should not be retried' do
        stub_request(:put, "#{endpoint}/latest/api/token")
          .to_return({ status: 400 }, { status: 403 })
        expect { client.get(metadata_path) }
          .to raise_error(Aws::EC2Metadata::TokenRetrievalError)
        expect { client.get(metadata_path) }
          .to raise_error(Aws::EC2Metadata::RequestForbiddenError)

        token = stub_get_token
        stub_request(:get, metadata_endpoint)
          .with(headers: { 'x-aws-ec2-metadata-token' => token })
          .to_return(status: 404)
        expect { client.get(metadata_path) }
          .to raise_error(Aws::EC2Metadata::MetadataNotFoundError)
      end

      context 'backoff strategy' do
        before(:each) do
          token = stub_get_token
          stub_request(:get, metadata_endpoint)
            .with(headers: { 'x-aws-ec2-metadata-token' => token })
            .to_raise(Errno::ECONNREFUSED).then
            .to_raise(Errno::ECONNREFUSED).then
            .to_raise(Errno::ECONNREFUSED)
        end

        it 'retries with a proc' do
          client = EC2Metadata.new(backoff: ->(n) { Kernel.sleep(2**n) })
          expect(Kernel).to receive(:sleep).with(1)
          expect(Kernel).to receive(:sleep).with(2)
          expect(Kernel).to receive(:sleep).with(4)
          expect { client.get(metadata_path) }
            .to raise_error(Errno::ECONNREFUSED)
        end

        it 'retries with a number of seconds to sleep' do
          client = EC2Metadata.new(backoff: 3)
          expect(Kernel).to receive(:sleep).with(3).exactly(3).times
          expect { client.get(metadata_path) }
            .to raise_error(Errno::ECONNREFUSED)
        end

        it 'defaults to exponential backoff' do
          expect(Kernel).to receive(:sleep).with(1.0)
          expect(Kernel).to receive(:sleep).with(1.2)
          expect(Kernel).to receive(:sleep).with(1.44)
          expect { client.get(metadata_path) }
            .to raise_error(Errno::ECONNREFUSED)
        end
      end
    end
  end
end
