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
    class Builder

      include Seahorse::Model::Shapes

      # @param [Seahorse::Model::Shapes::Shape] rules
      def initialize(rules)
        @rules = rules
      end

      # @param [Hash] params
      # @return [String<JSON>]
      def to_json(params)
        MultiJson.dump(structure(@rules, params))
      end

      # @param [Seahorse::Model::Shapes::Shape] rules
      # @param [Hash] params
      # @return [String<JSON>]
      def self.to_json(rules, params)
        new(rules).to_json(params)
      end

      private

      def structure(shape, values)
        data = {}
        values.each do |key, value|
          if member_shape = shape.members[key]
            data[member_shape.serialized_name] = member(member_shape, value)
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
        when TimestampShape then timestamp(shape, value.utc)
        when BlobShape then Base64.strict_encode64(value)
        else value
        end
      end

      def timestamp(shape, value)
        case shape
        when Iso8601TimestampShape then value.iso8601
        when Rfc822TimestampShape then value.rfc822
        when UnixTimestampShape then value.to_i
        else raise "invalid timestamp format `#{shape.class.name}'"
        end
      end

    end
  end
end
