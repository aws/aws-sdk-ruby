# frozen_string_literal: true

require_relative 'param_builder'
require_relative 'param_list'

module Aws
  module Core
    module Query
      # @api private
      class Handler < Smithy::Client::Handler
        include Smithy::Schema::Shapes

        WRAPPER_STRUCT = ::Struct.new(:result, :response_metadata)
        METADATA_STRUCT = ::Struct.new(:request_id)
        METADATA_REF =
          begin
            request_id = ShapeRef.new(shape: StringShape.new, member_name: 'RequestId')
            response_metadata = StructureShape.new
            response_metadata.type = METADATA_STRUCT
            response_metadata.add_member(:request_id, request_id)
            ShapeRef.new(shape: response_metadata, member_name: 'ResponseMetadata')
          end

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
          ParamBuilder.new(param_list).apply(context.operation.input, params)
          param_list.to_io
        end

        def parse_body(context)
          data = context.config.xml_codec.parse(wrap(context), context.http_response.body.read)
          unwrap(context, data)
        end

        def wrap(context)
          ref = ShapeRef.new(
            shape: context.operation.output.shape,
            member_name: "#{context.operation.name}Result"
          )
          shape = StructureShape.new
          shape.add_member(:result, ref)
          shape.type = WRAPPER_STRUCT
          shape.add_member(:response_metadata, METADATA_REF)
          ShapeRef.new(shape: shape)
        end

        def unwrap(context, data)
          context[:request_id] = data.response_metadata.request_id if data.response_metadata
          data.result
        end
      end
    end
  end
end
