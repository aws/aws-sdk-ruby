# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module RpcV2
    describe ErrorHandler do
      let(:client) do
        ApiHelper.sample_rpcv2_cbor::Client.new(stub_responses: true)
      end

      let(:error_resp) do
        RpcV2.encode(
          {
            "__type": 'ServiceUnavailableException',
            "message": 'foo',
            "foo": 'bar'
          }
        )
      end

      let(:invalid_error_resp) do
        RpcV2.encode(
          {
            "__type": 'ServiceUnavailableException:',
            "message": 'foo',
            "foo": 'bar'
          }
        )
      end

      let(:un_modeled_error_resp) do
        RpcV2.encode(
          {
            "__type": 'UnModeledException',
            "message": 'foo'
          }
        )
      end

      let(:empty_struct_error_resp) do
        RpcV2.encode(
          {
            "__type": 'EmptyStructError',
            "message": 'foo'
          }
        )
      end

      it 'extracts error data' do
        client.stub_responses(
          :describe_log_groups,
          {
            status_code: 400,
            headers: {
              'smithy-protocol' => 'rpc-v2-cbor'
            },
            body: error_resp
          }
        )

        expect { client.describe_log_groups }
          .to raise_error do |e|
            expect(e.code).to eq('ServiceUnavailableException')
            expect(e.message).to eq('foo')
            expect(e.foo).to eq('bar')
          end
      end

      it 'ignore invalid characters when matching' do
        client.stub_responses(
          :describe_log_groups,
          {
            status_code: 400,
            headers: {
              'smithy-protocol' => 'rpc-v2-cbor'
            },
            body: invalid_error_resp
          }
        )

        expect { client.describe_log_groups }
          .to raise_error do |e|
            expect(e.code).to eq('ServiceUnavailableException')
            expect(e.message).to eq('foo')
            expect(e.foo).to eq('bar')
          end
      end

      it 'extracts code and message for unmodeled errors' do
        client.stub_responses(
          :describe_log_groups,
          {
            status_code: 400,
            headers: {
              'smithy-protocol' => 'rpc-v2-cbor'
            },
            body: un_modeled_error_resp
          }
        )

        expect { client.describe_log_groups }
          .to raise_error do |e|
            expect(e.code).to eq('UnModeledException')
            expect(e.message).to eq('foo')
          end
      end

      it 'extracts code and message for modeled empty struct errors' do
        client.stub_responses(
          :describe_log_groups,
          {
            status_code: 400,
            headers: {
              'smithy-protocol' => 'rpc-v2-cbor'
            },
            body: empty_struct_error_resp
          }
        )

        expect { client.describe_log_groups }
          .to raise_error do |e|
            expect(e.code).to eq('EmptyStructError')
            expect(e.message).to eq('foo')
          end
      end
    end
  end
end
