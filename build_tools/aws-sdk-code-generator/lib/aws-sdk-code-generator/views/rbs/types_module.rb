# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    module RBS
      class TypesModule < View
        attr_reader :shape_map

        # @param [Hash] options
        # @option options [required, Service] :service
        def initialize(options)
          @shape_dictionary = options[:shape_dictionary]
          @shape_map = options[:shape_dictionary].filter_map { |name, shapes|
            unless shapes
              next
            end
            # request structure used in operations keyword argument directly
            # next if shapes.first.request

            # exception should be in errors_module
            next if shapes.first.exception?

            # remove duplication
            shapes.group_by { |shape|
              shape.rbs_print_name
            }.map { |print_name, shapes| shapes.first }
          }.flatten
        end

        # @return [String|nil]
        def generated_src_warning
          GENERATED_SRC_WARNING
        end

        def service_name
          @shape_dictionary.service.name
        end
      end
    end
  end
end
