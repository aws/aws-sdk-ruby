module Aws
  module Query
    class Handler < Seahorse::Client::Handler

      CONTENT_TYPE = 'application/x-www-form-urlencoded; charset=utf-8'

      # @param [Seahorse::Client::RequestContext] context
      # @return [Seahorse::Client::Response]
      def call(context)
        build_request(context)
        @handler.call(context).on_success do |response|
          response.error = nil
          response.data = parse_xml(context)
        end
      end

      private

      def build_request(context)
        context.http_request.headers['Content-Type'] = CONTENT_TYPE
        query_params = ParamList.new
        query_params.set('Version', context.config.api.version)
        query_params.set('Action', context.operation.name)
        if input_shape = context.operation.input
          ParamBuilder.new(query_params).apply(input_shape, context.params)
        end
        context.http_request.body = query_params.to_io
      end

      def parse_xml(context)
        output_shape = context.operation.output
        case
        when output_shape.nil?
          EmptyStructure.new
        when output_shape.metadata('resultWrapper')
          output_shape = apply_wrapper(output_shape)
          data = Xml::Parser.new(output_shape).parse(xml(context))
          remove_wrapper(data, context)
        else
          Xml::Parser.new(output_shape).parse(xml(context))
        end
      end

      def xml(context)
        context.http_response.body_contents
      end

      def apply_wrapper(shape)
        Seahorse::Model::Shapes::Structure.new({
          'members' => {
            shape.metadata('resultWrapper') => shape.definition,
            'ResponseMetadata' => {
              'type' => 'structure',
              'members' => {
                'RequestId' => { 'type' => 'string' }
              }
            }
          }
        }, shape_map: shape.shape_map)
      end

      def remove_wrapper(data, context)
        if context.operation.output.metadata('resultWrapper')
          context[:request_id] = data.response_metadata.request_id
          data[data.members.first]
        else
          data
        end
      end

    end
  end
end
