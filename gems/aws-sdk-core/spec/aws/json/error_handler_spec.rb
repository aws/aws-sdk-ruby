# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Json
    describe ErrorHandler do
      let(:client) { ApiHelper.sample_json::Client.new(stub_responses: true) }

      let(:error_resp) { <<~JSON.strip }
        {
          "__type":"ProvisionedThroughputExceededException",
          "message":"foo",
          "foo": "bar"
        }
      JSON

      let(:invalid_error_resp) { <<~JSON.strip }
        {
          "__type":"ProvisionedThroughputExceededException:",
          "message":"foo",
          "foo": "bar"
        }
        
      JSON

      let(:un_modeled_error_resp) { <<~JSON.strip }
        {
          "__type":"UnModeledException",
          "message":"foo"
        }
      JSON

      let(:empty_struct_error_resp) { <<~JSON.strip }
        {
          "__type":"EmptyStructError",
          "message":"foo"
        }
      JSON

      it 'extracts error data' do
        client.stub_responses(
          :batch_get_item,
          { status_code: 400, body: error_resp, headers: {} }
        )

        expect { client.batch_get_item(request_items: {}) }
          .to raise_error do |e|
            expect(e.code).to eq('ProvisionedThroughputExceededException')
            expect(e.message).to eq('foo')
            expect(e.foo).to eq('bar')
          end
      end

      it 'ignore invalid characters when matching' do
        client.stub_responses(
          :batch_get_item,
          { status_code: 400, body: invalid_error_resp, headers: {} }
        )

        expect { client.batch_get_item(request_items: {}) }
          .to raise_error do |e|
            expect(e.code).to eq('ProvisionedThroughputExceededException')
            expect(e.message).to eq('foo')
            expect(e.foo).to eq('bar')
          end
      end

      it 'extracts code and message for unmodeled errors' do
        client.stub_responses(
          :batch_get_item,
          { status_code: 400, body: un_modeled_error_resp, headers: {} }
        )

        expect { client.batch_get_item(request_items: {}) }
          .to raise_error do |e|
            expect(e.code).to eq('UnModeledException')
            expect(e.message).to eq('foo')
          end
      end

      it 'extracts code and message for modeled empty struct errors' do
        client.stub_responses(
          :batch_get_item,
          { status_code: 400, body: empty_struct_error_resp, headers: {} }
        )

        expect { client.batch_get_item(request_items: {}) }
          .to raise_error do |e|
            expect(e.code).to eq('EmptyStructError')
            expect(e.message).to eq('foo')
          end
      end
    end
  end
end
