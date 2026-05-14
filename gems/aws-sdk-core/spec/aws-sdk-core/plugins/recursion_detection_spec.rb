# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Core
    module Plugins
      describe RecursionDetection do
        let(:sample_client) { ClientHelper.sample_client }
        let(:client_class) { sample_client.const_get(:Client) }

        def make_request(headers_before)
          client = client_class.new(stub_responses: true, endpoint: 'https://example.com')
          # Inject pre-existing headers via an initialize-step handler
          unless headers_before.empty?
            client.handlers.add(
              Class.new(Smithy::Client::Handler) do
                define_method(:call) do |context|
                  headers_before.each { |h| context.http_request.headers[h['name']] = h['value'] }
                  @handler.call(context)
                end
              end,
              step: :initialize
            )
          end
          client.operation
        end

        tests = JSON.load_file(File.join(File.dirname(__FILE__), 'recursion_detection_tests.json'))
        tests.each_with_index do |test, index|
          it "passes test #{index + 1}" do
            test['env'].each { |k, v| ENV[k] = v }

            begin
              if test['validationError']
                expect { make_request(test['requestHeadersBefore']) }.to raise_error(ArgumentError)
              else
                resp = make_request(test['requestHeadersBefore'])
                headers_after = test['requestHeadersAfter']
                if headers_after.empty?
                  expect(resp.context.http_request.headers['x-amzn-trace-id']).to be_nil
                else
                  headers_after.each do |h|
                    expect(resp.context.http_request.headers[h['name']]).to eq(h['value'])
                  end
                end
              end
            ensure
              test['env'].each_key { |k| ENV.delete(k) }
            end
          end
        end
      end
    end
  end
end
