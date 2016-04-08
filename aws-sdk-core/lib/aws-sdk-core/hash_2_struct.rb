module Aws
  # Utility class for performing a deep conversion of a Ruby hash
  # into a {StructureType}.
  # @api priviate
  class Hash2Struct
    class << self

      # @param [Class<StructureType>] struct_class
      # @param [Hash] hash
      def to_struct(struct_class, hash)
        rules = Seahorse::Model::Shapes::ShapeRef.new(shape: struct_class.shape)
        ParamValidator.new(rules, validate_required: false).validate!(hash)
        struct_value(rules, hash)
      end

      private

      def struct_value(ref, hash)
        if hash
          struct = ref.shape[:struct_class].new
          hash.each_pair do |key, value|
            struct[key] = member_value(ref.shape.member(key), value)
          end
          struct
        end
      end

      # @param [Seahorse::Model::Shapes::ShapeRef] ref
      # @param [Object] value
      def member_value(ref, value)
        case ref.shape
        when Seahorse::Model::Shapes::StructureShape
          struct_value(ref, value)
        when Seahorse::Model::Shapes::ListShape
          value.inject([]) do |list, v|
            list << member_value(ref.shape.member, v)
          end
        when Seahorse::Model::Shapes::MapShape
          value.inject({}) do |map, (k,v)|
            map[k.to_s] = member_value(ref.shape.value, v)
            map
          end
        else
          value
        end
      end

    end
  end
end
