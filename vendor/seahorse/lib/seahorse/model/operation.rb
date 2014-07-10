module Seahorse
  module Model
    class Operation

      # @param [Hash] definition
      # @option options [ShapeMap] :shape_map
      def initialize(definition = {}, options = {})
        @definition = definition
        @shape_map = options[:shape_map] || ShapeMap.new
        @name = definition['name']
        @input = shape_for(definition['input']) if definition['input']
        @output = shape_for(definition['output']) if definition['output']
        @deprecated = !!definition['deprecated']
        @documentation = definition['documentation']
        @paging = definition['paging'] || {}
      end

      # @return [String]
      attr_reader :name

      # @return [String]
      attr_reader :http_method

      # @return [String]
      attr_reader :http_request_uri

      # @return [String<HTML>, nil]
      attr_reader :documentation

      # @return [Shape, nil]
      attr_reader :input

      # @return [Shape, nil]
      attr_reader :output

      # @return [Hash]
      attr_reader :paging

      # @return [Hash]
      attr_reader :definition

      # @return [String]
      def http_method
        (@definition['http'] || {})['method'] || 'POST'
      end

      # @return [String]
      def http_request_uri
        (@definition['http'] || {})['requestUri'] || '/'
      end

      # @return [Boolean] Returns `true` if this API operation is deprecated.
      def deprecated?
        !!@definition['deprecated']
      end

      # @return [Enumerator] Returns an enumerator that yields error
      #   shapes.
      def errors
        errors = (definition['errors'] || [])
        errors = errors.map { |error| shape_for(error) }
        errors.enum_for(:each)
      end

      private

      def shape_for(definition)
        if definition.key?('shape')
          @shape_map.shape(definition)
        else
          Shapes::Shape.new(definition, shape_map: @shape_map)
        end
      end

    end
  end
end
