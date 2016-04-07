module Aws
  # @api private
  class EndpointProvider

    RULES = RegionsAndEndpoints.new

    class << self

      def resolve(region, service)
        RULES.resolve(region, service)
      end

      def signing_region(region, service)
        RULES.signing_region(region, service)
      end
    end
  end
end
