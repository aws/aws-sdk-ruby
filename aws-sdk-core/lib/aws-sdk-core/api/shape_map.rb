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

      SHAPE_ATTRS = Set.new(%w(min max documentation))

      SHAPE_METADATA = Set.new(%w(xmlNamespace flattened))

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
          ref = ShapeRef.new
          ref.location_name = options[:location_name]
          definition.each do |key, value|
            case key
            when 'shape' then ref.shape = self[value]
            when 'location' then ref.location = value
            when 'locationName' then ref.location_name = value
            else ref[key] = value
            end
          end
          ref
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
          populate_shape(@shapes[name], definition)
        end
      end

      def populate_shape(shape, definition)
        apply_shape_refs(shape, definition)
        definition.each do |key, value|
          case
          when SHAPE_ATTRS.include?(key) then shape.send("#{key}=", value)
          when SHAPE_METADATA.include?(key) then shape[key] = value
          when key == 'enum' then shape.enum = Set.new(value)
          end
        end
      end

      def apply_shape_refs(shape, definition)
        case shape
        when StructureShape
          required = Set.new(definition['required'] || [])
          definition['members'].each do |member_name, ref|
            name = underscore(member_name)
            ref = shape_ref(ref, location_name: member_name)
            shape.add_member(name, ref, required: required.include?(member_name))
          end
        when ListShape
          shape.member = shape_ref(definition['member'])
        when MapShape
          shape.key = shape_ref(definition['key'])
          shape.value = shape_ref(definition['value'])
        end
      end

      def underscore(str)
        Seahorse::Util.underscore(str).to_sym
      end

    end
  end
end
