# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module S3Control
    describe Client do
      it 'adds the extended host id to the context when available' do
        client = Client.new(stub_responses: true)
        client.stub_responses(
          :list_jobs,
          {
            status_code: 200,
            headers: { 'x-amz-id-2' => 'EXAMPLEHOSTID1234567890abcdefg==' },
            body: "<ListJobsResult>\n  <Jobs/>\n</ListJobsResult>\n"
          }
        )
        resp = client.list_jobs(account_id: '123456789012')
        expect(resp.context[:s3_host_id]).to eq('EXAMPLEHOSTID1234567890abcdefg==')
      end
    end
  end
end
