require 'spec_helper'

module Aws
  describe Client do
    describe 'response stubbing' do

      let(:options) {{
        stub_responses: true,
        region: 'us-east-1',
        access_key_id: 'akid',
        secret_access_key: 'secret',
      }}

      let(:client) { S3::Client.new(options) }

      it 'skips the credential provider chain' do
        expect(Aws::CredentialProviderChain).not_to receive(:new)
        creds = S3::Client.new(stub_responses:true).config.credentials
        expect(creds).to be_kind_of(Credentials)
        expect(creds.access_key_id).to eq('stubbed-akid')
        expect(creds.secret_access_key).to eq('stubbed-secret')
      end

      it 'raises an error if stubbed_responses is not enabled' do
        client = S3::Client.new(options.merge(stub_responses: false))
        expect {
          client.stub_responses(:list_buckets, buckets:[{name:'foo'}])
        }.to raise_error(/enable stubbing .* `:stub_responses => true`/)
      end

      it 'returns stubbed responses without making a request' do
        client.stub_responses(:list_buckets, buckets:[{name:'foo'}])
        resp = client.list_buckets
        expect(resp.buckets.map(&:name)).to eq(['foo'])
      end

      it 'accepts a list of stubs' do
        client.stub_responses(:list_buckets, [
          {buckets:[{name:'foo'}]},
          {buckets:[{name:'foo'},{name:'bar'}]}
        ])
        expect(client.list_buckets.data.buckets.map(&:name)).to eq(%w(foo))
        expect(client.list_buckets.data.buckets.map(&:name)).to eq(%w(foo bar))
      end

      it 'returns the same stub multiple times' do
        client.stub_responses(:list_buckets, buckets:[{name:'foo'}])
        expect(client.list_buckets.buckets.map(&:name)).to eq(%w(foo))
        expect(client.list_buckets.buckets.map(&:name)).to eq(%w(foo))
      end

      it 'returns the last stub after mulitple times' do
        client.stub_responses(:list_buckets, [
          {buckets:[{name:'foo'}]},
          {buckets:[{name:'foo'},{name:'bar'}]}
        ])
        expect(client.list_buckets.buckets.map(&:name)).to eq(%w(foo))
        expect(client.list_buckets.buckets.map(&:name)).to eq(%w(foo bar))
        expect(client.list_buckets.buckets.map(&:name)).to eq(%w(foo bar))
      end

      it 'can stub errors' do
        client.stub_responses(:head_bucket, ['NotFound', StandardError, RuntimeError.new('oops')])
        expect {
          client.head_bucket(bucket:'aws-sdk')
        }.to raise_error(S3::Errors::NotFound, 'stubbed-response-error-message')
        expect {
          r = client.head_bucket(bucket:'aws-sdk')
        }.to raise_error(StandardError)
        expect {
          client.head_bucket(bucket:'aws-sdk')
        }.to raise_error(RuntimeError, 'oops')
      end

      it 'can stub errors and data' do
        client.stub_responses(:head_bucket, ['NotFound', {}])
        expect {
          client.head_bucket(bucket:'aws-sdk')
        }.to raise_error(S3::Errors::NotFound)
        expect(client.head_bucket(bucket:'aws-sdk').data.to_h).to eq({})
      end

    end
  end
end
