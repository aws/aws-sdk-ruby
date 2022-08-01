# frozen_string_literal: true

module Aws
  module Endpoints
    # @api private
    class RuleSet
      def initialize(version:, service_id:, parameters:, rules:)
        @version = version
        @service_id = service_id
        @parameters = parameters
        @rules = build_rules(rules)
      end

      attr_reader :version
      attr_reader :service_id
      attr_reader :parameters
      attr_reader :rules

      private

      def build_rules(rules_json)
        rules = []
        rules_json.each do |rule|
          if rule['type'] == 'endpoint' || rule['endpoint']
            rules << EndpointRule.new(
              conditions: rule['conditions'],
              endpoint: rule['endpoint'],
              documentation: rule['documentation']
            )
          elsif rule['type'] == 'error' || rule['error']
            rules << ErrorRule.new(
              conditions: rule['conditions'],
              error: rule['error'],
              documentation: rule['documentation']
            )
          elsif rule['type'] == 'tree' || rule['rules']
            rules << TreeRule.new(
              conditions: rule['conditions'],
              rules: rule['rules'],
              documentation: rule['documentation']
            )
          else
            # should not happen
            raise 'unknown rule type'
          end
        end
        rules
      end
    end
  end
end
