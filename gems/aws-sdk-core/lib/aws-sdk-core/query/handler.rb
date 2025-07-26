# frozen_string_literal: true

require_relative 'param_builder'
require_relative 'param_list'

module Aws
  module Core
    # @api private
    module Query
      class Handler < Smithy::Client::Handler
        include Smithy::Schema::Shapes

        CONTENT_TYPE = 'application/x-www-form-urlencoded'

        WRAPPER_STRUCT = ::Struct.new(:result, :response_metadata)

        METADATA_STRUCT = ::Struct.new(:request_id)

        METADATA_REF = begin
                         request_id = ShapeRef.new(
                           shape: StringShape.new,
                           member_name: 'RequestId')
                         response_metadata = StructureShape.new
                         response_metadata.type = METADATA_STRUCT
                         response_metadata.add_member(:request_id, request_id)
                         ShapeRef.new(shape: response_metadata, member_name: 'ResponseMetadata')
                       end

        def call(context)
          build_request(context)
          @handler.call(context).on_done(200..299) do |response|
            parsed = parse_xml(context)
            if parsed.nil? || parsed == Smithy::Schema::EmptyStructure
              response.data = Smithy::Schema::EmptyStructure.new
            else
              response.data = parsed
            end
            response.error = nil
          end
        end

        private

        def build_request(context)
          context.http_request.http_method = 'POST'
          context.http_request.headers['Content-Type'] = CONTENT_TYPE
          apply_endpoint_path(context)
          param_list = ParamList.new
          param_list.set('Action', context.operation.name)
          param_list.set('Version', context.config.service.version)
          if input_shape = context.operation.input
            apply_params(param_list, context.params, input_shape)
          end
          context.http_request.body = param_list.to_io
        end

        def apply_endpoint_path(context)
          path = context.http_request.endpoint.path
          return path if path.end_with?('/')

          context.http_request.endpoint.path += '/'
        end


        def apply_params(param_list, params, rules)
          ParamBuilder.new(param_list).apply(rules, params)
        end

        def parse_xml(context)
          body = context.http_response.body.read
          data = Smithy::Xml::Parser.new.parse(rules(context), body)
          remove_wrapper(data, context)
        end

        def rules(context)
          shape = Smithy::Schema::Shapes::StructureShape.new
          if context.operation.output
            shape.add_member(:result, ShapeRef.new(
              shape: context.operation.output.shape,
              member_name: context.operation.name + 'Result'
            ))
          end
          shape.type = WRAPPER_STRUCT
          shape.add_member(:response_metadata, METADATA_REF)
          ShapeRef.new(shape: shape)
        end

        def remove_wrapper(data, context)
          if context.operation.output
            if data.response_metadata
              context[:request_id] = data.response_metadata.request_id
            end
            data.result # TODO: || Smithy::Schema::Structure.new(*context.operation.output.shape.members.keys)
          else
            data
          end
        end

      end
    end
  end
end
