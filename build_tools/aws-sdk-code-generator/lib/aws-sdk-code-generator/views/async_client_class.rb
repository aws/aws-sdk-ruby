# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    class AsyncClientClass < View

      # @option options [required, String] :service_identifier
      # @option options [required, String] :service_name
      # @option options [required, String] :module_name
      # @option options [required, String] :gem_name
      # @option options [required, String] :gem_version
      # @option options [required, String] :aws_sdk_core_lib_path
      # @option options [required, String] :protocol
      # @option options [required, String] :signature_version
      # @option options [required, Hash] :add_plugins
      # @option options [required, Array] :remove_plugins
      # @option options [required, Hash] :api
      # @option options [Hash] :client_examples
      def initialize(options)
        @service_identifier = options.fetch(:service_identifier)
        @service_name = options.fetch(:service_name)
        @module_name = options.fetch(:module_name)
        @gem_name = options.fetch(:gem_name)
        @gem_version = options.fetch(:gem_version)
        @plugins = PluginList.new(options)
        @codegenerated_plugins = options.fetch(:codegenerated_plugins, [])
        @client_constructor = ClientConstructor.new(
          options.merge(
            plugins: @plugins,
            codegenerated_plugins: @codegenerated_plugins))
        @operations = ClientOperationList.new(options).to_a
      end

      # @return [String]
      attr_reader :service_identifier

      # @return [String]
      attr_reader :service_name

      # @return [String]
      attr_reader :module_name

      # @return [String]
      attr_reader :gem_name

      # @return [String]
      attr_reader :gem_version

      # @return [ClientConstructor]
      attr_reader :client_constructor

      # @return [Array<Operation>]
      attr_reader :operations

      # @return [String|nil]
      def generated_src_warning
        GENERATED_SRC_WARNING
      end

      # @return [Array<String>]
      def plugin_requires
        @plugins.map(&:require_path)
      end

      # @return [Array<String>]
      def plugin_class_names
        @plugins.map(&:class_name) + @codegenerated_plugins.map(&:class_name)
      end

    end
  end
end
