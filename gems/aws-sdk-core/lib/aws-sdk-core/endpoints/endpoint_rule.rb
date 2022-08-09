# frozen_string_literal: true

module Aws
  module Endpoints
    # @api private
    class EndpointRule
      def initialize(type: 'endpoint', conditions:, endpoint: nil,
                     documentation: nil)
        @type = type
        @conditions = build_conditions(conditions)
        @endpoint = endpoint
        @documentation = documentation
      end

      attr_reader :type
      attr_reader :conditions
      attr_reader :endpoint
      attr_reader :documentation

      def match(parameters, assigned = {})
        assigns = assigned.dup
        matched = conditions.all? do |condition|
          output = condition.match?(parameters, assigns)
          assigns = assigns.merge(condition.assigned) if condition.assign
          output
        end
        resolved_endpoint(parameters, assigns) if matched
      end

      # TODO: headers can contain template, reference, or function?
      def resolved_endpoint(parameters, assigns)
        Endpoint.new(
          url: Templater.resolve(@endpoint['url'], parameters, assigns),
          properties: @endpoint['properties'],
          headers: @endpoint['headers']
        )
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
    end
  end
end
