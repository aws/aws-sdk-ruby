require_relative 'spec_helper'

module Aws
  module Glacier
    describe Client do

      let(:client) { Client.new(stub_responses: true) }

      it 'marshalls timestamps as iso8601 strings' do
        now = Time.now
        resp = client.initiate_job({
          vault_name: 'vault-name',
          job_parameters: {
            inventory_retrieval_parameters: {
              start_date: now,
            },
          },
        })
        body = Json.load(resp.context.http_request.body)
        time = body['InventoryRetrievalParameters']['StartDate']
        expect(time).to be_a(String)
        expect(time).to eq(now.utc.iso8601)
      end

      it 'handles seeked io objects in :upload_archive' do
        io = StringIO.new("Seekable Seeking")
        io.read(1000)
        resp = client.upload_archive(
          vault_name: "test",
          body: io
        )
        expect(resp.context.http_request.body_contents).to eq(
          "Seekable Seeking"
        )
        expect(resp.context.http_request.headers["x-amz-sha256-tree-hash"]).to eq(
          "fca2b5bfdf7bd08d247b9ac1afbbf5c8fb3e68d0a8c146111416fdf17c710eb7"
        )
      end

      describe 'api verison' do

        it 'sends the API version as a header' do
          resp = client.list_vaults
          expect(resp.context.http_request.headers['x-amz-glacier-version']).to eq('2012-06-01')
        end

      end

      describe 'errors' do

        it 'extracts the error code form the header' do
          client.handle(step: :send) do |context|
            context.http_response.signal_headers(409, {})
            context.http_response.signal_data(<<-JSON)
              {
                "message": "Access denied for account ID: 12345",
                "code":"AccessDeniedException",
                "type": "Client"
              }
            JSON
            context.http_response.signal_done
            Seahorse::Client::Response.new(context: context)
          end
          expect {
            client.list_vaults(account_id: '12345')
          }.to raise_error(Errors::AccessDeniedException)
        end

      end

      describe ':account_id' do

        it 'defaults to -' do
          resp = client.list_vaults
          expect(resp.context.http_request.endpoint.path).to eq('/-/vaults')
        end

        it 'can be configured by default' do
          client = Client.new(account_id: 'abc', stub_responses: true)
          resp = client.list_vaults
          expect(resp.context.http_request.endpoint.path).to eq('/abc/vaults')
        end

        it 'can be specified per operation by default' do
          client = Client.new(account_id: 'abc', stub_responses: true)
          resp = client.list_vaults(account_id: 'xyz')
          expect(resp.context.http_request.endpoint.path).to eq('/xyz/vaults')
        end

      end
    end
  end
end
