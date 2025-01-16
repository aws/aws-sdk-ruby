# frozen_string_literal: true

module Aws
  # @api private
  module Query
    class Handler < Seahorse::Client::Handler

      include Seahorse::Model::Shapes

      CONTENT_TYPE = 'application/x-www-form-urlencoded; charset=utf-8'

      WRAPPER_STRUCT = ::Struct.new(:result, :response_metadata)

      METADATA_STRUCT = ::Struct.new(:request_id)

      METADATA_REF = begin
        request_id = ShapeRef.new(
          shape: StringShape.new,
          location_name: 'RequestId')
        response_metadata = StructureShape.new
        response_metadata.struct_class = METADATA_STRUCT
        response_metadata.add_member(:request_id, request_id)
        ShapeRef.new(shape: response_metadata, location_name: 'ResponseMetadata')
      end

      # @param [Seahorse::Client::RequestContext] context
      # @return [Seahorse::Client::Response]
      def call(context)
        t_total_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
        build_request(context)
        ret = ''
        @handler.call(context).on_success do |resp|
          t_deserial_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
          resp.error = nil
          parsed = parse_xml(context)
          if parsed.nil? || parsed == EmptyStructure
            resp.data = EmptyStructure.new
          else
            resp.data = parsed
          end
          ret = resp
          puts "This should be the content length: #{ret["Content-Length"]}"
          t_deserial_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
          puts "#### Deserialization Time: #{t_deserial_end - t_deserial_start}"
        end
        t_total_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
        puts "#### Total Time: #{t_total_end - t_total_start}"
        return ret
      end

      private

      def build_request(context)
        t_serial_start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
        context.http_request.http_method = 'POST'
        context.http_request.headers['Content-Type'] = CONTENT_TYPE
        param_list = ParamList.new
        param_list.set('Version', context.config.api.version)
        param_list.set('Action', context.operation.name)
        if input_shape = context.operation.input
          apply_params(param_list, context.params, input_shape)
        end
        context.http_request.body = param_list.to_io
        t_serial_end = Process.clock_gettime(Process::CLOCK_MONOTONIC)
        puts "#### Serialization Time: #{t_serial_end - t_serial_start}"
      end

      def apply_params(param_list, params, rules)
        ParamBuilder.new(param_list).apply(rules, params)
      end

      def parse_xml(context)
        data = Xml::Parser.new(rules(context)).parse(xml(context))
        remove_wrapper(data, context)
      end

      def xml(context)
        context.http_response.body_contents
      end

      def rules(context)
        shape = Seahorse::Model::Shapes::StructureShape.new
        if context.operation.output
          shape.add_member(:result, ShapeRef.new(
            shape: context.operation.output.shape,
            location_name: context.operation.name + 'Result'
          ))
        end
        shape.struct_class = WRAPPER_STRUCT
        shape.add_member(:response_metadata, METADATA_REF)
        ShapeRef.new(shape: shape)
      end

      def remove_wrapper(data, context)
        if context.operation.output
          if data.response_metadata
            context[:request_id] = data.response_metadata.request_id
          end
          data.result || Structure.new(*context.operation.output.shape.member_names)
        else
          data
        end
      end

    end
  end
end
