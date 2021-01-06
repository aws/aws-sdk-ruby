# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe EC2Metadata do
    let(:client) { EC2Metadata.new }

    let(:metadata_path) { '/latest/meta-data/foo/' }
    let(:token_path) { '/latest/api/token' }

    it 'fetches a token before getting metadata' do
      stub_request(
        :put, "http://169.254.169.254#{token_path}"
      ).to_return(
        status: 200, body: "my-token\n",
        headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' }
      )
      stub_request(
        :get, "http://169.254.169.254#{metadata_path}"
      ).with(
        headers: { 'x-aws-ec2-metadata-token' => 'my-token' }
      ).to_return(
        status: 200, body: "foo\n"
      )
      expect(client.get(metadata_path)).to be 'foo'
    end

    it 'should fetch a new token if the original token is expired' do
      stub_request(
        :put, "http://169.254.169.254#{token_path}"
      ).to_return(
        status: 200, body: "my-token\n",
        headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' }
      )
      # 401 token expired
      stub_request(
        :get, "http://169.254.169.254#{metadata_path}"
      ).with(
        headers: { 'x-aws-ec2-metadata-token' => 'my-token' }
      ).to_return(status: 401)
      stub_request(
        :put, "http://169.254.169.254#{token_path}"
      ).to_return(
        status: 200, body: "my-new-token\n",
        headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' }
      )
      stub_request(
        :get, "http://169.254.169.254#{metadata_path}"
      ).with(
        headers: { 'x-aws-ec2-metadata-token' => 'my-new-token' }
      ).to_return(
        status: 200, body: "foo\n"
      )
      expect(client.get(metadata_path)).to be 'foo'
    end

    context 'when retryable' do
      before(:each) do
        stub_request(
          :put, "http://169.254.169.254#{token_path}"
        ).to_return(
          status: 200, body: "my-token\n",
          headers: { 'x-aws-ec2-metadata-token-ttl-seconds' => '21600' }
        )
        stub_request(:get, "http://169.254.169.254#{metadata_path}")
          .with(headers: { 'x-aws-ec2-metadata-token' => 'my-token' })
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
