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
          code, message, data = extract_error(context)
          build_error(context, code, message, data)
        end

        def build_error(context, code, message, data)
          errors_module = context.client.class.errors_module
          error_class = errors_module.error_class(code)
          error_class.code = query_compatible_error(context) if query_compatible_header?(context)
          error_class.new(context, message, data)
        end

        def extract_error(context)
          body = context.http_response.body.read
          body = '{}' if body.empty?
          json = Smithy::JSON.load(body)
          code = error_code(json, context)
          message = error_message(json)
          data = parse_error_data(context, body, code)
          [code, message, data]
        rescue Smithy::JSON::ParseError
          [http_status_error_code(context), '', Smithy::Schema::EmptyStructure.new]
        end

        def http_status_error_code(context)
          status_code = context.http_response.status_code
          "HTTP#{status_code}Error"
        end

        def error_code(json, context)
          code = json['__type']
          code ||= json['code']
          code ||= context.http_response.headers['X-Amzn-Errortype']
          if code
            code.split('#').last.split(':').first
          else
            http_status_error_code(context)
          end
        end

        def error_message(json)
          json['message'] || json['Message'] || ''
        end

        def parse_error_data(context, body, code)
          data = Smithy::Schema::EmptyStructure.new
          context.operation.errors.each do |ref|
            next unless ref.shape.id.split('#').last == code # TODO: add name to shapes :(

            data = context.config.json_codec.deserialize(ref.shape, body, ref.shape.type.new)
            # TODO: this does not really belong here - possibly need a rest error handler instead.
            Rest::Response::Headers.new(ref).apply(context.http_response, data)
          end
          data
        end

        def query_compatible_header?(context)
          context.config.service.traits.key?('aws.protocols#awsQueryCompatible') &&
            context.http_response.headers['X-Amzn-Query-Error']
        end

        def query_compatible_error(context)
          error, _type = context.http_response.headers['X-Amzn-Query-Error'].split(';')
          error
        end
      end
    end
  end
end

