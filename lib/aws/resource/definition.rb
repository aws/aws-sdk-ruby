require 'set'

module Aws
  module Resource

    # Given a resource definition document, a {Definition} can build a set
    # of related resource classes.
    class Definition

      # @param [Hash] source
      def initialize(source, options = {})
        @source = source
        @source_path = options[:path]
      end

      # @param [String] service_name
      # @param [Class<Seahorse::Client::Base>] client_class
      # @return [Class<Resource>] Returns the service resource class.
      def define_service(service_name, client_class)
        service = define_resource_classes(service_name.to_s, client_class)
        define_operations(service)
        define_subresources(service)
        define_batch_operations(service)
        service
      end

      private

      # Defines and returns a resource class for the service.  It additionally
      # defines a resource class for each resource definition.  These are
      # added to the service as constants.
      #
      #     SvcClass
      #     SvcClass::Resource1
      #     SvcClass::Resource2
      #
      # @param [String] service_name
      # @param [Class<Seahorse::Client::Base>] client_class
      # @return [Class<Resource>] Returns the service resource class.
      def define_resource_classes(service_name, client_class)
        service = resource_class(service_name, client_class, svc_definition)
        each_resource do |name, definition|
          resource_class = resource_class(name, client_class, definition)
          resource_class.const_set(:Batch, Class.new(Resource::Batch))
          service.const_set(name, resource_class)
        end
        service
      end

      # Defines a new resource class.  This specifies the client class,
      # and the identifiers, but it does NOT apply any operations.
      # @param [String] name
      # @param [Class<Seahorse::Client::Base>] client_class
      # @return [Class<Resource>] Returns the new resource class.
      def resource_class(name, client_class, definition)
        resource_class = Base.define(client_class)
        resource_class.resource_name = name
        (definition['identifiers'] || []).each do |identifier|
          resource_class.add_identifier(underscore(identifier['name']))
        end
        resource_class
      end

      # Populates a resource class with operations.  These are extracted
      # from the resource definition of actions and associations.
      # @param [Class<Resource>] service The service resource class.
      # @return [void]
      def define_operations(service)
        define_resource_operations(service, service, svc_definition)
        each_resource do |name, definition|
          define_resource_operations(service, service.const_get(name), definition)
        end
      end

      # Populates a resource class with operations.  These are extracted
      # from the resource definition of actions and associations.
      # @param [Class<Resource>] service The service or namespace.  All
      #   resources referenced in the definition must be defined as
      #   constants on the service.
      # @param [Class<Resource>] resource
      # @param [Hash] definition
      # @return [void]
      def define_resource_operations(service, resource, definition)
        define_data_attributes(resource, definition['shape'])
        define_load(resource, definition['load'])
        define_actions(service, resource, definition['actions'] || {})
        define_has_many(service, resource, definition['hasMany'] || {})
        define_has_some(service, resource, definition['hasSome'] || {})
        define_has_one(service, resource, definition['hasOne'] || {})
      end

      def define_subresources(service)
        top_level_resources = Set.new(@source['resources'].keys)
        each_resource do |parent_name, definition|
          sub_resources = definition['subResources'] || {}
          (sub_resources['resources'] || []).each do |child_name|

            top_level_resources.delete(child_name)

            # add reference from parent to child
            add_sub_resoruce_reference(
              service,
              child_name.sub(/^#{parent_name}/, ''),
              parent_name,
              child_name,
              sub_resources['identifiers']
            )

            # add inverse reference from child to parent
            add_sub_resoruce_reference(
              service,
              parent_name,
              child_name,
              parent_name,
              sub_resources['identifiers'].invert
            )

          end
        end

        top_level_resources.each do |name|
          resource_class = service.const_get(name)
          if resource_class.identifiers.count == 1
            add_sub_resoruce_reference(service, name, service, name, {})
          end
        end
      end

      def define_batch_operations(service)
        each_resource do |resource_name, resoruce_definition|
          if actions = resoruce_definition['batchActions']
            resource_class = service.const_get(resource_name)
            batch_class = resource_class.const_get(:Batch)
            actions.each do |name, definition|
              method_name = underscore(name)
              operation = build_operation(service, resource_class, definition)
              batch_operation = Operations::BatchOperation.new(operation:operation)
              batch_class.add_operation(method_name, batch_operation)
            end
          end
        end
      end

      def add_sub_resoruce_reference(service, name, from, to, identifiers)
        reference = {
          'type' => to,
          'identifiers' => identifiers.map { |source, target|
            {
              'target' => target,
              'sourceType' => 'identifier',
              'source' => source,
            }
          }
        }
        builder = define_builder(service, reference)
        operation = Operations::ReferenceOperation.new(
          builder: builder,
          source: source(reference))
        from = service.const_get(from) unless from.is_a?(Class)
        from.add_operation(underscore(name), operation)
      end

      def define_data_attributes(resource, shape_name)
        if shape_name
          existing_methods = Set.new(resource.instance_methods)
          shape = resource.client_class.api.shape_map.shape('shape' => shape_name)
          shape.member_names.each do |member_name|
            next if resource.identifiers.include?(member_name)
            if existing_methods.include?(member_name)
              conflict = "#{resource.resource_name}##{member_name}"
              raise "duplicate resource data_attr #{conflict}"
            else
              resource.add_data_attribute(member_name)
            end
          end
        end
      end

      def define_load(resource, definition)
        if definition
          resource.load_operation = Operations::DataOperation.new(
            request: define_request(definition['request']),
            path: underscore(definition['path']),
            source: source(definition),
          )
        end
      end

      def define_actions(service, resource, actions)
        actions.each do |name, action|
          operation = build_operation(service, resource, action)
          resource.add_operation(underscore(name), operation)
        end
      end


      def build_operation(service, resource, definition)
        type = operation_type(definition)
        send("build_#{type}_operation", service, resource, definition)
      end

      def build_basic_operation(service, resource, definition)
        Operations::Operation.new(
          request: define_request(definition['request']),
          source: source(definition)
        )
      end

      def build_data_operation(service, resource, definition)
        plural = definition['path'].include?('[')
        source = source(definition)
        if plural
          Operations::EnumerateDataOperation.new(
            request: define_request(definition['request']),
            path: underscore(definition['path']),
            source: source
          )
        else
          Operations::DataOperation.new(
            request: define_request(definition['request']),
            path: underscore(definition['path']),
            source: source
          )
        end
      end

      def build_resource_operation(service, resource, definition)
        builder = define_builder(service, definition['resource'])
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

      def build_enumerate_resource_operation(service, resource, definition)
        builder = define_builder(service, definition['resource'])
        if path = definition['path']
          source = underscore(path)
          builder.sources << BuilderSources::ResponsePath.new(source, :data)
        end
        Operations::EnumerateResourceOperation.new(
          request: define_request(definition['request']),
          builder: builder,
          source: source(definition))
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

      def define_has_many(service, resource, has_many)
        has_many.each do |name, definition|
          operation = build_enumerate_resource_operation(service, resource, definition)
          resource.add_operation(underscore(name), operation)
        end
      end

      def define_has_some(service, resource, has_some)
        has_some.each do |name, definition|
          define_reference(service, resource, name, definition)
        end
      end

      def define_has_one(service, resource, has_one)
        has_one.each do |name, definition|
          define_reference(service, resource, name, definition)
        end
      end

      def define_reference(service, resource, name, definition)
        builder = define_builder(service, definition['resource'])
        if path = definition['path']
          source = underscore(path)
          builder.sources << BuilderSources::DataMember.new(source, :data)
        end
        operation = Operations::ReferenceOperation.new(
          builder: builder,
          source: source(definition))
        resource.add_operation(underscore(name), operation)
      end

      def define_builder(service, definition)
        builder = Resource::Builder.new(
          resource_class: service.const_get(definition['type']),
          sources: builder_sources(definition['identifiers'] || [])
        )
        delta = builder.resource_class.identifiers - builder.sources.map(&:target)
        if delta.size == 0
          # all identifiers provided
        elsif delta.size == 1
          # all but one provided, adding an Argument source
          target = delta.first
          builder.sources << BuilderSources::Argument.new(target.to_s, target)
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
        @source['service']
      end

      def each_resource(&block)
        @source['resources'].each(&block)
      end

      def underscore(str)
        if str
          str.gsub(/\w+/) { |part| Util.underscore(part) }
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
