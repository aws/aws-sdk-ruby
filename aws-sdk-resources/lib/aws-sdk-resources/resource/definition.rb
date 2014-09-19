require 'set'

module Aws
  module Resource

    # Given a resource definition document, a {Definition} can build a set
    # of related resource classes.
    class Definition

      # @param [Hash] definition
      # @option options [String] :source_path
      def initialize(definition = {}, options = {})
        @source = definition
        @source_path = options[:source_path]
      end

      # @param [Module<Service>] namespace
      # @return [void]
      def apply(namespace)
        build_resource_classes(namespace)
        each_resource_class(namespace) do |resource, definition|
          define_load(namespace, resource, definition['load'])
          define_actions(namespace, resource, definition['actions'] || {})
          define_batch_actions(namespace, resource, definition['batchActions'] || {})
          define_waiters(namespace, resource, definition['waiters'] || {})
          define_has_many(namespace, resource, definition['hasMany'] || {})
          define_has_some(namespace, resource, definition['hasSome'] || {})
          define_has_one(namespace, resource, definition['hasOne'] || {})
          define_data_attributes(namespace, resource, definition['shape'])
          define_subresources(namespace, resource, definition['subResources'] || {})
        end
        define_top_level_references(namespace)
      end

      private

      def build_resource_classes(namespace)
        each_definition do |name, definition|
          resource_class = Class.new(Base)
          resource_class.client_class = namespace::Client
          resource_class.resource_name = name
          (definition['identifiers'] || []).each do |identifier|
            resource_class.add_identifier(underscore(identifier['name']))
          end
          namespace.const_set(name, resource_class)
          unless name == 'Resource'
            resource_class.const_set(:Batch, Class.new(Resource::Batch))
          end
        end
      end

      def each_resource_class(namespace, &block)
        each_definition do |name, definition|
          yield(namespace.const_get(name), definition)
        end
      end

      def define_subresources(namespace, parent, definition)
        parent_name = parent.resource_name
        identifiers = definition['identifiers'] || {}
        (definition['resources'] || []).each do |child_name|

          method_name = underscore(child_name.sub(/^#{parent_name}/, ''))
          operation = subresource(namespace, child_name, identifiers)
          parent.add_operation(method_name, operation)

          method_name = underscore(parent_name)
          operation = subresource(namespace, parent_name, identifiers.invert)
          namespace.const_get(child_name).add_operation(method_name, operation)

        end
      end

      def subresource(namespace, type, identifiers)
        Operations::ReferenceOperation.new(builder: define_builder(namespace, {
          'type' => type,
          'identifiers' => identifiers.map { |source, target|
            {
              'target' => target,
              'sourceType' => 'identifier',
              'source' => source,
            }
          }
        }))
      end

      def define_top_level_references(namespace)
        top_level = Set.new(resource_definitions.keys)
        each_resource_class(namespace) do |resource, definition|
          unless resource.identifiers.count == 1
            top_level.delete(resource.resource_name)
          end
          ((definition['subResources'] || {})['resources'] || {}).each do |child|
            top_level.delete(child)
          end
        end
        top_level.each do |resource_name|
          method_name = underscore(resource_name)
          operation = subresource(namespace, resource_name, {})
          namespace::Resource.add_operation(method_name, operation)
        end
      end

      def define_batch_actions(namespace, resource, batch_actions)
        batch_actions.each do |name, definition|
          method_name = underscore(name)
          operation = build_operation(namespace, resource, definition)
          resource::Batch.add_operation(method_name, operation)
        end
      end

      def define_data_attributes(namespace, resource, shape_name)
        return unless shape_name
        shape = resource.client_class.api.shape_map.shape('shape' => shape_name)
        shape.member_names.each do |member_name|
          if
            resource.identifiers.include?(member_name) ||
            resource.instance_methods.include?(member_name)
          then
            next # some data attributes are duplicates to identifiers
          else
            resource.add_data_attribute(member_name)
          end
        end
      end

      def define_load(namespace, resource, definition)
        return unless definition
        resource.load_operation = Operations::DataOperation.new(
          request: define_request(definition['request']),
          path: underscore(definition['path']),
          source: source(definition),
        )
      end

      def define_actions(namespace, resource, actions)
        actions.each do |name, action|
          operation = build_operation(namespace, resource, action)
          resource.add_operation(underscore(name), operation)
        end
      end

      def define_waiters(namespace, resource, waiters)
        waiters.each do |name, definition|
          operation = build_waiter_operation(namespace, resource, definition)
          resource.add_operation("wait_until_#{underscore(name)}", operation)
        end
      end

      def build_operation(namespace, resource, definition)
        type = operation_type(definition)
        send("build_#{type}_operation", namespace, resource, definition)
      end

      def build_basic_operation(namespace, resource, definition)
        Operations::Operation.new(
          request: define_request(definition['request']),
          source: source(definition)
        )
      end

      def build_data_operation(namespace, resource, definition)
        plural = definition['path'].include?('[')
        source = source(definition)
        if plural
          Operations::EnumerateDataOperation.new(
            request: define_request(definition['request']),
            path: underscore(definition['path']),
            source: source,
            limit_key: limit_key(resource, definition)
          )
        else
          Operations::DataOperation.new(
            request: define_request(definition['request']),
            path: underscore(definition['path']),
            source: source
          )
        end
      end

      def build_resource_operation(namespace, resource, definition)
        builder = define_builder(namespace, definition['resource'])
        if path = definition['path']
          source = underscore(path)
          builder.sources << BuilderSources::ResponsePath.new(source, :data)
        end
        Operations::ResourceOperation.new(
          request: define_request(definition['request']),
          builder: builder,
          source: source(definition)
        )
      end

      def build_enumerate_resource_operation(namespace, resource, definition)
        builder = define_builder(namespace, definition['resource'])
        if path = definition['path']
          source = underscore(path)
          builder.sources << BuilderSources::ResponsePath.new(source, :data)
        end
        Operations::EnumerateResourceOperation.new(
          request: define_request(definition['request']),
          builder: builder,
          source: source(definition),
          limit_key: limit_key(resource, definition))
      end

      def build_waiter_operation(namespace, resource, definition)
        Operations::WaiterOperation.new(
          waiter_name: underscore(definition['waiterName']).to_sym,
          waiter_params: request_params(definition['params']),
          path: underscore(definition['path'])
        )
      end

      def limit_key(resource, definition)
        operation_name = definition['request']['operation']
        paginators = resource.client_class.paginators
        paginators.pager(operation_name).limit_key
      end

      def define_request(definition)
        Request.new(
          method_name: underscore(definition['operation']),
          params: request_params(definition['params'] || [])
        )
      end

      def request_params(params)
        params.map do |definition|
          param_class =
            case definition['sourceType']
            when 'identifier' then RequestParams::Identifier
            when 'dataMember' then RequestParams::DataMember
            when 'string'     then RequestParams::String
            when 'integer'    then RequestParams::Integer
            when 'boolean'    then RequestParams::Boolean
            else
              msg = "unhandled param source type `#{definition['sourceType']}'"
              raise ArgumentError, msg
            end
          source = definition['source']
          param_class.new(
            param_class.literal? ? source : underscore(source),
            underscore(definition['target'])
          )
        end
      end

      def define_has_many(namespace, resource, has_many)
        has_many.each do |name, definition|
          operation = build_enumerate_resource_operation(namespace, resource, definition)
          resource.add_operation(underscore(name), operation)
        end
      end

      def define_has_some(namespace, resource, has_some)
        has_some.each do |name, definition|
          define_reference(namespace, resource, name, definition)
        end
      end

      def define_has_one(namespace, resource, has_one)
        has_one.each do |name, definition|
          define_reference(namespace, resource, name, definition)
        end
      end

      def define_reference(namespace, resource, name, definition)
        builder = define_builder(namespace, definition['resource'])
        if path = definition['path']
          source = underscore(path)
          builder.sources << BuilderSources::DataMember.new(source, :data)
        end
        operation = Operations::ReferenceOperation.new(
          builder: builder,
          source: source(definition))
        resource.add_operation(underscore(name), operation)
      end

      def define_builder(namespace, definition)
        builder = Resource::Builder.new(
          resource_class: namespace.const_get(definition['type']),
          sources: builder_sources(definition['identifiers'] || [])
        )
        delta = builder.resource_class.identifiers - builder.sources.map(&:target)
        if delta.size == 0
          # all identifiers provided
        elsif delta.size == 1
          # all but one provided, adding an Argument source
          target = delta.first
          builder.sources << BuilderSources::Argument.new(target)
        else
          msg = "too many unsourced identifiers: #{definition.inspect}"
          raise Errors::DefinitionError, msg
        end
        builder
      end

      def builder_sources(sources)
        sources.map do |definition|
          source_class =
            case definition['sourceType']
            when 'identifier'       then BuilderSources::Identifier
            when 'dataMember'       then BuilderSources::DataMember
            when 'requestParameter' then BuilderSources::RequestParameter
            when 'responsePath'     then BuilderSources::ResponsePath
            else
              msg = "unhandled identifier source type `#{definition['sourceType']}'"
              raise ArgumentError, msg
            end
          source_class.new(
            underscore(definition['source']),
            underscore(definition['target'])
          )
        end
      end

      def operation_type(action)
        case action.keys.sort
        when %w(request) then :basic
        when %w(path request) then :data
        when %w(request resource) then :resource
        when %w(path request resource) then :resource
        else
          msg = "unhandled action: #{action.keys.inspect}"
          raise Errors::DefinitionError, msg
        end
      end

      def svc_definition
        @source['service'] || {}
      end

      def resource_definitions
        @source['resources'] || {}
      end

      def each_definition(&block)
        yield('Resource', svc_definition)
        resource_definitions.each(&block)
      end

      def underscore(str)
        if str
          str.gsub(/\w+/) { |part| Seahorse::Util.underscore(part) }
        end
      end

      def pluralize(str)
        underscore(str) + 's'
      end

      def source(definition)
        if ENV['SOURCE']
          Source.new(definition, @source_path)
        else
          nil
        end
      end

    end
  end
end
