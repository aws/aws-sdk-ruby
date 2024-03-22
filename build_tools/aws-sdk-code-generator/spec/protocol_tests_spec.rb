# frozen_string_literal: true

require_relative 'spec_helper'
require_relative 'protocol_tests_spec_helper'

ProtocolTestsHelper.fixtures.each do |protocol, files|
  describe(protocol) do
    let(:matcher) { ProtocolTestsHelper::Matcher.new }
    describe 'input' do
      ProtocolTestsHelper.each_test_case(self, files['input']) do |group, suite, test_case, test_id, description|
        group.it(description) do
          if (ignore_result = ProtocolTestsHelper.check_ignore_list(protocol, test_id, 'input'))
            skip(ignore_result[test_id])
          end
          matcher.setup_matchers(test_id, self)

          client = ProtocolTestsHelper.client_for(suite, test_case, "Input_#{test_id}")
          ctx = nil
          client.handle(step: :send) do |context|
            ctx = context
            Seahorse::Client::Response.new(context: context)
          end

          input_shape = client.config.api.operation(:operation_name).input
          request_params = ProtocolTestsHelper.format_data(input_shape, test_case['params'] || {})
          client.operation_name(request_params)

          matcher.match_req_host(test_case, ctx.http_request, self)
          matcher.match_req_method(test_case, ctx.http_request, self)
          matcher.match_req_uri(test_case, ctx.http_request, self)
          matcher.match_req_headers(suite, test_case, ctx.http_request, self)
          matcher.exclude_req_headers(test_case, ctx.http_request, self)
          matcher.match_req_body(suite, test_case, ctx.http_request, self)
        end
      end
    end

    describe 'output' do
      ProtocolTestsHelper.each_test_case(self, files['output']) do |group, suite, test_case, test_id, description|
        group.it(description) do
          if (ignore_result = ProtocolTestsHelper.check_ignore_list(protocol, test_id, 'output'))
            skip(ignore_result[test_id])
          end

          client = ProtocolTestsHelper.client_for(suite, test_case, "Output_#{test_id}")
          client.handle(step: :send) do |context|
            context.http_response.signal_headers(
              test_case['response']['status_code'],
              test_case['response']['headers'] ||= {}
            )

            # Base64 encoded binary body is provided for eventstream
            body = if test_case['response']['eventstream']
                     Base64.decode64(test_case['response']['body'])
                   else
                     test_case['response']['body']
                   end
            context.http_response.signal_data(body)
            context.http_response.signal_done
            Seahorse::Client::Response.new(context: context)
          end

          resp = begin
            client.operation_name
          rescue => error
            error
          end
          matcher.match_resp_data(test_case, resp, self)
        end
      end
    end
  end
end
