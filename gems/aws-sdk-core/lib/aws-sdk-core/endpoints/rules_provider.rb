module Aws
  module Endpoints
    # @api private
    class RulesProvider
      def initialize(rule_set)
        @rule_set = rule_set
      end

      def resolve_endpoint(parameters)
        obj = resolve_rules(parameters)
        case obj
        when Endpoint
          obj
        when ArgumentError
          raise obj
        else
          raise ArgumentError, 'No endpoint could be resolved'
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
