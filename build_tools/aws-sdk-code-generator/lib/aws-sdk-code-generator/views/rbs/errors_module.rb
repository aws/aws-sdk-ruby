# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    module RBS
      class ErrorsModule < View
        attr_reader :errors
        attr_reader :dynamic_error_list

        def initialize(shape_dictionary:)
          @shape_dictionary = shape_dictionary
          @errors = AwsSdkCodeGenerator::RBS::ErrorList.new(shape_dictionary: shape_dictionary).to_a
          @dynamic_error_list = AwsSdkCodeGenerator::RBS::DynamicErrorList.new(service_name: shape_dictionary.service.name)
        end

        # @return [String|nil]
        def generated_src_warning
          GENERATED_SRC_WARNING
        end

        def service_name
          @shape_dictionary.service_id
        end

        def dynamic_errors?
          !@dynamic_error_list.empty?
        end

        def dynamic_errors
          @dynamic_error_list.to_a
        end

        def dynamic_errors_source
          @dynamic_error_list.source
        end
      end
    end
  end
end
