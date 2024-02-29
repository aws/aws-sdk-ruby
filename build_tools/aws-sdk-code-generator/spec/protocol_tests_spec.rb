# frozen_string_literal: true

require_relative 'spec_helper'
require_relative 'protocol_tests_spec_helper'

PROTOCOL_TESTS_IGNORE_LIST = JSON.parse(File.read('./build_tools/aws-sdk-code-generator/spec/protocol-tests-ignore-list.json'))

ProtocolTestsHelper.fixtures.each do |protocol, files|
  describe(protocol) do
    let(:matcher) { ProtocolTestsHelper::Matcher.new }
    let(:ignore_list) { PROTOCOL_TESTS_IGNORE_LIST[protocol] }
    describe 'input' do
      ProtocolTestsHelper.each_test_case(self, files['input']) do |group, suite, test_case, id, description|
        group.it(description) do
          skip('Test Case is in the Ignore List') if ignore_list['input'].include? test_case['id']

          if id.include?('IdempotencyToken')
            allow(SecureRandom).to receive(:uuid).and_return('00000000-0000-4000-8000-000000000000')
          end

          client = ProtocolTestsHelper.client_for(suite, test_case, "Input_#{id}")
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
      ProtocolTestsHelper.each_test_case(self, files['output']) do |group, suite, test_case, id, description|
        group.it(description) do
          skip('Test Case is in the Ignore List') if ignore_list['output'].include? test_case['id']

          client = ProtocolTestsHelper.client_for(suite, test_case, "Output_#{id}")
          client.handle(step: :send) do |context|
            context.http_response.signal_headers(
              test_case['response']['status_code'],
              test_case['response']['headers'] ||= {}
            )

            # temporary work-around for header case-sensitive test
            context.http_response.headers = test_case['response']['headers']

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
          resp = client.operation_name
          matcher.match_resp_data(test_case, resp, self)
        end
      end
    end
  end
end
