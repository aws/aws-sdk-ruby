module AwsSdkCodeGenerator
  class ResourceHasManyAssociation
    class << self

      # @return [ResourceMethod]
      def build(options)
        ResourceMethod.new.tap do |m|
          m.method_name = Underscore.underscore(options.fetch(:name))
          m.arguments = 'options = {}'
          m.code = ResourceHasManyAssociationCode.new(options).build
          m.documentation = documentation(options)
        end
      end

      private

      def documentation(options)
        ResourceClientReqeustDocumentation.new(
          method_name: Underscore.underscore(options.fetch(:name)),
          receiver: Underscore.underscore(options.fetch(:class_name)),
          resp_var: Underscore.underscore(options.fetch(:name)),
          returns: "#{options.fetch(:assoc)['resource']['type']}::Collection",
          request: options.fetch(:assoc)['request'],
          api: options.fetch(:api),
          skip: paging_options(options),
        ).build
      end

      def paging_options(options)
        paginators = options.fetch(:paginators, nil)
        operation_name = options.fetch(:assoc).fetch('request').fetch('operation')
        if paginated?(operation_name, paginators)
          skip = []
          skip << paginators['pagination'][operation_name]['input_token']
          skip << paginators['pagination'][operation_name]['limit_key']
          skip.compact
        else
          []
        end
      end

      def paginated?(operation_name, paginators)
        paginators &&
        paginators['pagination'][operation_name] &&
        paginators['pagination'][operation_name]['input_token']
      end

    end
  end
end
