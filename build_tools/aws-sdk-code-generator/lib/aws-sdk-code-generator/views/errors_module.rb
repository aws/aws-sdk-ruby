# frozen_string_literal: true

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

      # @return [String]
      def module_name
        @service.module_name
      end

      # @return [Boolean]
      def customization_file_exists?
        File.exist?(
          File.join(
            Helper.gem_lib_path(gem_name), "#{customization_file_path}.rb"
          )
        )
      end

      # @return [String]
      def customization_file_path
        "#{gem_name}/customizations/errors"
      end

      def query_or_query_compatible_service?
        @service.protocol == 'query' || @service.api['metadata']['awsQueryCompatible']
      end

      private

      # @return [String]
      def gem_name
        "aws-sdk-#{module_name.split('::').last.downcase}"
      end
    end
  end
end
