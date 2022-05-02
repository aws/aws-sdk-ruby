# frozen_string_literal: true

require_relative '../spec_helper'
require 'uri'

module Aws
  module SQS
    describe Client do
      {
        add_permission: { label: '', aws_account_ids: [], actions: [] },
        change_message_visibility: {
          receipt_handle: '', visibility_timeout: 0
        },
        change_message_visibility_batch: { entries: {} },
        delete_message: { receipt_handle: '' },
        delete_message_batch: { entries: {} },
        delete_queue: {},
        get_queue_attributes: {},
        list_dead_letter_source_queues: {},
        purge_queue: {},
        receive_message: {},
        remove_permission: { label: '' },
        send_message: { message_body: '' },
        send_message_batch: { entries: {} },
        set_queue_attributes: { attributes: {} }
      }.each_pair do |method, params|
        describe "##{method}" do
          it 'uses the :queue_url param as the request endpoint' do
            url = 'https://sqs.us-east-1.amazonaws.com/1234567890/demo'
            client = Client.new(stub_responses: true)
            resp = client.send(method, params.merge(queue_url: url))
            expect(resp.context.http_request.endpoint.to_s).to eq(url)
          end

          it 'signs the request using the region present in the queue url' do
            url = 'https://sqs.us-west-2.amazonaws.com/1234567890/demo'
            client = Client.new(stub_responses: true, region: 'us-east-1')
            resp = client.send(method, params.merge(queue_url: url))
            expect(resp.context.http_request.headers['authorization'])
              .to include('us-west-2')
            expect(resp.context.http_request.headers['authorization'])
              .not_to include('us-east-1')
          end

          it 'signs using the configured region with no queue url region' do
            url = 'https://localhost:3000'
            client = Client.new(stub_responses: true, region: 'cn-north-1')
            resp = client.send(method, params.merge(queue_url: url))
            expect(resp.context.http_request.headers['authorization'])
              .to include('cn-north-1')
          end

          it 'supports vpc endpoint queue URL' do
            url = 'https://vpce-xxxx-yyyy.sqs.us-east-1.vpce.'\
                  'amazonaws.com/1234567890/demo'
            client = Client.new(stub_responses: true, region: 'cn-north-1')
            resp = client.send(method, params.merge(queue_url: url))
            expect(resp.context.http_request.headers['authorization'])
              .to include('us-east-1')
          end

          it 'raises an error for a badly formatted queue url' do
            expect do
              client = Client.new(stub_responses: true)
              client.send(method, params.merge(queue_url: 'bad'))
            end.to raise_error(ArgumentError, /invalid endpoint/)
          end

          it 'does not raise an error for fake sqs queue urls' do
            url = 'http://localhost:4567/test_queue'
            client = Client.new(stub_responses: true)
            expect do
              client.send(method, params.merge(queue_url: url))
            end.to_not raise_error
          end

          it 'does not parse region for non-aws urls with sqs in them' do
            url = 'https://localstack-sqs.example.dev/queue/queue_name'
            client = Client.new(stub_responses: true, region: 'us-west-2')
            resp = client.send(method, params.merge(queue_url: url))
            expect(resp.context.http_request.headers['authorization'])
              .to include('us-west-2')
          end
        end
      end
    end
  end
end
