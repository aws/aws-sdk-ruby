# frozen_string_literal: true

module Aws
  module Core
    module Stubbing
      # @api private
      class JsonRpc
        def stub_data(config, operation, data)
          http_resp = Smithy::Client::Http::Response.new
          http_resp.status_code = 200
          http_resp.headers['Content-Type'] = content_type(config.service.traits)
          http_resp.headers['X-Amzn-RequestId'] = 'stubbed-request-id'
          http_resp.body = config.json_codec.serialize(operation.output, data)
          http_resp
        end

        def stub_error(config, error_code)
          http_resp = Smithy::Client::Http::Response.new
          http_resp.status_code = 400
          http_resp.headers['Content-Type'] = content_type(config.service.traits)
          http_resp.body = <<~JSON.strip
            {
              "__type": #{error_code.inspect},
              "message": "stubbed-error-message"
            }
          JSON
          http_resp
        end

        private

        def content_type(traits)
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
