# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module SQS
    describe Client do

      let(:client) do
        Client.new(
          region: 'us-east-1',
          credentials: Credentials.new('akid', 'secret'),
          retry_limit: 0
        )
      end

      describe 'empty result element' do
        it 'defaults to an empty list' do
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body: '{}'
            )
            Seahorse::Client::Response.new(context: context)
          end
          resp = client.receive_message(queue_url: 'https://foo.com')
          expect(resp.data.members).to eq([:messages])
          expect(resp.data.messages).to eq([])
        end

        it 'defaults to an empty map' do
          client.handle(step: :send) do |context|
            context.http_response.signal_done(
              status_code: 200,
              headers: {},
              body: '{}'
            )
            Seahorse::Client::Response.new(context: context)
          end
          resp = client.list_queue_tags(queue_url: 'https://foo.com')
          expect(resp.data.members).to eq([:tags])
          expect(resp.data.tags).to eq({})
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
