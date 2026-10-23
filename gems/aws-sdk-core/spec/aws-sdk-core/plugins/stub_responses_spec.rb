# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Core
    module Plugins
      describe StubResponses do
        let(:sample_client) do
          shapes = ClientHelper.sample_shapes
          shapes['smithy.ruby.tests#SampleClient']['traits'] = { 'aws.protocols#awsJson1_0' => {} }
          ClientHelper.sample_client(shapes: shapes)
        end
        let(:client_class) { sample_client.const_get(:Client) }

        [
          [StubResponses, Smithy::Client::Plugins::Transport],
          [Smithy::Client::Plugins::Transport, StubResponses]
        ].each do |plugins|
          context "when #{plugins.first} is registered first" do
            before do
              plugins.each do |plugin|
                client_class.remove_plugin(plugin)
                client_class.add_plugin(plugin)
              end
            end

            it 'returns the configured stub without sending an HTTP request' do
              client = client_class.new(stub_responses: true, endpoint: 'https://example.com')
              client.stub_responses(
                :operation,
                status_code: 200, headers: {}, body: '{"string":"stubbed"}'
              )

              expect(client.operation.data.string).to eq('stubbed')
              expect(client.api_requests.size).to eq(1)
            end

            it 'keeps the transport send handler when stubbing is disabled' do
              client = client_class.new(stub_responses: false, endpoint: 'https://example.com')

              expect(client.handlers).to include(Smithy::Client::SendHandler)
              expect(client.handlers).not_to include(Smithy::Client::Plugins::StubResponses::StubHandler)
            end
          end
        end
      end
    end
  end
end
