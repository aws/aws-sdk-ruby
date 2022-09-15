module Aws
  module Endpoints
    # @api private
    class StaticProvider
      def initialize(url)
        @url = url
      end

      def resolve_endpoint(_parameters)
        Endpoint.new(url: @url)
      end
    end
  end
end
