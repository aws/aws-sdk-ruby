# frozen_string_literal: true

module Aws
  module Core
    # Shared request/error orchestration for AWS Query protocol objects.
    # @api private
    module QueryProtocol
      def build_request(context)
        context.http_request.http_method = 'POST'
        context.http_request.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        apply_endpoint_path(context)
        context.http_request.body = build_body(context, context.params)
      end

      def parse_error(context)
        return unless (300..599).cover?(context.http_response.status_code)

        klass, code, data = extract_error(context)
        build_error(context, klass, code, data)
      end

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

      def apply_endpoint_path(context)
        path = context.http_request.endpoint.path
        return path if path.end_with?('/')

        context.http_request.endpoint.path += '/'
      end

      def build_body(context, params)
        param_list = Query::ParamList.new
        param_list.set('Action', context.operation.name)
        param_list.set('Version', context.config.service.version)
        @input_codec.build(context.operation.input, params, param_list)
        param_list.to_io
      end

      def extract_error(context)
        body = context.http_response.body.read
        apply_request_id(context, body)
        code = error_code(context, body)
        parse_error_data(context, body, code)
      rescue Smithy::Xml::ParseError
        [http_status_error_code(context), http_status_error_code(context), EMPTY_STRUCTURE.new]
      end

      def error_code(context, body)
        if (matches = body.match(%r{<Code>\s*(.+?)\s*</Code>}m))
          matches[1]
        else
          http_status_error_code(context)
        end
      end

      def parse_error_data(context, body, code)
        entry = QueryExtension.error_index(context.operation)[code]
        if entry
          klass, query_code, shape = entry
          return [klass, query_code, error_data(shape, body)]
        end

        [code, code, EMPTY_STRUCTURE.new]
      end

      def error_data(shape, body)
        body = body.tr("\n", '')
        if (matches = body.match(%r{<Error>(.+?)</Error>}))
          @output_codec.parse(shape, "<#{shape.target.name}>#{matches[1]}</#{shape.target.name}>")
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

      def http_status_error_code(context)
        "HTTP#{context.http_response.status_code}Error"
      end

      def apply_request_id(context, body)
        return unless (matches = body.match(%r{<RequestId>(.+?)</RequestId>}m))

        context[:request_id] = matches[1]
      end
    end
  end
end
