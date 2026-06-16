# frozen_string_literal: true

module Aws
  module Core
    module Xml
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
          klass, code, data = extract_error(context)
          build_error(context, klass, code, data)
        end

        def extract_error(context)
          body = context.http_response.body.read
          apply_request_id(context, body)
          code = error_code(context, body)
          klass, code, data = parse_error_data(context, body, code)
          [klass, code, data]
        rescue Smithy::Xml::ParseError
          [http_status_error_code(context), Smithy::Schema::EmptyStructure.new]
        end

        def build_error(context, klass, code, data)
          errors_module = context.client.class.errors_module
          error_class = errors_module.error_class(klass)
          error_class.code = code
          error_class.new(context, data)
        end

        def error_code(context, body)
          if (matches = body.match(%r{<Code>(.+?)</Code>}))
            matches[1]
          else
            http_status_error_code(context)
          end
        end

        def parse_error_data(context, body, code) # rubocop:disable Metrics/AbcSize
          data = Smithy::Schema::EmptyStructure.new
          context.operation.errors.each do |shape|
            # query protocol may have custom error code defined by the trait
            query_code = query_error_code(shape)
            next unless code == query_code || code == shape.target.name

            data = error_data(context.config.xml_codec, shape, body)
            return [shape.target.name, query_code || code, data] if context.config.protocol != 'aws.protocols#restXml'

            Rest::Response::Headers.new(shape).apply(context.http_response, data)
            return [shape.target.name, query_code || code, data]
          end
          [code, code, data]
        end

        def query_error_code(shape)
          traits = shape.target.traits
          return unless traits.key?('aws.protocols#awsQueryError')

          traits['aws.protocols#awsQueryError']['code']
        end

        def error_data(codec, shape, body)
          # errors may nested under <Errors><Error>structure_data</Error></Errors>
          # Or may be flat and under <Error>structure_data</Error>
          body = body.tr("\n", '')
          if (matches = body.match(%r{<Error>(.+?)</Error>}))
            codec.parse(shape, "<#{shape.target.name}>#{matches[1]}</#{shape.target.name}>")
          else
            Smithy::Schema::EmptyStructure.new
          end
        end

        def http_status_error_code(context)
          "HTTP#{context.http_response.status_code}Error"
        end

        def apply_request_id(context, body)
          if (matches = body.match(%r{<RequestId>(.+?)</RequestId>}m))
            context[:request_id] = matches[1]
          end
        end
      end
    end
  end
end
