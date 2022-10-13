# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Json
    describe ErrorHandler do

      let(:client) {
        ApiHelper.sample_json::Client.new(
          region: 'us-west-2',
          retry_limit: 0,
          credentials: Aws::Credentials.new('akid', 'secret')
        )
      }

      let(:error_resp) { <<-JSON.strip }
{
  "__type":"ProvisionedThroughputExceededException",
  "message":"foo",
  "foo": "bar"
}
      JSON

      let(:invalid_error_resp) { <<-JSON.strip }
{
  "__type":"ProvisionedThroughputExceededException:",
  "message":"foo",
  "foo": "bar"
}

      JSON
      let(:unmodeled_resp) { <<-JSON.strip }
{
  "__type":"UnModeledException",
  "message":"foo"
}
      JSON

      let(:empty_struct_error) { <<-JSON.strip }
{
  "__type":"EmptyStructError",
  "message":"foo"
}
      JSON

      it 'extracts error data' do
        stub_request(:post, "https://dynamodb.us-west-2.amazonaws.com/").
          to_return(:status => 400, :body => error_resp)
        expect {
          client.batch_get_item(
            request_items: {}
          )
        }.to raise_error {|e|
          expect(e.code).to eq('ProvisionedThroughputExceededException')
          expect(e.message).to eq('foo')
          expect(e.foo).to eq('bar')
        }
      end

      it 'ignore invalid characters when matching' do
        stub_request(:post, "https://dynamodb.us-west-2.amazonaws.com/").
          to_return(:status => 400, :body => invalid_error_resp)
        expect {
          client.batch_get_item(
            request_items: {}
          )
        }.to raise_error {|e|
          expect(e.code).to eq('ProvisionedThroughputExceededException')
          expect(e.message).to eq('foo')
          expect(e.foo).to eq('bar')
        }
      end

      it 'extracts code and message for unmodeled errors' do
        stub_request(:post, "https://dynamodb.us-west-2.amazonaws.com/").
          to_return(:status => 400, :body => unmodeled_resp)
        expect {
          client.batch_get_item(
            request_items: {}
          )
        }.to raise_error {|e|
          expect(e.code).to eq('UnModeledException')
          expect(e.message).to eq('foo')
        }
      end

      it 'extracts code and message for modeled empty struct errors' do
        stub_request(:post, "https://dynamodb.us-west-2.amazonaws.com/").
          to_return(:status => 400, :body => empty_struct_error)
        expect {
          client.batch_get_item(
            request_items: {}
          )
        }.to raise_error {|e|
          expect(e.code).to eq('EmptyStructError')
          expect(e.message).to eq('foo')
        }
      end

      describe 'AwsQueryCompatible' do
        let(:client_aws_query_compatible) {
          ApiHelper.sample_json_aws_query_compatible::Client.new(
            region: 'us-west-2',
            retry_limit: 0,
            credentials: Aws::Credentials.new('akid', 'secret')
          )
        }

        it 'extracts code and message from x-amzn-query-error' do
          stub_request(:post, "https://sqs.us-west-2.amazonaws.com/").
            to_return(:status => 400, headers: {
              'x-amzn-query-error': 'AwsQueryError;Sender'
            }, :body => error_resp)
          expect {
            client_aws_query_compatible.send_message(
              queue_url: 'https://queue.url',
              message_body: 'message body'
            )
          }.to raise_error {|e|
            expect(e.code).to eq('AwsQueryError')
            expect(e.message).to eq('foo')
          }
        end

        it 'fallback to default if missing x-amzn-query-error' do
          stub_request(:post, "https://sqs.us-west-2.amazonaws.com/").
            to_return(:status => 400, headers: {}, :body => error_resp)
          expect {
            client_aws_query_compatible.send_message(
              queue_url: 'https://queue.url',
              message_body: 'message body'
            )
          }.to raise_error {|e|
            expect(e.code).to eq('ProvisionedThroughputExceededException')
            expect(e.message).to eq('foo')
          }
        end
      end
    end
  end
end
