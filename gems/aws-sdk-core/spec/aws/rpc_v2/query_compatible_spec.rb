# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module RpcV2
    context 'AwsQueryCompatible' do
      let(:query_compatible_client) do
        ApiHelper.sample_service(
          api: {
            'metadata' => {
              'awsQueryCompatible' => {},
              'protocol' => 'smithy-rpc-v2-cbor',
              'endpointPrefix' => 'svc',
              'signatureVersion' => 'v4',
              'errorPrefix' => 'Prefix.' # set by customization
            },
            'operations' => {
              'Foo' => {
                'name' => 'Foo',
                'http' => { 'method' => 'POST', 'requestUri' => '/' },
                'input' => { 'shape' => 'FooInput' },
                'output' => { 'shape' => 'FooOutput'}
              }
            },
            'shapes' => {
              'FooInput' => {
                'type' => 'structure',
                'members' => {}
              },
              'FooOutput' => {
                'type' => 'structure',
                'members' => {
                  'FlattenedList' => { 'shape' => 'FlattenedList' },
                  'FlattenedMap' => { 'shape' => 'FlattenedMap' }
                }
              },
              'FlattenedList' => {
                'type' => 'list',
                'member' => { 'shape' => 'String' },
                'flattened' => true
              },
              'FlattenedMap' => {
                'type' => 'map',
                'key' => { 'shape' => 'String' },
                'value' => { 'shape' => 'String' },
                'flattened' => true
              },
              'String' => { 'type' => 'string' }
            }
          }
        ).const_get(:Client)
      end

      let(:client) { query_compatible_client.new(stub_responses: true) }

      it 'extracts code and message from x-amzn-query-error' do
        client.stub_responses(
          :foo,
          {
            status_code: 400,
            headers: {
              'smithy-protocol' => 'rpc-v2-cbor',
              'x-amzn-query-error' => 'Prefix.NonExistentQueue;Sender'
            },
            body: RpcV2.encode(
              {
                "__type": 'com.amazonaws.sqs#QueueDoesNotExist',
                "message": 'Some user-visible message'
              }
            )
          }
        )

        expect { client.foo }
          .to raise_error do |e|
            expect(e.code).to eq('NonExistentQueue')
            expect(e.message).to eq('Some user-visible message')
          end
      end

      it 'fallback to default if missing x-amzn-query-error' do
        client.stub_responses(
          :foo,
          {
            status_code: 400,
            headers: { 'smithy-protocol' => 'rpc-v2-cbor' },
            body: RpcV2.encode(
              {
                "__type": "com.amazonaws.sqs#QueueDoesNotExist",
                "message": "Some user-visible message"
              }
            )
          }
        )

        expect { client.foo }
          .to raise_error do |e|
            expect(e.code).to eq('QueueDoesNotExist')
            expect(e.message).to eq('Some user-visible message')
          end
      end

      it 'sends x-amzn-query-mode' do
        resp = client.foo
        header = resp.context.http_request.headers['x-amzn-query-mode']
        expect(header).to eq('true')
      end

      before do
        # nil values for flattened members need to be parsed as empty arrays
        # and hashes to preserve backwards compatibility with Query/XML
        client.stub_responses(:foo, {})
      end

      it 'defaults flattened list to empty array' do
        expect(client.foo.flattened_list).to be_a(Array)
      end

      it 'defaults flattened map to empty hash' do
        expect(client.foo.flattened_map).to be_a(Hash)
      end
    end
  end
end
