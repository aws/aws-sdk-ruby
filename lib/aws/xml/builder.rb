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

      def to_xml(shape, value)
        xml = []
        builder = ::Builder::XmlMarkup.new(target: xml, indent: 2)
        structure(shape.xmlname, shape, value, builder)
        xml.join
      end

      private

      def structure(name, shape, values, xml)
        if values.empty?
          xml.send(name)
        else
          xml.send(name, structure_attrs(shape, values)) do
            shape.members.each_pair do |member_name, member_shape|
              if values.key?(member_name)
                next if member_shape.xmlattribute
                mname = member_shape.xmlname || member_name
                member(mname, member_shape, values[member_name], xml)
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

      def list(name, shape, values, xml)
        if shape.flattened
          values.each do |value|
            member(name, shape.members, value, xml)
          end
        else
          xml.send(name) do
            values.each do |value|
              member(shape.members.xmlname || 'member', shape.members, value, xml)
            end
          end
        end
      end

      def member(name, shape, value, xml)
        case shape
        when StructureShape then structure(name, shape, value, xml)
        when ListShape then list(name, shape, value, xml)
        else xml.send(name, value)
        end
      end

    end
  end
end
