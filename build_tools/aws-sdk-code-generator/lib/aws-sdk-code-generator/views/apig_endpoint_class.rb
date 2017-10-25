module AwsSdkCodeGenerator
  module Views

    class APIGEndpointClass < View

      # @option options [required, String] :module_name
      # @option options [required, String] :default_endpoint
      def initialize(options)
        @module_name = options.fetch(:module_name)
        endpoint = options.fetch(:default_endpoint)
        @default_endpoint = endpoint.start_with?('http') ? endpoint : "https://#{endpoint}"
      end

      attr_reader :module_name

      attr_reader :default_endpoint

    end
  end
end
