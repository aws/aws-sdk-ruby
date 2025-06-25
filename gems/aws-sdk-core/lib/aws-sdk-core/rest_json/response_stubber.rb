# frozen_string_literal: true

module Aws
  module Core
    module RestJson
      # @api private
      class ResponseStubber
        def initialize(options = {})
          @codec = Smithy::JSON::Codec.new(options)
        end

        def stub_data(_service, operation, data)
          http_resp = Smithy::Client::HTTP::Response.new
          http_resp.status_code = 200
          http_resp.headers['X-Amzn-RequestId'] = 'stubbed-request-id'
          apply_status_code(http_resp, operation, data)
          apply_headers(http_resp, operation, data)
          apply_body(http_resp, operation, data)

          http_resp.headers['Smithy-Protocol'] = 'rpc-v2-cbor'
          http_resp.headers['Content-Type'] = 'application/cbor'
          http_resp.body = @codec.serialize(operation.output, data)
          http_resp
        end

        def stub_error(_service, error_code)
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

        def apply_status_code(resp, operation, data)
          operation.output.shape.members.each do |member_name, member_ref|
            code = member_ref.traits.dig('smithy.api#http', 'code')
            next unless code

            resp.status_code = data[member_name] if data.key?(member_name)
          end
        end

        def apply_headers(resp, operation, data)
          Rest::Request::Headers.new(operation.output).apply(resp, data)
        end

        def apply_body(resp, operation, data)
          resp.body = @codec.serialize(operation.output, data)
        end
      end
    end
  end
end
