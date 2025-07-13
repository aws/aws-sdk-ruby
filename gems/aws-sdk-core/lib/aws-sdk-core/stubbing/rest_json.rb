# frozen_string_literal: true

module Aws
  module Core
    module Stubbing
      # @api private
      class RestJson
        def stub_data(config, operation, data)
          http_resp = Smithy::Client::HTTP::Response.new
          http_resp.status_code = 200
          http_resp.headers['X-Amzn-RequestId'] = 'stubbed-request-id'
          apply_status_code(http_resp, operation, data)
          apply_headers(http_resp, operation, data)
          apply_body(config.codec, http_resp, operation, data)
          http_resp
        end

        def stub_error(_config, error_code)
          http_resp = Smithy::Client::HTTP::Response.new
          http_resp.status_code = 400
          http_resp.headers['Content-Type'] = 'application/json'
          http_resp.body = <<~JSON.strip
            {
              "code": #{error_code.inspect},
              "message": "stubbed-error-message"
            }
          JSON
          http_resp
        end

        private

        def apply_status_code(http_resp, operation, data)
          operation.output.shape.members.each do |member_name, member_ref|
            code = member_ref.traits.dig('smithy.api#http', 'code')
            next unless code

            http_resp.status_code = data[member_name] if data.key?(member_name)
          end
        end

        def apply_headers(http_resp, operation, data)
          Rest::Request::Headers.new(operation.output).apply(http_resp, data)
        end

        def apply_body(codec, http_resp, operation, data)
          Rest::Request::Body.new(codec, operation.output).apply(http_resp, data)
        end
      end
    end
  end
end
