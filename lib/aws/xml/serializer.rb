module Aws
  module Xml
    # @api private
    class Serializer

      def setup_request(context)
        context.http_request.headers['Content-Type'] = 'application/xml'
      end

      def serialize_params(context, rules, params)
        context.http_request.body = Builder.build(rules, params)
      end

    end
  end
end
