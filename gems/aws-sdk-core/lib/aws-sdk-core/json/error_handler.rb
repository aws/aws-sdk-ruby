# frozen_string_literal: true

module Aws
  module Core
    module Json
      # @api private
      class ErrorHandler < Smithy::Client::Handler
        def call(context)
          @handler.call(context).on_done(300..599) do |response|
            response.error = error(context)
            response.data = nil
          end
        end

        private

        def error(context)
          code, data = extract_error(context)
          build_error(context, code, data)
        end

        def extract_error(context)
          body = context.http_response.body.read
          code = error_code(context, body)
          data = parse_error_data(context, body, code)
          [code, data]
        rescue Smithy::Json::ParseError
          [http_status_error_code(context), Smithy::Schema::EmptyStructure.new]
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

        def parse_error_data(context, body, code) # rubocop:disable Metrics/AbcSize
          data = Smithy::Schema::EmptyStructure.new
          context.operation.errors.each do |ref|
            next unless ref.shape.name == code

            data = context.config.json_codec.parse(ref.shape, body, ref.shape.type.new)
            return data if context.config.protocol != 'aws.protocols#restJson1'

            Rest::Response::Headers.new(ref).apply(context.http_response, data)
            return data
          end
          data
        end

        def build_error(context, code, data)
          errors_module = context.client.class.errors_module
          error_class = errors_module.error_class(code)
          error_class.code = query_compatible_error(context) if query_compatible_header?(context)
          error_class.new(context, data)
        end

        def query_compatible_header?(context)
          context.config.service.traits.key?('aws.protocols#awsQueryCompatible') &&
            context.http_response.headers['x-amzn-query-error']
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
end
