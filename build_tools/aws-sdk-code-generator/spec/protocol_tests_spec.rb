# frozen_string_literal: true

require_relative 'spec_helper'
require_relative 'protocol_tests_spec_helper'

ProtocolTestsHelper.fixtures.each do |protocol, files|
  describe "Protocol: #{protocol}" do
    ProtocolTestsHelper.engines_for(protocol).each do |engine|

      context "Engine: #{engine}" do
        before(:all) { ProtocolTestsHelper.set_engine(self, protocol, engine) }

        describe 'input tests' do
          ProtocolTestsHelper.each_test_case(self, files['input']) do |group, suite, test_case, test_id, description|
            group.it("ID: #{test_id} - #{description}") do
              ProtocolTestsHelper.skip_test_if_ignored(protocol, 'input', test_id, engine, self)
              ProtocolTestsHelper::Matcher.setup_matchers(test_id, self)

              client = ProtocolTestsHelper.client_for(suite, test_case, "Input_#{test_id}")
              ctx = nil
              client.handle(step: :send) do |context|
                ctx = context
                Seahorse::Client::Response.new(context: context)
              end

              input_shape = client.config.api.operation(:operation_name).input
              request_params = ProtocolTestsHelper.format_data(
                input_shape, test_case['params'] || {}, input_shape: true
              )
              client.operation_name(request_params)

              ProtocolTestsHelper::Matcher.match_req_host(test_case, ctx.http_request, self)
              ProtocolTestsHelper::Matcher.match_req_method(test_case, ctx.http_request, self)
              ProtocolTestsHelper::Matcher.match_req_uri(test_case, ctx.http_request, self)
              ProtocolTestsHelper::Matcher.match_req_headers(suite, test_case, ctx.http_request, self)
              ProtocolTestsHelper::Matcher.exclude_req_headers(test_case, ctx.http_request, self)
              ProtocolTestsHelper::Matcher.match_req_body(suite, test_case, ctx.http_request, self)
            end
          end
        end

        describe 'output tests' do
          ProtocolTestsHelper.each_test_case(self, files['output']) do |group, suite, test_case, test_id, description|
            group.it("ID: #{test_id} - #{description}") do
              ProtocolTestsHelper.skip_test_if_ignored(protocol, 'output', test_id, engine, self)

              client = ProtocolTestsHelper.client_for(suite, test_case, "Output_#{test_id}")
              client.handle(step: :send) do |context|
                context.http_response.signal_headers(
                  test_case['response']['status_code'],
                  test_case['response']['headers'] ||= {}
                )

                # Base64 encoded binary body is provided for eventstream and cbor
                body =
                  if test_case['response']['eventstream'] || protocol.match?(/smithy-rpc-v2-cbor/)
                    Base64.decode64(test_case['response']['body'])
                  else
                    test_case['response']['body']
                  end
                context.http_response.signal_data(body)
                context.http_response.signal_done
                Seahorse::Client::Response.new(context: context)
              end

              resp =
                begin
                  client.operation_name
                rescue Aws::Errors::ServiceError => e
                  ProtocolTestsHelper::Matcher.match_error_code(test_case, e, self)
                  e
                end
              ProtocolTestsHelper::Matcher.match_resp_data(test_case, resp, self)
            end
          end
        end

      end

    end
  end
end
