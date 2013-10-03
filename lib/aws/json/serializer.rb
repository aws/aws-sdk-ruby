module Aws
  module Json
    # @api private
    class Serializer

      def populate_headers(*args); end

      def populate_body(context, rules, params)
        context.params = Builder.new(rules).build(params)
      end

    end
  end
end
