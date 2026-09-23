# frozen_string_literal: true

require 'smithy-json'

module Aws
  module Core
    # Protocol implementation for AWS JSON (awsJson1_0 / awsJson1_1). Serializes
    # requests and deserializes responses (and errors) for the JSON RPC wire
    # format, and builds stubbed responses for testing.
    # @api private
    class JsonRpc
      def initialize(options = {})
        @codec = Smithy::Json::Codec.new(options)
      end

      # Serialize the request into the AWS JSON wire format.
      # @param [HandlerContext] context
      def build_request(context)
        context.http_request.http_method = 'POST'
        apply_headers(context)
        apply_endpoint_path(context)
        context.http_request.body = @codec.build(context.operation.input, context.params)
      end

      # Deserialize a successful response body.
      # @param [HandlerContext] context
      # @return [Object] the parsed output data
      def parse_data(context)
        @codec.parse(context.operation.output, context.http_response.body.read)
      end

      # Deserialize an error response into the modeled error. Called on every
      # response; captures the request id and returns nil when the response is
      # not an error.
      # @param [HandlerContext] context
      # @return [StandardError, nil]
      def parse_error(context)
        context[:request_id] = context.http_response.headers['X-Amzn-RequestId']
        return unless (300..599).cover?(context.http_response.status_code)

        code, data = extract_error(context)
        build_error(context, code, data)
      end

      # Build a stubbed HTTP response for the given output data.
      # @param [Configuration] config
      # @param [Schema::OperationShape] operation
      # @param [Object] data
      # @return [Http::Response]
      def stub_data(config, operation, data)
        response = Smithy::Client::Http::Response.new
        response.status_code = 200
        response.headers['Content-Type'] = content_type(config.service)
        response.headers['X-Amzn-RequestId'] = 'stubbed-request-id'
        response.body = @codec.build(operation.output, data)
        response
      end

      # Build a stubbed HTTP error response for the given error code.
      # @param [Configuration] config
      # @param [String] error_code
      # @return [Http::Response]
      def stub_error(config, error_code)
        response = Smithy::Client::Http::Response.new
        response.status_code = 400
        response.headers['Content-Type'] = content_type(config.service)
        response.body = <<~JSON.strip
          {
            "__type": #{error_code.inspect},
            "message": "stubbed-error-message"
          }
        JSON
        response
      end

      private

      def apply_headers(context)
        service = context.config.service
        context.http_request.headers['Content-Type'] = Extension.json_content_type(service)
        context.http_request.headers['X-Amz-Target'] = Extension.json_target(service, context.operation)
        context.http_request.headers['X-Amzn-Query-Mode'] = 'true' if Extension.query_compatible?(service)
      end

      def content_type(service)
        Extension.json_content_type(service)
      end

      def apply_endpoint_path(context)
        path = context.http_request.endpoint.path
        return path if path.end_with?('/')

        context.http_request.endpoint.path += '/'
      end

      def extract_error(context)
        body = context.http_response.body.read
        code = error_code(context, body)
        data = parse_error_data(context, body, code)
        [code, data]
      rescue Smithy::Json::ParseError
        [http_status_error_code(context), EMPTY_STRUCTURE.new]
      end

      def error_code(context, body)
        code = context.http_response.headers['x-amzn-errortype']
        unless code
          json = Smithy::Json.load(body)
          code = json['__type'] || json['code']
        end
        code ||= http_status_error_code(context)
        code.split('#').last.split(':').first
      end

      def parse_error_data(context, body, code)
        shape = SCHEMA_EXTENSION.error_index(context.operation)[code]
        return EMPTY_STRUCTURE.new unless shape

        @codec.parse(shape.target, body, shape.target.type.new)
      end

      def build_error(context, code, data)
        errors_module = context.client.class.errors_module
        error_class = errors_module.error_class(code)
        error_class.code = query_compatible_error(context) if query_compatible_header?(context)
        error_class.new(context, data)
      end

      def query_compatible_header?(context)
        Extension.query_compatible?(context.config.service) && context.http_response.headers['x-amzn-query-error']
      end

      def query_compatible_error(context)
        error, _type = context.http_response.headers['x-amzn-query-error'].split(';')
        error
      end

      def http_status_error_code(context)
        "HTTP#{context.http_response.status_code}Error"
      end
    end
  end
end
