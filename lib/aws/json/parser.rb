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

require 'multi_json'

module Aws
  module Json
    class Parser

      include Seahorse::Model::Shapes

      # @param [Seahorse::Model::Shapes::Shape] rules
      def initialize(rules)
        @rules = rules
      end

      # @param [String<JSON>] json
      # @return [Hash]
      def to_hash(json)
        structure(@rules, MultiJson.load(json == '' ? '{}' : json))
      end

      # @param [Seahorse::Model::Shapes::Shape] rules
      # @param [String<JSON>] json
      # @return [Hash]
      def self.to_hash(rules, json)
        new(rules).to_hash(json)
      end

      private

      def structure(shape, values)
        data = {}
        values.each do |key, value|
          if member_shape = shape.serialized_members[key]
            data[member_shape.member_name] = member(member_shape, value)
          end
        end
        data
      end

      def list(shape, values)
        values.map { |value| member(shape.members, value) }
      end

      def map(shape, values)
        data = {}
        values.each do |key, value|
          data[key] = member(shape.members, value)
        end
        data
      end

      def member(shape, value)
        case shape
        when StructureShape then structure(shape, value)
        when ListShape then list(shape, value)
        when MapShape then map(shape, value)
        when TimestampShape then time(value)
        else value
        end
      end

      def time(value)
        if value.is_a?(Integer)
          Time.at(value)
        else
          Time.parse(value)
        end
      end

    end
  end
end
