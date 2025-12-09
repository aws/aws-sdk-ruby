# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    module Features
      class Env < View

        # @param [Hash] options
        # @option options [required, Service] :service
        def initialize(options)
          @service = options.fetch(:service)
          @gem_name = service.gem_name
          @module_name = service.module_name
          @gem_dependencies = service.gem_dependencies.map do |gem_name, _|
            { dependency: gem_name }
          end
          @custom = service.protocol == 'api-gateway'
        end

        attr_reader :gem_name
        attr_reader :service
        attr_reader :module_name
        attr_reader :gem_dependencies

        # @return [String|nil]
        def generated_src_warning
          return if @custom
          GENERATED_SRC_WARNING
        end

      end
    end
  end
end
