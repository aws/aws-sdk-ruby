# frozen_string_literal: true

require_relative '../rest/response/body'
require_relative '../rest/response/headers'
require_relative '../rest/response/status_code'

module Aws
  module Core
    module RestJson
      # @api private
      class ResponseParser
        def initialize(options = {})
          @codec = Smithy::JSON::Codec.new(options)
        end

        def parse_error(response)
          context = response.context
          return unless (300..599).cover?(context.http_response.status_code)

          body = context.http_response.body.read
          code, message, data = extract_error(body, context)
          build_error(context, code, message, data)
        end

        def parse_data(response)
          output = response.context.operation.output
          response.data =
            if output.shape == Smithy::Schema::Shapes::Prelude::Unit
              Smithy::Schema::EmptyStructure.new
            else
              output.shape.type.new
            end
          Rest::Response::StatusCode.new(output).apply(response.context.http_response, response)
          Rest::Response::Headers.new(output).apply(response.context.http_response, response)
          Rest::Response::Body.new(@codec, output).apply(response.context.http_response.body, response)
          response.data # TODO: don't rely on a return value?
        end

        private

        def build_error(context, code, message, data)
          errors_module = context.client.class.errors_module
          errors_module.error_class(code).new(context, message, data)
        end

        def http_status_error(context)
          [http_status_error_code(context), '', Smithy::Schema::EmptyStructure.new]
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

        def extract_error(body, context)
          json = ::JSON.load(body) || {}
          code = error_code(json, context)
          message = error_message(code, json)
          data = parse_error_data(context, body, code)
          [code, message, data]
        rescue ::JSON::ParserError
          [http_status_error_code(context), '', Smithy::Schema::EmptyStructure.new]
        end

        def error_code(json, context)
          code =
            if aws_query_error?(context)
              query_header = context.http_response.headers['x-amzn-query-error']
              error, _type = query_header.split(';') # type not supported
              remove_prefix(error, context)
            else
              json['__type']
            end
          code ||= json['code']
          code ||= context.http_response.headers['x-amzn-errortype']
          if code
            code.split('#').last.split(':').first
          else
            http_status_error_code(context)
          end
        end

        def aws_query_error?(context)
          context.config.service.traits.key?('aws.protocols#awsQueryCompatible') &&
            context.http_response.headers['x-amzn-query-error']
        end

        def remove_prefix(error_code, context)
          if (prefix = context.config.service['errorPrefix']) # TODO: add support for this
            error_code.sub(/^#{prefix}/, '')
          else
            error_code
          end
        end

        def error_message(code, json)
          if code == 'RequestEntityTooLarge'
            'Request body must be less than 1 MB'
          else
            json['message'] || json['Message'] || ''
          end
        end

        def parse_error_data(context, body, code)
          data = Smithy::Schema::EmptyStructure.new
          context.operation.errors.each do |ref|
            next unless ref.shape.id.split('#').last == code # TODO: add name to shapes :(

            data = @codec.deserialize(ref.shape, body, ref.shape.type.new)
            apply_error_headers(ref, context, data)
          end
          data
        end

        def apply_error_headers(ref, context, data)
          headers = Rest::Response::Headers.new(ref)
          headers.apply(context.http_response, data)
        end
      end
    end
  end
end
