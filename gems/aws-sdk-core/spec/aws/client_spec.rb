require_relative '../spec_helper'

module Aws
  describe 'Client' do
    describe 'response stubbing' do

      ResponseStubbingExample = ApiHelper.sample_service

      let(:options) {{
        stub_responses: true,
        region: 'us-east-1',
        access_key_id: 'akid',
        secret_access_key: 'secret',
      }}

      let(:client_class) { ResponseStubbingExample.const_get(:Client) }

      let(:client) { client_class.new(options) }

      it 'requires a region' do
        expect {
          client_class.new(access_key_id:'akid', secret_access_key: 'secret')
        }.to raise_error(Aws::Errors::MissingRegionError)
      end

      it 'raises a helpful error on possible incorrect regions' do

        # simulate an error from connecting to an unknown endpoint
        stub_request(:any, /.*/).
          to_raise(SocketError.new("Failed to open TCP connection to s3.us-west-2a.amazonaws.com:443 (getaddrinfo: nodename nor servname provided, or not known"))

        client = client_class.new(
          region: 'us-west-2a',
          credentials: Credentials.new('akid', 'secret')
        )

        error = nil
        begin
          client.example_operation
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

  https://svc.us-west-2a.amazonaws.com

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
        creds = client_class.new(stub_responses:true).config.credentials
        expect(creds).to be_kind_of(Credentials)
        expect(creds.access_key_id).to eq('stubbed-akid')
        expect(creds.secret_access_key).to eq('stubbed-secret')
      end

      it 'raises an error if stubbed_responses is not enabled' do
        client = client_class.new(options.merge(stub_responses: false))
        expect {
          client.stub_responses(:example_operation, {})
        }.to raise_error(/enable stubbing .* `:stub_responses => true`/)
      end

      it 'returns stubbed responses without making a request' do
        client.stub_responses(:example_operation, string:'value')
        resp = client.example_operation
        expect(resp.string).to eq('value')
      end

      it 'accepts a list of stubs' do
        client.stub_responses(:example_operation, [
          { string: 'value-1' },
          { string: 'value-2' },
        ])
        expect(client.example_operation.string).to eq('value-1')
        expect(client.example_operation.string).to eq('value-2')
      end

      it 'returns the same stub multiple times' do
        client.stub_responses(:example_operation, string: 'fixed-value')
        expect(client.example_operation.string).to eq('fixed-value')
        expect(client.example_operation.string).to eq('fixed-value')
      end

      it 'returns the last stub after mulitple times' do
        client.stub_responses(:example_operation, [
          { string: 'value-1' },
          { string: 'value-2' },
        ])
        expect(client.example_operation.string).to eq('value-1')
        expect(client.example_operation.string).to eq('value-2')
        expect(client.example_operation.string).to eq('value-2')
      end

      it 'can stub errors' do
        client.stub_responses(:example_operation, [
          'NotFound',
          StandardError,
          RuntimeError.new('oops')
        ])

        expect {
          client.example_operation
        }.to raise_error(client_class.errors_module::NotFound, 'stubbed-response-error-message')

        expect {
          client.example_operation
        }.to raise_error(StandardError)

        expect {
          client.example_operation
        }.to raise_error(RuntimeError, 'oops')
      end

      it 'can stub errors and data' do
        client.stub_responses(:example_operation, ['NotFound', {}])
        expect {
          client.example_operation
        }.to raise_error(client_class.errors_module::NotFound)
        expect(client.example_operation.data.to_h).to eq({})
      end

      it 'accepts stubs given to the constructor' do
        client = client_class.new(stub_responses: {
          example_operation: { string: 'value' }
        })
        expect(client.example_operation.string).to eq('value')
      end

    end
  end
end
