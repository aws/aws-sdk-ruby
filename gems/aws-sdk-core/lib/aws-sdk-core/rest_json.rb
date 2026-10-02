# frozen_string_literal: true

require 'smithy-json'

require_relative 'rest'

module Aws
  module Core
    # Protocol implementation for AWS restJson1. Serializes requests and
    # deserializes responses (and errors) for the REST JSON wire format, and
    # builds stubbed responses for testing.
    # @api private
    # TODO: Schema extensions will include some reworks around REST SERDE.
    class RestJson
      include Rest::Protocol

      CONTENT_TYPE = 'application/json'

      def initialize(options = {})
        @codec = Smithy::Json::Codec.new(options.merge(json_name: true))
      end

      # Deserialize an error response into the modeled error. Called on every
      # response (always runs before #parse_data - see the generic Protocol
      # plugin's handler ordering), captures the request id, and returns nil
      # when the response is not an error.
      # @param [HandlerContext] context
      # @return [StandardError, nil]
      def parse_error(context)
        apply_request_id(context)
        status_code = context.http_response.status_code
        return unless status_code >= 300 && status_code <= 599 # rubocop:disable Style/ComparableBetween

        code, data = extract_error(context)
        build_error(context, code, data)
      end

      # Build a stubbed HTTP error response for the given error code.
      # @param [Configuration] _config
      # @param [String] error_code
      # @return [Http::Response]
      def stub_error(_config, error_code)
        response = Smithy::Client::Http::Response.new
        response.status_code = 400
        response.headers['Content-Type'] = CONTENT_TYPE
        response.body = <<~JSON.strip
          {
            "code": #{error_code.inspect},
            "message": "stubbed-error-message"
          }
        JSON
        response
      end

      private

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

        data = @codec.parse(shape.target, body, shape.target.type.new)
        Rest::Response::Headers.new(shape).apply(context.http_response, data)
        data
      end

      def build_error(context, code, data)
        errors_module = context.client.class.errors_module
        errors_module.error_class(code).new(context, data)
      end
    end
  end
end
