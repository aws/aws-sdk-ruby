# frozen_string_literal: true

module Aws
  module Endpoints
    # @api private
    class EndpointRule
      def initialize(type: 'endpoint', conditions:, endpoint: nil,
                     documentation: nil)
        @type = type
        @conditions = Condition.from_json(conditions)
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

      def resolved_endpoint(parameters, assigns)
        headers = resolve_headers(parameters, assigns) if @endpoint['headers']
        if @endpoint['properties']
          properties = resolve_properties(
            @endpoint['properties'], parameters, assigns
          )
        end

        Endpoint.new(
          url: resolve_endpoint(parameters, assigns),
          properties: properties,
          headers: headers
        )
      end

      private

      def resolve_endpoint(parameters, assigns)
        value = @endpoint['url']
        if value.is_a?(Hash) && value['fn']
          Function.new(fn: value['fn'], argv: value['argv'])
                  .call(parameters, assigns)
        elsif value.is_a?(Hash) && value['ref']
          Reference.new(ref: value['ref'])
                   .resolve(parameters, assigns)
        else
          Templater.resolve(value, parameters, assigns)
        end
      end

      def resolve_headers(parameters, assigns)
        @endpoint['headers'].each.with_object({}) do |(key, arr), headers|
          headers[key] = []
          arr.each do |value|
            val = if value.is_a?(Hash) && value['fn']
                    Function.new(fn: value['fn'], argv: value['argv'])
                            .call(parameters, assigns)
                  elsif value.is_a?(Hash) && value['ref']
                    Reference.new(ref: value['ref'])
                             .resolve(parameters, assigns)
                  else
                    Templater.resolve(value, parameters, assigns)
                  end
            headers[key] << val
          end
        end
      end

      def resolve_properties(obj, parameters, assigns)
        case obj
        when Hash
          obj.each.with_object({}) do |(key, value), hash|
            hash[key] = resolve_properties(value, parameters, assigns)
          end
        when Array
          obj.collect { |value| resolve_properties(value, parameters, assigns) }
        else
          if obj.is_a?(String)
            Templater.resolve(obj, parameters, assigns)
          else
            obj
          end
        end
      end
    end
  end
end
