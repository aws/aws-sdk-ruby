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
          xml.send(name) do
            shape.members.each_pair do |member_name, member_shape|
              if values.key?(member_name)
                mname = member_shape.xmlname || member_name
                member(mname, member_shape, values[member_name], xml)
              end
            end
          end
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
        else scalar(name, shape, value, xml)
        end
      end

      def scalar(name, shape, value, xml)
        xml.send(name, value)
      end

      def node(name, shape, value = nil, &block)
        args = []
        args << name
        args << value
        args << attributes(shape)
        xml.send(*args.compact, &block)
      end

      # @api private
      class XmlDoc

        # @option options [#<<] :target ('')
        # @option options [String] :pad ('')
        # @option options [String] :indent ('')
        def initialize(options = {})
          @target = options[:target] || ''
          @indent = options[:indent] || ''
          @pad = options[:pad] || ''
          @end_of_line = @indent == '' ? '' : "\n"
        end

        attr_reader :target

        # @overload node(name, attributes = {})
        #   Adds a self closing element without any content.
        #
        # @overload node(name, value, attributes = {})
        #   Adds an element that opens and closes on the same line with
        #   simple text content.
        #
        # @overload node(name, attributes = {}, &block)
        #   Adds a wrapping element.  Calling {#node} from inside
        #   the yielded block creates nested elements.
        #
        # @return [void]
        #
        def node(name, *args, &block)
          attrs = args.last.is_a?(Hash) ? args.pop : {}
          if block_given?
            @target << open_el(name, attrs)
            @target << @end_of_line
            increase_pad { yield }
            @target << @pad
            @target << close_el(name)
          elsif args.empty?
            @target << empty_element(name, attrs)
          else
            @target << inline_element(name, args.first, attrs)
          end
        end

        private

        def empty_element(name, attrs)
          "#{@pad}<#{name}#{attributes(attrs)}/>#{@end_of_line}"
        end

        def inline_element(name, value, attrs)
          "#{open_el(name, attrs)}#{escape(value)}#{close_el(name)}"
        end

        def open_el(name, attrs)
          "#{@pad}<#{name}#{attributes(attrs)}>"
        end

        def close_el(name)
          "</#{name}>#{@end_of_line}"
        end

        def escape(string)
          string.to_s
        end

        def attributes(attr)
          if attr.empty?
            ''
          else
            ' ' + attr.map do |key, value|
              "#{key}=\"#{escape(value).gsub('"', '&quot;')}\""
            end.join(' ')
          end
        end

        def increase_pad(&block)
          pre_increase = @pad
          @pad = @pad + @indent
          yield
          @pad = pre_increase
        end

      end
    end
  end
end
