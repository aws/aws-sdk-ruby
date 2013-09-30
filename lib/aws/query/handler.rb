module Aws
  module Query
    class Handler < Xml::Handler

      def build_request(context)
        param_list = build_param_list(context)
        param_list.set('Version', context.config.api.version)
        param_list.set('Action', context.operation.name)
        context.http_request.headers['Content-Type'] = content_type
        context.http_request.body = param_list.to_io
      end

      def build_param_list(context)
        Query::Builder.to_query_params(context.operation.input, context.params)
      end

      def content_type
        'application/x-www-form-urlencoded; charset=utf-8'
      end

    end
  end
end
