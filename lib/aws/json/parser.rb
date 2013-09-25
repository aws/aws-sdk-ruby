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
require 'base64'

module Aws
  module Json
    class Parser

      include Seahorse::Model::Shapes

      # @param [Seahorse::Model::Shapes::Shape] rules
      def initialize(rules)
        @rules = rules
      end

      # @param [String<JSON>] json
      # @param [Hash] target (nil)
      # @return [Hash]
      def parse(json, target = nil)
        structure(@rules, MultiJson.load(json == '' ? '{}' : json), target)
      end

      # @param [Seahorse::Model::Shapes::OutputShape] rules
      # @param [String<JSON>] json
      # @param [Hash] target (nil)
      # @return [Hash]
      def self.parse(rules, json, target = nil)
        new(rules.payload_member).parse(json, target)
      end

      private

      def structure(shape, values, target = nil)
        target ||= Structure.new(shape.members.keys)
        values.each do |key, value|
          if member_shape = shape.serialized_members[key]
            target[member_shape.member_name] = member(member_shape, value)
          end
        end
        target
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
        when BlobShape then Base64.decode64(value)
        else value
        end
      end

      def time(value)
        value.is_a?(Numeric) ? Time.at(value) : Time.parse(value)
      end

    end
  end
end
