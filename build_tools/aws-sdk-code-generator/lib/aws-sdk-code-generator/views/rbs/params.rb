# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    module RBS
      class Params < View
        include Helper

        def initialize(options)
          @service_name = options.fetch(:service_name)
          @api = options.fetch(:api)
          @aliased_shapes = options.fetch(:aliased_shapes)
        end

        def generated_src_warning
          GENERATED_SRC_WARNING
        end

        def service_name
          @service_name
        end

        def type_aliases
          aliased_set = @aliased_shapes.to_set
          @aliased_shapes.map do |shape_name|
            shape = @api['shapes'][shape_name]
            builder = AwsSdkCodeGenerator::RBS::KeywordArgumentBuilder.new(
              api: @api,
              shape: shape,
              newline: true,
              options: { aliased_shapes: aliased_set - [shape_name] }
            )
            {
              'name' => underscore(shape_name),
              'definition' => builder.format_as_alias(indent: '    '),
            }
          end
        end
      end
    end
  end
end
