# frozen_string_literal: true

module Aws
  module Endpoints
    # @api private
    class EndpointRule
      def initialize(type: 'endpoint', conditions:, endpoint: nil,
                     documentation: nil)
        @type = type
        @conditions = build_conditions(conditions)
        @endpoint = build_endpoint(endpoint)
        @documentation = documentation
      end

      attr_reader :type
      attr_reader :conditions
      attr_reader :endpoint
      attr_reader :documentation

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

      def build_endpoint(endpoint_json)
        return unless endpoint_json

        Endpoint.new(
          url: endpoint_json['url'],
          # TODO: unwrap these and convert to reference/function object
          properties: endpoint_json['properties'],
          headeres: endpoint_json['headers']
        )
      end
    end
  end
end
