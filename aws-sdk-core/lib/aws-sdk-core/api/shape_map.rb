module Aws
  module Api
    class ShapeMap

      include Seahorse::Model::Shapes

      SHAPE_CLASSES = {
        'blob' => BlobShape,
        'byte' => StringShape,
        'boolean' => BooleanShape,
        'character' => StringShape,
        'double' => FloatShape,
        'float' => FloatShape,
        'integer' => IntegerShape,
        'list' => ListShape,
        'long' => IntegerShape,
        'map' => MapShape,
        'string' => StringShape,
        'structure' => StructureShape,
        'timestamp' => TimestampShape,
      }

      # @param [ShapeMap] shapes
      def initialize(definitions)
        @shapes = {}
        build_shapes(definitions)
      end

      def [](shape_name)
        if shape = @shapes[shape_name]
          shape
        else
          raise ArgumentError, "unknown shape #{shape_name.inspect}"
        end
      end

      def shape_ref(definition, options = {})
        if definition
          meta = definition.dup
          ShapeRef.new(
            shape: self[meta.delete('shape')],
            location: meta.delete('location'),
            location_name: meta.delete('locationName') || options[:location_name],
            metadata: meta)
        else
          nil
        end
      end

      private

      def build_shapes(definitions)
        definitions.each do |name, definition|
          shape = SHAPE_CLASSES[definition['type']].new
          shape.name = name
          @shapes[name] = shape
        end
        definitions.each do |name, definition|
          shape = @shapes[name]
          traits = definition.dup
          apply_shape_refs(shape, traits)
          apply_shape_traits(shape, traits)
        end
      end

      def apply_shape_refs(shape, traits)
        case shape
        when StructureShape
          required = Set.new(traits.delete('required') || [])
          traits.delete('members').each do |member_name, ref|
            name = underscore(member_name)
            ref = shape_ref(ref, location_name: member_name)
            shape.add_member(name, ref, required: required.include?(member_name))
          end
        when ListShape
          shape.member = shape_ref(traits.delete('member'))
        when MapShape
          shape.key = shape_ref(traits.delete('key'))
          shape.value = shape_ref(traits.delete('value'))
        end
      end

      def apply_shape_traits(shape, traits)
        shape.enum = Set.new(traits.delete('enum')) if traits.key?('enum')
        shape.min = traits.delete('min') if traits.key?('min')
        shape.max = traits.delete('max') if traits.key?('max')
        shape.documentation = traits.delete('documentation')
        if payload = traits.delete('payload')
          shape[:payload] = underscore(payload)
          shape[:payload_member] = shape.member(shape[:payload])
        end
        traits.each do |key, value|
          shape[key] = value
        end
      end

      def apply_payload(ref, name)
        ref['payload'] = underscore(name).to_sym
      end

      def underscore(str)
        Seahorse::Util.underscore(str).to_sym
      end

    end
  end
end
