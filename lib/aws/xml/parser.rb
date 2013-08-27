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

require 'multi_xml'

module Aws
  module Xml
    # @api private
    class Parser

      # @param [Seahorse::Model::Shapes::Shape] rules
      def initialize(rules)
        @rules = rules
      end

      # @param [String<xml>] xml
      # @return [Hash]
      def to_hash(xml)
        structure(@rules, MultiXml.parse(xml).values.first || {})
      end

      # @param [Seahorse::Model::Shapes::Shape] rules
      # @param [String<xml>] xml
      # @return [Hash]
      def self.to_hash(rules, xml)
        Parser.new(rules).to_hash(xml)
      end

      private

      def structure(shape, hash)
        shape.members.inject({}) do |data, (member_name, member_shape)|
          key = member_shape.serialized_name
          data[member_name] = member(member_shape, hash[key]) if hash.key?(key)
          data
        end
      end

      def list(shape, values)
        member_shape = shape.members
        if !shape.flattened
          values = (values || {})[member_shape.serialized_name || 'member']
        end
        Array(values).map { |value| member(member_shape, value) }
      end

      def map(shape, entries)
        if entries.nil?
          {}
        else
          key_shape = shape.keys
          value_shape = shape.members
          data = {}
          entries = entries['entry'] if !shape.flattened
          entries = [entries] unless entries.is_a?(Array)
          entries.each do |entry|
            key = entry[key_shape.serialized_name || 'key']
            value = entry[value_shape.serialized_name || 'value']
            data[member(key_shape, key)] = member(value_shape, value)
          end
          data
        end
      end

      def member(shape, raw)
        case shape
        when Seahorse::Model::Shapes::StructureShape
          structure(shape, raw)
        when Seahorse::Model::Shapes::ListShape
          list(shape, raw)
        when Seahorse::Model::Shapes::MapShape
          map(shape, raw)
        else
          raw
        end
      end

    end
  end
end
