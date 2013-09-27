module Aws
  module Query
    class Handler < Xml::Handler

      def build_request(context)
        context.http_request.headers['Content-Type'] =
          'application/x-www-form-urlencoded; charset=utf-8'

        param_list = Query::Builder.to_query_params(
          context.operation.input,
          context.params)

        param_list.set('Version', context.config.api.version)
        param_list.set('Action', context.operation.name)

        context.http_request.body = param_list.to_io
      end

    end
  end
end
