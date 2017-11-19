module AwsSdkCodeGenerator
  module Views

    class AuthorizerClass < View

      # @option options [required, String] :module_name
      def initialize(options)
        @module_name = options.fetch(:module_name)
      end

      attr_reader :module_name

    end
  end
end
