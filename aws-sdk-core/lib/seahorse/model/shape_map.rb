module Seahorse
  module Model
    # @api private
    class ShapeMap

      # @param [Hash<String,Hash>] shape_defs ({}) A hash of shape definitions.
      #   Hash keys should be shape names.  Hash values should be shape
      #   definitions.
      def initialize(shape_defs = {})
        @definitions = shape_defs
        @shapes = {}
      end

      # @return [Hash]
      attr_reader :definitions

      # @param [Hash] shape_ref
      # @option shape_ref [required, String] 'shape'
      # @return [Shapes::Shape]
      # @raise [ArgumentError] Raised when the given shape ref can not be
      #   resolved.
      def shape(shape_ref)
        @shapes[shape_ref] ||= build_shape(shape_ref)
      end

      # @return [Array<String>]
      def shape_names
        @definitions.keys
      end

      private

      def build_shape(shape_ref)
        Shapes::Shape.new(resolve(shape_ref), shape_map: self)
      end

      def resolve(shape_ref)
        if definition = @definitions[shape_ref['shape']]
          definition.merge(shape_ref)
        else
          raise ArgumentError, "shape not found for #{shape_ref.inspect}"
        end
      end

    end
  end
end
