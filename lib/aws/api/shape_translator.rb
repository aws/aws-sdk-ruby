module Aws
  module Api
    class ShapeTranslator < BaseTranslator

      CONVERT_TYPES = {
        'long' => 'integer',
        'double' => 'float',
      }

      def translated

        if @properties['type'] == 'timestamp'
          @type_prefix = @options[:timestamp_format]
        end

        if @type_prefix
          @properties['type'] = "#{@type_prefix}_#{@properties['type']}"
        end

        shape = Seahorse::Model::Shapes::Shape.from_hash(@properties)
        shape.members = @members unless @members.nil?
        shape.keys = @keys if @keys
        shape
      end

      property :location
      property :serialized_name, from: :xmlname
      property :serialized_name, from: :location_name
      property :enum

      metadata :xmlnamespace
      metadata :xmlattribute
      metadata :payload
      metadata :wrapper

      ignore :shape_name
      ignore :member_order
      ignore :box
      ignore :streaming

      # validation properties
      ignore :pattern
      ignore :min_length
      ignore :max_length

      def set_xmlnamespace(xmlns)
        metadata = @properties['metadata'] ||= {}
        metadata['xmlns_uri'] = xmlns['uri']
        metadata['xmlns_prefix'] = xmlns['prefix'] if xmlns['prefix']
      end

      def set_type(type)
        @properties['type'] = CONVERT_TYPES[type] || type
      end

      def set_flattened(state)
        @type_prefix = 'flat' if state
      end

      def set_keys(member)
        @keys = self.class.translate(member, @options)
      end

      # Structure shapes have a hash of members.  Lists and maps have a
      # single member (with a type).
      def set_members(members)
        if members['type'].is_a?(String)
          @members = self.class.translate(members, @options)
        else
          @members = Seahorse::Model::Shapes::MemberHash.new
          members.each do |name, src|
            shape = self.class.translate(src, @options)
            shape.serialized_name ||= name
            @members[underscore(name)] = shape
          end
        end
      end

    end

    class InputShapeTranslator < ShapeTranslator
      property :required
    end

    class OutputShapeTranslator < ShapeTranslator
      ignore :required
    end

  end
end
