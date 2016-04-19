require 'set'

module Aws
  module Api
    class Builder
      class << self

        def build(definition, options = {})
          if Seahorse::Model::Api === definition
            definition
          else
            Builder.new.build(customize(load_definition(definition)), options)
          end
        end

        private

        def load_definition(definition)
          case definition
          when nil then {}
          when Hash then definition
          when String, Pathname then Json.load_file(definition)
          else raise ArgumentError, "invalid api definition #{definition}"
          end
        end

        def customize(definition)
          Customizations.apply_api_customizations(definition)
          definition
        end

      end

      # @param [Hash] definition
      # @return [Seahorse::Model::Api]
      def build(definition, options = {})
        api = build_api(definition)
        docs = build_docstring_provider(api, options)
        shapes = build_shape_map(definition, api, docs)
        build_operations(definition, api, shapes, docs)
        build_struct_classes(shapes, options)
        api
      end

      private

      def build_docstring_provider(api, options)
        if options[:docs] && ENV['DOCSTRINGS']
          docs = Json.load_file(options[:docs])
          Customizations.apply_doc_customizations(api, docs)
          Docs::DocstringProvider.new(docs)
        else
          Docs::NullDocstringProvider.new
        end
      end

      def build_api(definition)
        api = Seahorse::Model::Api.new
        api.metadata = definition['metadata'] || {}
        api.version = api.metadata['apiVersion']
        api
      end

      def build_shape_map(definition, api, docs)
        shapes = definition['shapes'] || {}
        api.metadata['shapes'] = ShapeMap.new(shapes, docs: docs)
      end

      def build_operations(definitions, api, shapes, docs)
        (definitions['operations'] || {}).each do |name, definition|
          operation = build_operation(name, definition, shapes, docs)
          api.add_operation(underscore(name), operation)
        end
      end

      def build_operation(name, definition, shapes, docs)
        http = definition['http'] || {}
        op = Seahorse::Model::Operation.new
        op.name = name
        op.http_method = http['method']
        op.http_request_uri = http['requestUri'] || '/'
        op.documentation = docs.operation_docs(name)
        op.deprecated = !!definition['deprecated']
        op.input = shapes.shape_ref(definition['input'])
        op.output = shapes.shape_ref(definition['output'])
        op['authtype'] = definition['authtype'] unless definition['authtype'].nil?
        (definition['errors'] || []).each do |error|
          op.errors << shapes.shape_ref(error)
        end
        op
      end

      def build_struct_classes(shapes, options)
        type_builder = options[:type_builder] || TypeBuilder.new(Module.new)
        shapes.each_structure do |shape|
          shape[:struct_class] = type_builder.build_type(shape, shapes)
        end
      end

      def underscore(str)
        Seahorse::Util.underscore(str).to_sym
      end

    end
  end
end
