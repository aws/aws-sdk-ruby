module AwsSdkCodeGenerator
  module Views
    class Version < View

      # @option options [required, Service] :service
      def initialize(options)
        @service = options.fetch(:service)
      end

      def version
        @service.gem_version
      end

    end
  end
end
