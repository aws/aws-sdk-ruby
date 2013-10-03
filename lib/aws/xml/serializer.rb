module Aws
  module Xml
    # @api private
    class Serializer

      def populate_headers(context)
        context.http_request.headers['Content-Type'] = 'application/xml'
      end

      def populate_body(context, rules, params)
        context.http_request.body = Builder.build(rules, params)
      end

    end
  end
end
