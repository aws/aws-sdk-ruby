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
          resp = Smithy::Client::HTTP::Response.new
          resp.status_code = 200
          resp.headers['X-Amzn-RequestId'] = 'stubbed-request-id'
          apply_status_code(resp, operation, data)
          apply_headers(resp, operation, data)
          apply_body(resp, operation, data)

          resp.headers['Smithy-Protocol'] = 'rpc-v2-cbor'
          resp.headers['Content-Type'] = 'application/cbor'
          resp.body = @codec.serialize(operation.output, data)
          resp
        end

        def stub_error(error_code)
          resp = Smithy::Client::HTTP::Response.new
          resp.status_code = 400
          resp.headers['Content-Type'] = 'application/json'
          resp.body = <<~JSON.strip
            {
              "code": #{error_code.inspect},
              "message": "stubbed-error-message"
            }
          JSON
          resp
        end

        private

        def apply_status_code(resp, operation, data)
          operation.output.members.each do |member_name, member_shape|
            code = member_shape.traits.dig('smithy.api#http', 'code')
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
