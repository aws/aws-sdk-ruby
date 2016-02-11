require 'spec_helper'

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

    end
  end
end
