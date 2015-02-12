require 'builder'
require 'base64'

module Aws
  module Xml
    class Builder

      # @param [Seahorse::Model::Shapes::Structure] shape
      def initialize(shape)
        @shape = shape
        @xml = []
        @builder = ::Builder::XmlMarkup.new(target: @xml, indent: 2)
      end

      # @param [Hash] params
      # @return [String] Returns an XML doc string.
      def to_xml(params)
        structure(@shape.location_name, @shape, params)
        @xml.join
      end

      private

      def structure(name, shape, values)
        if values.empty?
          node(name, shape)
        else
          node(name, shape, structure_attrs(shape, values)) do
            shape.members.each do |member_name, member_shape|
              unless values[member_name].nil?
                next if xml_attribute?(member_shape)
                mname = member_shape.location_name || member_name.to_s
                member(mname, member_shape, values[member_name])
              end
            end
          end
        end
      end

      def structure_attrs(shape, values)
        shape.members.inject({}) do |attrs, (member_name, member_shape)|
          if xml_attribute?(member_shape) && values.key?(member_name)
            attrs[member_shape.location_name] = values[member_name]
          end
          attrs
        end
      end

      def list(name, shape, values)
        if flat?(shape)
          values.each do |value|
            member(name, shape.member, value)
          end
        else
          node(name, shape) do
            values.each do |value|
              mname = shape.member.location_name || 'member'
              member(mname, shape.member, value)
            end
          end
        end
      end

      def map(name, shape, hash)
        node(name, shape) do
          hash.each do |key, value|
            node('entry', shape)  do
              member(shape.key.location_name || 'key', shape.key, key)
              member(shape.value.location_name || 'value', shape.value, value)
            end
          end
        end
      end

      def member(name, shape, value)
        case shape.type
        when 'structure' then structure(name, shape, value)
        when 'list'      then list(name, shape, value)
        when 'timestamp' then node(name, shape, shape.format_time(value, 'iso8601'))
        when 'blob'      then node(name, shape, Base64.strict_encode64(value.read))
        when 'map'       then map(name, shape, value)
        else
          node(name, shape, value.to_s)
        end
      end

      # The `args` list may contain:
      #
      #   * [] - empty, no value or attributes
      #   * [value] - inline element, no attributes
      #   * [value, attributes_hash] - inline element with attributes
      #   * [attributes_hash] - self closing element with attributes
      #
      # Pass a block if you want to nest XML nodes inside.  When doing this,
      # you may *not* pass a value to the `args` list.
      #
      def node(name, shape, *args, &block)
        attrs = args.last.is_a?(Hash) ? args.pop : {}
        attrs = shape_attrs(shape).merge(attrs)
        args << attrs
        @builder.__send__(name, *args, &block)
      end

      def shape_attrs(shape)
        if xmlns = shape.metadata('xmlNamespace')
          if prefix = xmlns['prefix']
            { 'xmlns:' + prefix => xmlns['uri'] }
          else
            { 'xmlns' => xmlns['uri'] }
          end
        else
          {}
        end
      end

      def xml_attribute?(shape)
        !!shape.metadata('xmlAttribute')
      end

      def flat?(shape)
        shape.metadata('flattened')
      end

    end
  end
end
