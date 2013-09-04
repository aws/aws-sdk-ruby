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

module Aws
  module Query
    class Builder

      include Seahorse::Model::Shapes

      # @param [Seahorse::Model::Shapes::Shape] rules
      def initialize(rules)
        @rules = rules
      end

      # @param [Hash] params
      # @return [ParamList]
      def to_query_params(params)
        param_list = ParamList.new
        structure(param_list, @rules, nil, params)
        param_list
      end

      # @param [Seahorse::Model::Shapes::Shape] rules
      # @param [Hash] params
      # @return [ParamList]
      def self.to_query_params(rules, params)
        new(rules).to_query_params(params)
      end

      private

      def structure(param_list, shape, prefix, values)
        values.each do |name, value|
          member_shape = shape.members[name]
          param_name = member_shape.serialized_name
          param_name = "#{prefix}.#{param_name}" if prefix
          member(param_list, member_shape, param_name, value)
        end
      end

      def list(param_list, shape, prefix, values)
        member_shape = shape.members

        if name = member_shape.serialized_name
          parts = prefix.split('.')
          parts.pop
          parts.push(name)
          prefix = parts.join('.')
        end

        values.each_with_index do |value, n|
          suffix = ".#{n+1}"
          param_name = "#{prefix}#{suffix}"
          member(param_list, member_shape, param_name, value)
        end
      end

      def member(param_list, shape, prefix, value)
        case shape
        when StructureShape then structure(param_list, shape, prefix, value)
        when ListShape then list(param_list, shape, prefix, value)
        else param_list.add(prefix, value.to_s)
        end
      end

    end
  end
end
