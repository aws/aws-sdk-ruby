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

module Seahorse
  module Client
    class ParamValidator

      # @param [Model::Shapes::InputShape] rules
      def initialize(rules)
        @rules = rules
      end

      # @param [Hash] params
      # @return [Hash] Returns a hash of validate and normalized parameters.
      def validate!(params)
        errors = []
        structure(@rules, params, errors, context = 'params')
        raise ArgumentError, error_messages(errors) unless errors.empty?
        params
      end

      private

      def structure(rules, values, errors, context)
        # ensure the value is hash like
        return unless hash_like?(values, errors, context)

        # ensure required members are present
        rules.members.each do |member_name, member_shape|
          if member_shape.required? and values[member_name].nil?
            param = "#{context}[#{member_name.inspect}]"
            errors << "missing required parameter #{param}"
          end
        end

        # validate non-nil members
        values.each do |name, value|
          unless value.nil?
            if member_shape = rules.members[name]
              member(member_shape, value, errors, context + "[#{name.inspect}]")
            else
              errors << "unexpected value at #{context}[#{name.inspect}]"
            end
          end
        end
      end

      def list(rules, values, errors, context)
        # ensure the value is an array
        unless values.is_a?(Array)
          errors << "expected #{context} to be an array"
          return
        end

        # validate members
        offset = 0
        values.each do |value|
          member(rules.members, value, errors, context + "[#{offset}]")
          offset += 1
        end
      end

      def map(rules, values, errors, context)
        return unless hash_like?(values, errors, context)
        values.each do |key, value|
          member(rules.keys, key, errors, "#{context} #{key.inspect} key")
          member(rules.members, value, errors, context + "[#{key.inspect}]")
        end
      end

      def member(rules, value, errors, context)
        case rules
        when Model::Shapes::StructureShape
          structure(rules, value, errors, context)
        when Model::Shapes::ListShape
          list(rules, value, errors, context)
        when Model::Shapes::MapShape
          map(rules, value, errors, context)
        when Model::Shapes::Base64Shape
          unless value.is_a?(String)
            errors << "expected #{context} to be a base64 encoded string"
          end
        when Model::Shapes::StringShape
          unless value.is_a?(String)
            errors << "expected #{context} to be a string"
          end
        when Model::Shapes::IntegerShape
          unless value.is_a?(Integer)
            errors << "expected #{context} to be an integer"
          end
        when Model::Shapes::FloatShape
          unless value.is_a?(Float)
            errors << "expected #{context} to be a float"
          end
        when Model::Shapes::TimestampShape
          unless value.is_a?(Time)
            errors << "expected #{context} to be a Time object"
          end
        when Model::Shapes::BooleanShape
          unless [true, false].include?(value)
            errors << "expected #{context} to be true or false"
          end
        when Model::Shapes::BlobShape
          unless io_like?(value)
            errors << "expected #{context} to be an IO object"
          end
        end
      end

      def hash_like?(value, errors, context)
        if value.is_a?(Enumerable) && value.respond_to?(:[])
          true
        else
          errors << "expected #{context} to be a hash"
          false
        end
      end

      def io_like?(value)
        value.respond_to?(:read) &&
        value.respond_to?(:rewind) &&
        value.respond_to?(:size)
      end

      def error_messages(errors)
        if errors.size == 1
          errors.first
        else
          prefix = "\n  - "
          "parameter validator found #{errors.size} errors:" +
            prefix + errors.join(prefix)
        end
      end

    end
  end
end
