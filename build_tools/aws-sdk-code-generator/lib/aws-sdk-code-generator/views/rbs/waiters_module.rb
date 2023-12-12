# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    module RBS
      class WaitersModule < View
        attr_reader :waiters

        def initialize(shape_dictionary:)
          @shape_dictionary = shape_dictionary
          @waiters = AwsSdkCodeGenerator::RBS::Waiter.build_list(shape_dictionary:)
        end

        # @return [String|nil]
        def generated_src_warning
          GENERATED_SRC_WARNING
        end

        def service_name
          @shape_dictionary.service_id
        end
      end
    end
  end
end
