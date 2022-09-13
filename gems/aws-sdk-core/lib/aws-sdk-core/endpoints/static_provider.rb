module Aws
  module Endpoints
    # @api private
    class StaticProvider
      def resolve_endpoint(parameters)
        Endpoint.new(url: parameters.endpoint)
      end
    end
  end
end
