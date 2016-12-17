module AwsSdkCodeGenerator
  module Views
    class ErrorsModule < View

      # @option options [required, Service] :service
      def initialize(options)
        @service = options.fetch(:service)
      end

      def module_name
        @service.module_name
      end

    end
  end
end
