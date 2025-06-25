# frozen_string_literal: true

module Aws
  module Core
    module JsonRpc
      # @api private
      class ResponseStubber
        def initialize(options = {})
          @codec = Smithy::JSON::Codec.new(options)
        end

        def stub_data(service, operation, data)
          http_resp = Smithy::Client::HTTP::Response.new
          http_resp.status_code = 200
          http_resp.headers['Content-Type'] = content_type(service)
          http_resp.headers['X-Amzn-RequestId'] = 'stubbed-request-id'
          http_resp.body = @codec.serialize(operation.output, data)
          http_resp
        end

        def stub_error(service, error_code)
          http_resp = Smithy::Client::HTTP::Response.new
          http_resp.status_code = 400
          http_resp.headers['Content-Type'] = content_type(service)
          http_resp.body = <<~JSON.strip
            {
              "code": #{error_code.inspect},
              "message": "stubbed-error-message"
            }
          JSON
          http_resp
        end

        private

        def content_type(service)
          traits = service.traits
          version =
            if traits.key?('aws.protocols#awsJson1_1')
              '1.1'
            elsif traits.key?('aws.protocols#awsJson1_0')
              '1.0'
            end
          "application/x-amz-json-#{version}"
        end
      end
    end
  end
end
