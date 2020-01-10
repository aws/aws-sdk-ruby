module AwsSdkCodeGenerator
  module Views
    class APIGReadme < View

      # @option options [required, String] :service_name
      # @option options [required, String] :module_name
      # @option options [required, String] :gem_name
      # @option options [required, String] :gem_major_version
      def initialize(options)
        @service_name = options.fetch(:service_name)
        @module_name = options.fetch(:module_name)
        @gem_name = options.fetch(:gem_name)
        @gem_major_version = options.fetch(:gem_major_version)
      end

      # @return [String]
      attr_reader :module_name

      # @return [String]
      attr_reader :gem_major_version

      # @return [String]
      attr_reader :gem_name

      # @return [String]
      attr_reader :service_name

    end
  end
end
