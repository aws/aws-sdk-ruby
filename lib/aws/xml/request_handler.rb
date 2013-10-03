module Aws
  module Xml
    # @api private
    class RequestHandler < Aws::RequestHandler

      def populate_headers(context)
        context.http_request.headers['Content-Type'] = 'application/xml'
      end

      def serialize_params(context, rules, params)
        context.http_request.body = Builder.build(rules, params)
      end

    end
  end
end
