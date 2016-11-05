module AwsSdkCodeGenerator
  module Views
    module Spec
      class SpecHelper < View

        self.template_file = "#{self.template_path}/spec/spec_helper.mustache"

        # @param [Hash] options
        # @option options [required, Service] :service
        def initialize(options)
          service = options.fetch(:service)
          @gem_name = service.gem_name
          @gem_dependencies = service.gem_dependencies.map do |gem_name, _|
            { dependency: gem_name }
          end
        end

        attr_reader :gem_name
        attr_reader :gem_dependencies

      end
    end
  end
end
