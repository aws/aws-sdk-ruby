module AwsSdkCodeGenerator
  module Views
    class ErrorsModule < View

      # @option options [required, Service] :service
      def initialize(options)
        @service = options.fetch(:service)
        @service_name = @service.name
        @errors = ErrorList.new(api: @service.api, module_name: module_name).to_a
      end

      # @return [Array<Error>]
      attr_reader :errors

      # @return [String]
      attr_reader :service_name

      # @return [String|nil]
      def generated_src_warning
        return if @service.protocol == 'api-gateway'
        GENERATED_SRC_WARNING
      end

      def module_name
        @service.module_name
      end

    end
  end
end
