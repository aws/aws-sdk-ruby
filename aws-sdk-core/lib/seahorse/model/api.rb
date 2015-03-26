module Seahorse
  module Model
    class Api

      # @param [Hash] definition
      def initialize(definition = {})
        @metadata = definition['metadata'] || {}
        @version = metadata('apiVersion')
        @documentation = definition['documentation']
        @definition = definition
        @shape_map = ShapeMap.new(definition['shapes'] || {})
        compute_operations
      end

      # @return [String, nil]
      attr_reader :version

      # @return [Array<Symbol>]
      attr_reader :operation_names

      # @return [String, nil]
      attr_reader :documentation

      # @return [ShapeMap]
      attr_reader :shape_map

      # @return [Hash]
      attr_reader :definition

      # @param [Symbol] name
      # @return [Boolean] Returns `true` if this API provides an operation
      #   with the given name.
      def operation?(name)
        @operation_defs.key?(name.to_sym)
      end

      # @param [Symbol] name
      # @return [Operation]
      def operation(name)
        name = name.to_sym
        if definition = @operation_defs[name]
          @operations[name] ||= Operation.new(definition, shape_map: @shape_map)
        else
          raise ArgumentError, "unknown operation :#{name}"
        end
      end

      # @return [Enumerable]
      def operations
        enum_for(:each_operation) { |*args| operation_names.size }
      end

      # @param [String] key
      # @return [Object, nil]
      def metadata(key)
        @metadata[key]
      end

      # @api private
      # @return [String]
      def inspect
        "#<#{self.class.name} version=#{version.inspect}>"
      end

      private

      def each_operation(&block)
        operation_names.each do |name|
          yield(name, operation(name))
        end
      end

      def compute_operations
        @operations = {}
        @operation_defs = {}
        (definition['operations'] || {}).each do |name,definition|
          name = Util.underscore(name).to_sym
          @operation_defs[name] = definition
        end
        @operation_names = @operation_defs.keys
      end

    end
  end
end
