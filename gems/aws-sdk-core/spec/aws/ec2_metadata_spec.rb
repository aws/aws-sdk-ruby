# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe EC2Metadata do
    let(:client) { EC2Metadata.new }

    let(:endpoint) { 'http://169.254.169.254' }
    let(:metadata_path) { '/latest/meta-data/foo' }
    let(:metadata_endpoint) { "#{endpoint}/latest/meta-data/foo" }

    def stub_get_token(token_value = 'my-token')
      stub_request(
        :put, "#{endpoint}/latest/api/token"
      ).to_return(
        status: 200, body: token_value,
        headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' }
      )
      token_value
    end

    context 'endpoint configuration' do
      it 'can be configured without a scheme' do
        client = EC2Metadata.new(endpoint: '123.123.123.123')
        expect(client.instance_variable_get(:@endpoint))
          .to eq('123.123.123.123')
      end

      it 'can be configured with a scheme' do
        client = EC2Metadata.new(endpoint: 'http://123.123.123.123')
        expect(client.instance_variable_get(:@endpoint))
          .to eq('http://123.123.123.123')
      end

      it 'takes precedence over endpoint mode' do
        client = EC2Metadata.new(
          endpoint_mode: 'IPv6',
          endpoint: '123.123.123.123'
        )
        expect(client.instance_variable_get(:@endpoint))
          .to eq('123.123.123.123')
      end
    end

    context 'endpoint mode configuration' do
      it 'defaults to ipv4' do
        client = EC2Metadata.new
        expect(client.instance_variable_get(:@endpoint))
          .to eq('http://169.254.169.254')
      end

      it 'can be configured to use ipv6 mode' do
        client = EC2Metadata.new(endpoint_mode: 'IPv6')
        expect(client.instance_variable_get(:@endpoint))
          .to eq('http://[fd00:ec2::254]')
      end

      it 'raises with an unknown mode' do
        expect { EC2Metadata.new(endpoint_mode: 'IPv69') }
          .to raise_error(ArgumentError)
      end
    end

    describe '#get' do
      it 'fetches a token before getting metadata' do
        token = stub_get_token
        stub_request(
          :get, metadata_endpoint
        ).with(
          headers: { 'x-aws-ec2-metadata-token' => token }
        ).to_return(
          status: 200, body: "foo\n"
        )
        expect(client.get(metadata_path)).to eq "foo\n"
      end

      it 'should fetch a new token if the original token is expired' do
        token = stub_get_token
        # 401 token expired
        stub_request(
          :get, metadata_endpoint
        ).with(
          headers: { 'x-aws-ec2-metadata-token' => token }
        ).to_return(status: 401)
        new_token = stub_get_token('new-token')
        stub_request(
          :get, metadata_endpoint
        ).with(
          headers: { 'x-aws-ec2-metadata-token' => new_token }
        ).to_return(
          status: 200, body: "foo\n"
        )
        expect(client.get(metadata_path)).to eq "foo\n"
      end

      context 'when retryable' do
        before(:each) do
          token = stub_get_token
          stub_request(:get, metadata_endpoint)
            .with(headers: { 'x-aws-ec2-metadata-token' => token })
            .to_raise(Errno::ECONNREFUSED).then
            .to_raise(Errno::ECONNREFUSED).then
            .to_raise(Errno::ECONNREFUSED)
        end

        it 'retries with a proc' do
          client = EC2Metadata.new(
            backoff: ->(n) { Kernel.sleep(2**n) }
          )
          expect(Kernel).to receive(:sleep).with(1)
          expect(Kernel).to receive(:sleep).with(2)
          expect(Kernel).to receive(:sleep).with(4)
          expect { client.get(metadata_path) }.to raise_error(Errno::ECONNREFUSED)
        end

        it 'retries with a number of seconds to sleep' do
          client = EC2Metadata.new(backoff: 3)
          expect(Kernel).to receive(:sleep).with(3).exactly(3).times
          expect { client.get(metadata_path) }.to raise_error(Errno::ECONNREFUSED)
        end

        it 'defaults to exponential backoff' do
          client = EC2Metadata.new
          expect(Kernel).to receive(:sleep).with(1.0)
          expect(Kernel).to receive(:sleep).with(1.2)
          expect(Kernel).to receive(:sleep).with(1.44)
          expect { client.get(metadata_path) }.to raise_error(Errno::ECONNREFUSED)
        end
      end
    end
  end
end
