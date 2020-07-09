# frozen_string_literal: true

require_relative '../spec_helper'

# Although this plugin lives in Seahorse it needs to be tested against
# the Retry Plugin in the AWS namespace
module Seahorse
  module Client
    module Plugins
      describe RequestCallback do
        let(:client_class) do
          ApiHelper.sample_service.const_get(:Client)
        end

        let(:callback) { Proc.new {|chunk, read, total| @call_count += 1} }
        let(:client) do
          client_class.new(
            on_chunk_sent: callback,
            region: 'us-west-1',
            endpoint: 'http://foo.com')
        end

        before { @call_count = 0 }

        it 'adds a #progress_callback option to config' do
          expect(client.config.on_chunk_sent).to eq(callback)
        end

        it 'defaults progress_callback to nil' do
          client = client_class.new(stub_responses: true)
          expect(client.config.on_chunk_sent).to eq(nil)
        end

        it 'is called once on success' do
          stub_request(:post, 'http://foo.com')
            .to_return(status: 200)

          client.example_operation
          expect(@call_count).to eq(1)
        end

        it 'is called twice when the request is retried' do
          stub_request(:post, 'http://foo.com')
            .to_return(
              {status: 500, body: 'error'},
              {status: 200, body: ''}
            )

          client.example_operation
          expect(@call_count).to eq(2)
        end

        it 'it can be used as a parameter on the operation' do
          client = client_class.new(region: 'us-west-1', endpoint: 'http://foo.com')
          expect(client.config.on_chunk_sent).to eq(nil)

          stub_request(:post, 'http://foo.com')
            .to_return(status: 200)

          client.example_operation(on_chunk_sent: callback)
          expect(@call_count).to eq(1)
        end
      end
    end
  end
end
