# frozen_string_literal: true

require_relative 'param_list'

module Aws
  module Core
    module Query
      # @api private
      class Handler < Smithy::Client::Handler
        include Smithy::Schema::Shapes

        def call(context)
          build_request(context)
          @handler.call(context).on_done(200..299) do |response|
            response.data = parse_body(context)
            response.error = nil
          end
        end

        private

        def build_request(context)
          context.http_request.http_method = 'POST'
          apply_headers(context)
          apply_endpoint_path(context)
          context.http_request.body = build_body(context, context.params)
        end

        def apply_headers(context)
          context.http_request.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        end

        def apply_endpoint_path(context)
          path = context.http_request.endpoint.path
          return path if path.end_with?('/')

          context.http_request.endpoint.path += '/'
        end

        def build_body(context, params)
          param_list = ParamList.new
          param_list.set('Action', context.operation.name)
          param_list.set('Version', context.config.service.version)
          context.config.query_codec.build(context.operation.input, params, param_list)
          param_list.to_io
        end

        def parse_body(context) # rubocop:disable Metrics/AbcSize
          if context.config.protocol == 'aws.protocols#ec2Query'
            ref = context.operation.output
            context.config.xml_codec.parse(ref, context.http_response.body.read)
          else
            ref = wrap(context.operation)
            data = context.config.xml_codec.parse(ref, context.http_response.body.read)
            unwrap(context, data)
          end
        end

        def wrap(operation) # rubocop:disable Metrics/AbcSize
          result_ref = ShapeRef.new(shape: operation.output.shape, location_name: "#{operation.name}Result")
          result = StructureShape.new
          result.add_member(:result, result_ref)
          result.type = ::Struct.new(:result, :response_metadata)

          response_metadata = StructureShape.new
          response_metadata.type = ::Struct.new(:request_id)
          response_metadata.add_member(:request_id, ShapeRef.new(shape: StringShape.new, location_name: 'RequestId'))
          response_metadata_ref = ShapeRef.new(shape: response_metadata, location_name: 'ResponseMetadata')

          result.add_member(:response_metadata, response_metadata_ref)
          ShapeRef.new(shape: result)
        end

        def unwrap(context, data)
          context[:request_id] = data.response_metadata&.request_id
          data.result
        end
      end
    end
  end
end
