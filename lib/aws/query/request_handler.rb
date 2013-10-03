module Aws
  module Query
    # @api private
    class RequestHandler < Aws::RequestHandler

      def populate_headers(context)
        context.http_request.headers['Content-Type'] =
          'application/x-www-form-urlencoded; charset=utf-8'
      end

      def serialize_params(context, rules, params)
        param_list = Builder.to_query_params(rules, params)
        param_list.set('Version', context.config.api.version)
        param_list.set('Action', context.operation.name)
        context.http_request.body = param_list.to_io
      end

    end
  end
end
