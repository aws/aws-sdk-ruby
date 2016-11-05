module AwsSdkCodeGenerator
  module Views
    class Version < View

      # @option options [required, Service] :service
      def initialize(options)
        @service = options.fetch(:service)
      end

      def version
        @service.version
      end

    end
  end
end
