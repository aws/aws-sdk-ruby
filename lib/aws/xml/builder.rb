# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'builder'
require 'seahorse'

module Aws
  module Xml
    class Builder

      include Seahorse::Model::Shapes

      # @param [Seahorse::Model::Shapes::Shape] rules
      def initialize(rules)
        @xml = []
        @builder = ::Builder::XmlMarkup.new(target: @xml, indent: 2)
        @rules = rules
      end

      # @param [Hash] params
      # @return [String] Returns an XML doc string.
      def to_xml(params)
        structure(@rules.xmlname, @rules, params)
        @xml.join
      end

      # @param [Seahorse::Model::Shapes::Shape] rules
      # @param [Hash] params
      # @return [String] Returns an XML doc string.
      def self.to_xml(rules, params)
        Builder.new(rules).to_xml(params)
      end

      private

      def structure(name, shape, values)
        if values.empty?
         node(name, shape)
        else
          node(name, structure_attrs(shape, values)) do
            shape.members.each_pair do |member_name, member_shape|
              if values.key?(member_name)
                next if member_shape.xmlattribute
                mname = member_shape.xmlname || member_name
                member(mname, member_shape, values[member_name])
              end
            end
          end
        end
      end

      def structure_attrs(shape, values)
        shape.members.inject({}) do |attrs, (member_name, member_shape)|
          if member_shape.xmlattribute && values.key?(member_name)
            attrs[member_shape.xmlname || member_name] = values[member_name]
          end
          attrs
        end
      end

      def list(name, shape, values)
        if shape.flattened
          values.each do |value|
            member(name, shape.members, value)
          end
        else
          node(name, shape) do
            values.each do |value|
              member(shape.members.xmlname || 'member', shape.members, value)
            end
          end
        end
      end

      def member(name, shape, value)
        case shape
        when StructureShape then structure(name, shape, value)
        when ListShape then list(name, shape, value)
        else node(name, shape, value)
        end
      end

      # args may be:
      #   * [] - empty, no value or attributes
      #   * [value] - inline element, no attributes
      #   * [value, attributes_hash] - inline element with attributes
      #   * [attributes_hash] - self closing element with attributes
      def node(name, shape, *args, &block)
        attrs = args.last.is_a?(Hash) ? args.pop : {}
        attrs = shape_attrs(shape).merge(attrs)
        args << attrs
        @builder.send(name, *args, &block)
      end

      def shape_attrs(shape)
        {}
      end

    end
  end
end
