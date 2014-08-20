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
        param_list = ParamList.new
        param_list.set('Version', context.config.api.version)
        param_list.set('Action', context.operation.name)
        if input_shape = context.operation.input
          apply_params(param_list, context.params, input_shape)
        end
        context.http_request.body = param_list.to_io
      end

      def apply_params(param_list, params, rules)
        ParamBuilder.new(param_list).apply(rules, params)
      end

      def parse_xml(context)
        if rules = context.operation.output
          data = Xml::Parser.new(apply_wrapper(rules)).parse(xml(context))
          remove_wrapper(data, context, rules)
        else
          EmptyStructure.new
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

      def remove_wrapper(data, context, rules)
        if context.operation.output.metadata('resultWrapper')
          context[:request_id] = data.response_metadata.request_id
          data[data.members.first] || Structure.new(rules.member_names)
        else
          data
        end
      end

    end
  end
end
