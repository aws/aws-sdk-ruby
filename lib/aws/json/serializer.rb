module Aws
  module Json
    # @api private
    class Serializer

      def setup_request(*args); end

      def serialize_params(context, rules, params)
        json_params = Builder.new(rules).build(params)
        context.http_request.body = MultiJson.dump(json_params)
      end

    end
  end
end
