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

    end
  end
end
