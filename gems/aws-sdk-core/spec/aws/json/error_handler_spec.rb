# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Json
    describe ErrorHandler do

      let(:client) do
        ApiHelper.sample_json::Client.new(
          region: 'us-west-2',
          retry_limit: 0,
          credentials: Aws::Credentials.new('akid', 'secret')
        )
      end

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
        }.to raise_error do |e|
          expect(e.code).to eq('ProvisionedThroughputExceededException')
          expect(e.message).to eq('foo')
          expect(e.foo).to eq('bar')
        end
      end

      it 'ignore invalid characters when matching' do
        stub_request(:post, "https://dynamodb.us-west-2.amazonaws.com/").
          to_return(:status => 400, :body => invalid_error_resp)
        expect {
          client.batch_get_item(
            request_items: {}
          )
        }.to raise_error do |e|
          expect(e.code).to eq('ProvisionedThroughputExceededException')
          expect(e.message).to eq('foo')
          expect(e.foo).to eq('bar')
        end
      end

      it 'extracts code and message for unmodeled errors' do
        stub_request(:post, "https://dynamodb.us-west-2.amazonaws.com/").
          to_return(:status => 400, :body => unmodeled_resp)
        expect {
          client.batch_get_item(
            request_items: {}
          )
        }.to raise_error do |e|
          expect(e.code).to eq('UnModeledException')
          expect(e.message).to eq('foo')
        end
      end

      it 'extracts code and message for modeled empty struct errors' do
        stub_request(:post, "https://dynamodb.us-west-2.amazonaws.com/").
          to_return(:status => 400, :body => empty_struct_error)
        expect {
          client.batch_get_item(
            request_items: {}
          )
        }.to raise_error do |e|
          expect(e.code).to eq('EmptyStructError')
          expect(e.message).to eq('foo')
        end
      end

      describe 'AwsQueryCompatible' do
        AwsQueryCompatibleClient = ApiHelper.sample_service(
          api: {
            'metadata' => {
              'apiVersion' => '2018-11-07',
              'awsQueryCompatible' => {},
              'protocol' => 'json',
              'endpointPrefix' => 'svc',
              'signatureVersion' => 'v4',
              'errorPrefix' => 'Prefix' # service customization needs to set this
            },
            'operations' => {
              'Foo' => {
                'name' => 'Foo',
                'http' => { 'method' => 'POST', 'requestUri' => '/' },
                'input' => { 'shape' => 'FooInput'}
              }
            },
            'shapes' => {
              'FooInput' => {
                'type' => 'structure',
                'members' => {}
              },
              'String' => { 'type' => 'string' }
            }
          }
        ).const_get(:Client)

        let(:client_aws_query_compatible) do
          AwsQueryCompatibleClient.new(
            region: 'us-west-2',
            retry_limit: 0,
            credentials: Aws::Credentials.new('akid', 'secret')
          )
        end

        it 'extracts code and message from x-amzn-query-error' do
          stub_request(:post, "https://svc.us-west-2.amazonaws.com/").
            to_return(:status => 400, headers: {
              'x-amzn-query-error': 'Prefix.AwsQueryError;Sender'
            }, :body => error_resp)
          expect {
            client_aws_query_compatible.foo()
          }.to raise_error do |e|
            expect(e.code).to eq('AwsQueryError')
            expect(e.message).to eq('foo')
          end
        end

        it 'fallback to default if missing x-amzn-query-error' do
          stub_request(:post, "https://svc.us-west-2.amazonaws.com/").
            to_return(:status => 400, headers: {}, :body => error_resp)
          expect {
            client_aws_query_compatible.foo()
          }.to raise_error do |e|
            expect(e.code).to eq('ProvisionedThroughputExceededException')
            expect(e.message).to eq('foo')
          end
        end
      end
    end
  end
end
