# frozen_string_literal: true

require_relative 'spec_helper'

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

      describe 'empty result element' do
        it 'returns a structure with all of the root members' do
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body: '{"Messages": []}'
            )
            Seahorse::Client::Response.new(context: context)
          end
          resp = client.receive_message(queue_url: 'https://foo.com')
          expect(resp.data.members).to eq([:messages])
          expect(resp.data.messages).to eq([])
        end
      end

      describe '#stub_responses' do

        it 'supports stubbing flattened maps' do
          client = Client.new(stub_responses: {
            get_queue_attributes: {
              attributes: {
                'color' => 'red',
                'size' => 'large'
              }
            }
          })
          resp = client.get_queue_attributes(queue_url:'https://foo.com')
          expect(resp.attributes).to eq('color' => 'red', 'size' => 'large')
        end

      end
    end
  end
end
