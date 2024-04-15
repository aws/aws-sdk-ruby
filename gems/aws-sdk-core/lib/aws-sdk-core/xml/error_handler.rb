# frozen_string_literal: true

require 'cgi'

module Aws
  module Xml
    class ErrorHandler < Seahorse::Client::Handler

      def call(context)
        @handler.call(context).on(300..599) do |response|
          response.error = error(context) unless response.error
          response.data = nil
        end
      end

      private

      def error(context)
        body = context.http_response.body_contents
        if body.empty?
          code = http_status_error_code(context)
          message = ''
          data = EmptyStructure.new
        else
          code, message, data = extract_error(body, context)
        end
        context[:request_id] = request_id(body)
        errors_module = context.client.class.errors_module
        errors_module.error_class(code).new(context, message, data)
      end

      def extract_error(body, context)
        code = error_code(body, context)
        [
          code,
          error_message(body),
          error_data(context, code)
        ]
      end

      def error_data(context, code)
        data = EmptyStructure.new
        if error_rules = context.operation.errors
          error_rules.each do |rule|
            # query protocol may have custom error code
            # reference: https://smithy.io/2.0/aws/protocols/aws-query-protocol.html#error-code-resolution
            error_shape_code = rule.shape['error']['code'] if rule.shape['error']
            match = (code == error_shape_code || code == rule.shape.name)
            next unless match && rule.shape.members.any?

            data = parse_error_data(rule, context.http_response.body_contents)
            # supporting HTTP bindings
            apply_error_headers(rule, context, data)
          end
        end
        data
      rescue Xml::Parser::ParsingError
        EmptyStructure.new
      end

      def parse_error_data(rule, body)
        # errors may nested under <Errors><Error>structure_data</Error></Errors>
        # Or may be flat and under <Error>structure_data</Error>
        body = body.tr("\n", '')
        if matches = body.match(/<Error>(.+?)<\/Error>/)
          Parser.new(rule).parse("<#{rule.shape.name}>#{matches[1]}</#{rule.shape.name}>")
        else
          EmptyStructure.new
        end
      end

      def apply_error_headers(rule, context, data)
        headers = Aws::Rest::Response::Headers.new(rule)
        headers.apply(context.http_response, data)
      end

      def error_code(body, context)
        if matches = body.match(/<Code>(.+?)<\/Code>/)
          remove_prefix(unescape(matches[1]), context)
        else
          http_status_error_code(context)
        end
      end

      def http_status_error_code(context)
        status_code = context.http_response.status_code
        {
          302 => 'MovedTemporarily',
          304 => 'NotModified',
          400 => 'BadRequest',
          403 => 'Forbidden',
          404 => 'NotFound',
          412 => 'PreconditionFailed',
          413 => 'RequestEntityTooLarge',
        }[status_code] || "Http#{status_code}Error"
      end

      def remove_prefix(error_code, context)
        if prefix = context.config.api.metadata['errorPrefix']
          error_code.sub(/^#{prefix}/, '')
        else
          error_code
        end
      end

      def error_message(body)
        if matches = body.match(/<Message>(.+?)<\/Message>/m)
          unescape(matches[1])
        else
          ''
        end
      end

      def request_id(body)
        if matches = body.match(/<RequestId>(.+?)<\/RequestId>/m)
          matches[1]
        end
      end

      def unescape(str)
        CGI.unescapeHTML(str)
      end

    end
  end
end
