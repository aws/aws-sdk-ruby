# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    module RBS
      class WaitersModule < View
        attr_reader :service_name
        attr_reader :waiters

        def initialize(service_name:, api:, waiters:)
          @service_name = service_name
          @waiters = AwsSdkCodeGenerator::RBS::Waiter.build_list(api: , waiters:)
        end

        # @return [String|nil]
        def generated_src_warning
          GENERATED_SRC_WARNING
        end
      end
    end
  end
end
