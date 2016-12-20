module AwsSdkCodeGenerator
  module Views
    class ClientClass < View

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
      # @option options [Hash] :waiters
      def initialize(options)
        @service_identifier = options.fetch(:service_identifier)
        @service_name = options.fetch(:service_name)
        @module_name = options.fetch(:module_name)
        @gem_name = options.fetch(:gem_name)
        @gem_version = options.fetch(:gem_version)
        @plugin_requires = []
        @plugin_class_names = []
        PluginList.new(options).each do |plugin|
          @plugin_requires << plugin.require_path
          @plugin_class_names << plugin.class_name
        end
        @waiters = WaiterList.new(options[:waiters] || { 'waiters' => {}})
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

      # @return [Array<String>]
      attr_reader :plugin_requires

      # @return [Array<String>]
      attr_reader :plugin_class_names

      # @return [Array<WaiterList::Waiter>]
      def waiters
        @waiters.to_a
      end

      # @return [Boolean]
      def waiters?
        @waiters.count > 0
      end

      # @return [String<Markdown>]
      def waiters_markdown_table
        @waiters.markdown_table
      end

    end
  end
end
