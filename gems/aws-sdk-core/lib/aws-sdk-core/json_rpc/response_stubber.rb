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
          resp = Smithy::Client::HTTP::Response.new
          resp.status_code = 200
          resp.headers['Content-Type'] = content_type(service)
          resp.headers['X-Amzn-RequestId'] = 'stubbed-request-id'
          resp.body = @codec.serialize(operation.output, data)
          resp
        end

        def stub_error(service, error_code)
          resp = Smithy::Client::HTTP::Response.new
          resp.status_code = 400
          resp.headers['Content-Type'] = content_type(service)
          resp.body = <<~JSON.strip
            {
              "code": #{error_code.inspect},
              "message": "stubbed-error-message"
            }
          JSON
          resp
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
