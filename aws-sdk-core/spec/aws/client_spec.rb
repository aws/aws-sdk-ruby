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

      it 'requires a region' do
        expect {
          S3::Client.new(access_key_id:'akid', secret_access_key: 'secret')
        }.to raise_error(Aws::Errors::MissingRegionError)
      end

      it 'raises a helpful error on possible incorrect regions' do

        # simulate an error from connecting to an unknown endpoint
        stub_request(:any, /.*/).
          to_raise(SocketError.new("Failed to open TCP connection to s3.us-west-2a.amazonaws.com:443 (getaddrinfo: nodename nor servname provided, or not known"))

        client = S3::Client.new(
          region: 'us-west-2a',
          credentials: Credentials.new('akid', 'secret')
        )

        error = nil
        begin
          client.list_buckets
        rescue => e
          error = e
        end

        expect(e).to be_kind_of(Errors::NoSuchEndpointError)
        expect(e.context.retries).to be(0) # should not retry these
        expect(e.message).to include('us-east-1')
        expect(e.message).to include('us-west-1')
        expect(e.message).to include('cn-north-1')
        expect(e.message).to include(<<-MSG)
Encountered a `SocketError` while attempting to connect to:

  https://s3.us-west-2a.amazonaws.com/

This is typically the result of an invalid `:region` option or a
poorly formatted `:endpoint` option.

* Avoid configuring the `:endpoint` option directly. Endpoints are constructed
  from the `:region`. The `:endpoint` option is reserved for connecting to
  non-standard test endpoints.

* Not every service is available in every region.

* Never suffix region names with availability zones.
  Use "us-east-1", not "us-east-1a"

Known AWS regions include (not specific to this service):

        MSG
      end

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
          client.head_bucket(bucket:'aws-sdk')
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

      it 'accepts stubs given to the constructor' do
        client = S3::Client.new(stub_responses: {
          list_buckets: { buckets: [{ name: 'b1' }, { name:'b2' }] },
          get_object: [{ body: 'a' }, { body: 'b' }],
        })
        expect(client.list_buckets.buckets.map(&:name)).to eq(%w(b1 b2))
        expect(client.get_object(bucket:'name', key:'key').body.read).to eq('a')
        expect(client.get_object(bucket:'name', key:'key').body.read).to eq('b')
      end

    end
  end
end
