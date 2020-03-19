module AwsSdkCodeGenerator
  module Views
    class RootResourceClass < View

      def initialize(options)
        @module_name = options.fetch(:module_name)
        @service_name = options.fetch(:service_name)
        class_name = @module_name.split('::').last
        api = options.fetch(:api)
        resource = (options[:resources] || {})['service'] || {}
        @actions = ResourceAction.build_list(class_name, resource, api)
        @associations = ResourceAssociation.build_list(
          class_name: class_name,
          resource: resource,
          api: api,
          paginators: options.fetch(:paginators)
        )
        @custom = options.fetch(:custom)
      end

      # @return [String]
      attr_reader :module_name

      # @return [Array<ResourceAction>]
      attr_reader :actions

      # @return [Array<ResourceAssociation>]
      attr_reader :associations

      # @return [String]
      attr_reader :service_name

      # @return [String|nil]
      def generated_src_warning
        return if @custom
        GENERATED_SRC_WARNING
      end

      # @return [Boolean]
      def actions?
        actions.size > 0
      end

      # @return [Boolean]
      def associations?
        associations.size > 0
      end

      # @return [Boolean]
      def documentation?
        actions? || associations?
      end

    end
  end
end
