require 'set'

module Aws
  module Api
    class Builder
      class << self

        def build(definition)
          Builder.new.build(customize(load_definition(definition)))
        end

        private

        def load_definition(definition)
          case definition
          when nil then {}
          when Hash then definition
          when String, Pathname then Seahorse::Util.load_json(definition)
          else raise ArgumentError, "invalid api definition #{api}"
          end
        end

        def customize(definition)
          Customizations.apply_api_customizations(definition)
          definition
        end

      end

      # @param [Hash]
      # @return [Seahorse::Model::Api]
      def build(definition)
        shapes = ShapeMap.new(definition['shapes'])
        api = Seahorse::Model::Api.new
        metadata = definition['metadata'] || {}
        api.version = metadata['apiVersion']
        api.metadata = metadata
        definition['operations'].each do |name, definition|
          operation = build_operation(name, definition, shapes)
          api.add_operation(underscore(name), operation)
        end
        api
      end

      private

      def build_operation(name, definition, shapes)
        http = definition['http'] || {}
        op = Seahorse::Model::Operation.new
        op.name = name
        op.http_method = http['method']
        op.http_request_uri = http['requestUri'] || '/'
        op.documentation = definition['documentation']
        op.deprecated = !!definition['deprecated']
        op.input = shapes.shape_ref(definition['input'])
        op.output = shapes.shape_ref(definition['output'])
        (definition['errors'] || []).each do |error|
          op.errors << shapes.shape_ref(error)
        end
        op
      end

      def underscore(str)
        Seahorse::Util.underscore(str).to_sym
      end

    end
  end
end
