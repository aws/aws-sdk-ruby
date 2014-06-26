module Aws
  module Resource
    module Validator
      class ShapeValidator

        # @param [Validator::Context] context
        # @param [String] shape_name
        def initialize(context, shape_name)
          @context = context
          @shape_name = shape_name
          @path = context.path
        end

        attr_reader :shape_name

        attr_reader :path

        def validate
          validate_shape_is_defined && validate_shape_is_a_structure
        end

        private

        def validate_shape_is_defined
          if shape
            true
          else
            @context.error("'#{path}' not found at api#/shapes/#{shape_name}.")
          end
        end

        def validate_shape_is_a_structure
          if shape['type'] == 'structure'
            true
          else
            @context.error("'#{path}' must resolve to a structure shape.")
          end
        end

        def shape
          @context.api['shapes'][shape_name]
        end

      end
    end
  end
end
