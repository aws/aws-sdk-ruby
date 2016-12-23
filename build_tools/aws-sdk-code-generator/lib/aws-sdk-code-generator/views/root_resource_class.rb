module AwsSdkCodeGenerator
  module Views
    class RootResourceClass < View

      def initialize(options)
        @module_name = options.fetch(:module_name)
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
      end

      # @return [String]
      attr_reader :module_name

      # @return [Array<ResourceAction>]
      attr_reader :actions

      # @return [Array<ResourceAssociation>]
      attr_reader :associations

      # @return [Boolean]
      def actions?
        actions.size > 0
      end

      # @return [Boolean]
      def associations?
        associations.size > 0
      end

    end
  end
end
