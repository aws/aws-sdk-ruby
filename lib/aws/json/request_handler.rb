module Aws
  module Json
    # @api private
    class RequestHandler < Aws::RequestHandler

      def serialize_params(context, rules, params)
        # the simple json plugin will serialize these onto the body
        context.params = Builder.new(rules).build(params)
      end

    end
  end
end
