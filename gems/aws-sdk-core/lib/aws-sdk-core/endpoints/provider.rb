module Aws
  module Endpoints
    # @api private
    class Provider
      def initialize(rule_set)
        @rule_set = rule_set
      end

      def resolve_endpoint(parameters)
        obj = resolve_rules(parameters)
        if obj.is_a?(Endpoint)
          obj
        elsif obj.is_a?(ArgumentError)
          raise obj
        else
          raise 'No endpoint could be resolved'
        end
      end

      private

      def resolve_rules(parameters)
        @rule_set.rules.each do |rule|
          output = rule.match(parameters)
          return output if output
        end
        nil
      end
    end
  end
end
