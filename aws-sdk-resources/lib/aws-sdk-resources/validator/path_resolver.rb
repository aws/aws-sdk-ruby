module Aws
  module Resources
    module Validator
      # @api private
      class PathResolver

        def initialize(api)
          @api = api
        end

        # @param [String<JMESPathExpression>] expression
        # @param [Hash<Shape Reference>] from The shape reference, typically
        #   an operation, to resolve the path starting from.
        # @return [String, nil] Returns the class name resolved, or `nil`
        #   if the path does not resolve in the model.
        def resolve(expression, from)
          ref = expression.scan(/\w+|\[.*?\]/).inject(from) do |ref, part|
            shape = @api['shapes'][ref['shape']]
            if part[0] == '['
              return nil unless shape['type'] == 'list'
              shape['member']
            else
              return nil unless shape['type'] == 'structure'
              return nil unless shape['members'][part]
              shape['members'][part]
            end
          end
          ref && ref['shape']
        end

      end
    end
  end
end
