module Aws
  module Json
    # @api private
    class Serializer

      def populate_headers(*args); end

      def populate_body(context, rules, params)
        json_params = Builder.new(rules).build(params)
        context.http_request.body = MultiJson.dump(json_params)
      end

    end
  end
end
