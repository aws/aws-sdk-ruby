require 'spec_helper'

module Aws
  module SQS
    describe Client do

      let(:client) { Client.new }

      before(:each) do
        Aws.config[:sqs] = {
          region: 'us-east-1',
          credentials: Credentials.new('akid', 'secret'),
          retry_limit: 0
        }
      end

      after(:each) do
        Aws.config = {}
      end

      describe 'empty XML result element' do

        it 'returns a structure with all of the root members' do
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body:<<-XML)
              <ReceiveMessageResponse>
                <ReceiveMessageResult/>
                <ResponseMetadata>
                  <RequestId>request-id</RequestId>
                </ResponseMetadata>
              </ReceiveMessageResponse>
            XML
            Seahorse::Client::Response.new(context: context)
          end
          resp = client.receive_message(queue_url: 'https://foo.com')
          expect(resp.data.members).to eq([:messages])
          expect(resp.data.messages).to eq([])
        end

      end
    end
  end
end
