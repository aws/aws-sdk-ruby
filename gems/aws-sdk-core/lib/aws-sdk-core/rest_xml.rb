# frozen_string_literal: true

require 'smithy-xml'

require_relative 'rest'

module Aws
  module Core
    # Protocol implementation for AWS restXml. Serializes requests and
    # deserializes responses (and errors) for the REST XML wire format, and
    # builds stubbed responses for testing.
    # @api private
    class RestXml
      include Rest::Protocol

      CONTENT_TYPE = 'application/xml'

      def initialize(options = {})
        @codec = Smithy::Xml::Codec.new(options)
      end

      # Deserialize an error response into the modeled error. Called on every
      # response (always runs before #parse_data - see the generic Protocol
      # plugin's handler ordering), captures the request id, and returns nil
      # when the response is not an error.
      # @param [HandlerContext] context
      # @return [StandardError, nil]
      def parse_error(context)
        apply_request_id(context)
        return unless (300..599).cover?(context.http_response.status_code)

        klass, code, data = extract_error(context)
        build_error(context, klass, code, data)
      end

      # Build a stubbed HTTP error response for the given error code.
      # @param [Configuration] _config
      # @param [String] error_code
      # @return [Http::Response]
      def stub_error(_config, error_code)
        response = Smithy::Client::Http::Response.new
        response.status_code = 400
        response.body = <<~XML.strip
          <ErrorResponse>
            <Error>
              <Code>#{error_code}</Code>
              <Message>stubbed-error-message</Message>
            </Error>
          </ErrorResponse>
        XML
        response
      end

      private

      def extract_error(context)
        body = context.http_response.body.read
        code = error_code(context, body)
        parse_error_data(context, body, code)
      rescue Smithy::Xml::ParseError
        [http_status_error_code(context), http_status_error_code(context), EMPTY_STRUCTURE.new]
      end

      def error_code(context, body)
        if (matches = body.match(%r{<Code>(.+?)</Code>}))
          matches[1]
        else
          http_status_error_code(context)
        end
      end

      def parse_error_data(context, body, code)
        shape = SCHEMA_EXTENSION.error_index(context.operation)[code]
        return [code, code, EMPTY_STRUCTURE.new] unless shape

        data = error_data(@codec, shape, body)
        Rest::Response::Headers.new(shape).apply(context.http_response, data)
        [shape.target.name, code, data]
      end

      def error_data(codec, shape, body)
        # errors may be nested under <Errors><Error>structure_data</Error></Errors>
        # or flat and under <Error>structure_data</Error>
        body = body.tr("\n", '')
        if (matches = body.match(%r{<Error>(.+?)</Error>}))
          codec.parse(shape, "<#{shape.target.name}>#{matches[1]}</#{shape.target.name}>")
        else
          EMPTY_STRUCTURE.new
        end
      end

      def build_error(context, klass, code, data)
        errors_module = context.client.class.errors_module
        error_class = errors_module.error_class(klass)
        error_class.code = code
        error_class.new(context, data)
      end
    end
  end
end
