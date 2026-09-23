# frozen_string_literal: true

module Aws
  module Core
    module Rest
      # Shared request/response orchestration for the REST protocols
      # (RestJson, RestXml). Protocol-specific behavior (codec, error parsing,
      # stub error body) stays in the including class. The includer must define
      # a +@codec+ and a +CONTENT_TYPE+ constant.
      # @api private
      # TODO: these namespaces may be flattened during the Schema extensions work.
      module Protocol
        # Serialize the request into the REST wire format.
        # @param [HandlerContext] context
        def build_request(context) # rubocop:disable Metrics/AbcSize
          context.http_request.http_method = HTTP_EXTENSION.fetch(context.operation)[:method]
          Rest::Request::Headers.new(context.operation.input).apply(context.http_request, context.params)
          Rest::Request::Body.new(@codec, context.operation.input).apply(context.http_request, context.params)
          endpoint = Rest::Request::Endpoint.new(context.operation, context.operation.input)
          endpoint.apply(context.http_request, context.params)
          apply_content_type_header(context)
        end

        # Deserialize a successful response body.
        # @param [HandlerContext] context
        # @return [Object] the parsed output data
        def parse_data(context)
          output = context.operation.output
          data = output.type.new
          Rest::Response::StatusCode.new(output).apply(context.http_response, data)
          Rest::Response::Headers.new(output).apply(context.http_response, data)
          Rest::Response::Body.new(@codec, output).apply(context.http_response.body, data)
          data
        end

        # Build a stubbed HTTP response for the given output data.
        # @param [Configuration] _config
        # @param [Schema::OperationShape] operation
        # @param [Object] data
        # @return [Http::Response]
        def stub_data(_config, operation, data)
          response = Smithy::Client::Http::Response.new
          response.status_code = 200
          response.headers['X-Amzn-RequestId'] = 'stubbed-request-id'
          apply_status_code(response, operation, data)
          apply_stub_headers(response, operation, data)
          apply_stub_body(response, operation, data)
          response
        end

        private

        def apply_content_type_header(context)
          if (_name, _member, _type, content_type = HTTP_EXTENSION.payload_member(context.operation.input))
            context.http_request.headers['Content-Type'] ||= content_type || self.class::CONTENT_TYPE
          elsif known_body?(context)
            context.http_request.headers['Content-Type'] ||= self.class::CONTENT_TYPE
          end
        end

        def known_body?(context)
          body = context.http_request.body
          !body.respond_to?(:size) || (body.respond_to?(:size) && body.size.positive?)
        end

        def apply_request_id(context)
          headers = context.http_response.headers
          context[:request_id] = headers.delete('x-amz-request-id') || headers.delete('x-amzn-requestid')
        end

        def http_status_error_code(context)
          "HTTP#{context.http_response.status_code}Error"
        end

        def apply_status_code(http_resp, operation, data)
          name, = HTTP_EXTENSION.response_code_member(operation.output)
          http_resp.status_code = data[name] if name && data.key?(name)
        end

        def apply_stub_headers(http_resp, operation, data)
          Rest::Request::Headers.new(operation.output).apply(http_resp, data)
        end

        def apply_stub_body(http_resp, operation, data)
          Rest::Request::Body.new(@codec, operation.output).apply(http_resp, data)
        end
      end
    end
  end
end
