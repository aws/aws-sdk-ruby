module Aws
  module Query
    # @api private
    class Serializer

      def setup_request(context)
        context.http_request.headers['Content-Type'] =
          'application/x-www-form-urlencoded; charset=utf-8'
        finalize_param_list(context, Query::ParamList.new)
      end

      def serialize_params(context, rules, params)
        finalize_param_list(context, Builder.to_query_params(rules, params))
      end

      def finalize_param_list(context, param_list)
        param_list.set('Version', context.config.api.version)
        param_list.set('Action', context.operation.name)
        context.http_request.body = param_list.to_io
      end

    end
  end
end
