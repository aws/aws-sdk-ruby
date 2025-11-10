# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module SQS
    describe Client do
      client = Client.new(stub_responses: true, validate_params: false)

      client.operation_names.each do |operation_name|
        describe "##{operation_name}" do
          it 'uses the :queue_url param as the request endpoint' do
            url = 'https://sqs.us-east-1.amazonaws.com/1234567890/demo'
            resp = client.send(operation_name, queue_url: url)
            expect(resp.context.http_request.endpoint.to_s).to eq(url)
          end

          it 'signs using the region present in the queue url' do
            url = 'https://sqs.us-west-2.amazonaws.com/1234567890/demo'
            resp = client.send(operation_name, queue_url: url)
            expect(resp.context.http_request.headers['authorization']).to include('us-west-2')
            expect(resp.context.http_request.headers['authorization']).not_to include('us-stubbed-1')
          end

          it 'signs using the region present in a vpc endpoint queue url' do
            url = 'https://vpce-xxxx-yyyy.sqs.us-east-1.vpce.amazonaws.com/1234567890/demo'
            resp = client.send(operation_name, queue_url: url)
            expect(resp.context.http_request.headers['authorization']).to include('us-east-1')
            expect(resp.context.http_request.headers['authorization']).not_to include('us-stubbed-1')
          end

          it 'signs using the configured region when the queue url is not regional' do
            url = 'https://localhost:3000'
            resp = client.send(operation_name, queue_url: url)
            expect(resp.context.http_request.headers['authorization']).to include('us-stubbed-1')
          end

          it 'does not change the signing region for non-aws urls with "sqs" in them' do
            url = 'https://localstack-sqs.example.dev/queue/queue_name'
            resp = client.send(operation_name, queue_url: url)
            expect(resp.context.http_request.headers['authorization']).to include('us-stubbed-1')
          end

          it 'raises an error for a badly formatted queue url' do
            expect do
              client.send(operation_name, queue_url: 'bad')
            end.to raise_error(ArgumentError, /invalid endpoint/)
          end
        end
      end
    end
  end
end
