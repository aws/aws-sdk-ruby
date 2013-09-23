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
        raise ArgumentError, format_error_msg(errors) unless errors.empty?
        params
      end

      def structure(rules, values, errors, context)
        rules.members.each do |member_name, member_shape|
          if values[member_name].nil?
            errors << "missing required parameter #{context}[#{member_name.inspect}]"
          end
        end
        values.each_pair do |name, value|
          if member_shape = rules.members[name]
            # ...
          else
            errors << "unexpected parameter #{context}[#{name.inspect}]"
          end
        end
      end

      private

      def format_error_msg(errors)
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
