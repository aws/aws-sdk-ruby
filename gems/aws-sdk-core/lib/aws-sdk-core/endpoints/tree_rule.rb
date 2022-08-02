# frozen_string_literal: true

module Aws
  module Endpoints
    # @api private
    class TreeRule
      def initialize(type: 'tree', conditions:, rules:, documentation: nil)
        @type = type
        @conditions = build_conditions(conditions)
        @rules = build_rules(rules)
        @documentation = documentation
      end

      attr_reader :type
      attr_reader :conditions
      attr_reader :error
      attr_reader :documentation

      def match?(parameters, assigned = {})
        assigns = assigned.dup
        matched = conditions.all? do |condition|
          condition.match?(parameters, assigns)
          assigns = assigns.merge(condition.assigned) if condition.assign
        end
        if matched
          @rules.find { |rule| rule.match?(parameters, assigns) }
        else
          false
        end
      end

      private

      def build_conditions(conditions_json)
        conditions = []
        conditions_json.each do |condition|
          conditions << Condition.new(
            fn: condition['fn'],
            argv: condition['argv'],
            assign: condition['assign']
          )
        end
        conditions
      end

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
