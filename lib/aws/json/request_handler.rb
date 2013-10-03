module Aws
  module Json
    # @api private
    class RequestHandler < Aws::RequestHandler

      def serialize_params(context, rules, params)
        Builder.build(rules, params)
      end

    end
  end
end
