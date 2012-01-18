# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'bigdecimal'
require 'set'

module AWS
  class DynamoDB

    # @private
    module Types

      def value_from_response(hash)
        (type, value) = hash.to_a.first
        case type
        when "S", :s
          value
        when "SS", :ss
          Set[*value]
        when "N", :n
          BigDecimal(value.to_s)
        when "NS", :ns
          Set[*value.map { |v| BigDecimal(v.to_s) }]
        end
      end

      def values_from_response_hash(hash)
        hash.inject({}) do |h, (key, value_hash)|
          h.update(key => value_from_response(value_hash))
        end
      end

      def format_attribute_value(value, context = nil)
        indicator = type_indicator(value, context)

        value = [] if value == :empty_number_set
        value = value.to_s if indicator == :n
        value = value.map(&:to_s) if indicator == :ns

        Hash[[[indicator, value]]]
      end

      protected
      def type_indicator(value, context)
        case
        when value.respond_to?(:to_str) then :s
        when value.kind_of?(Numeric) then :n
        when value.respond_to?(:each)
          indicator = nil
          value.each do |v|
            member_indicator = type_indicator(v, context)
            raise_error("nested collections", context) if
              member_indicator.to_s.size > 1
            raise_error("mixed types", context) if
              indicator and member_indicator != indicator
            indicator = member_indicator
          end
          indicator ||= :s
          :"#{indicator}s"
        when value == :empty_number_set
          :ns
        else
          raise_error("unsupported attribute type #{value.class}", context)
        end
      end

      protected
      def raise_error(msg, context)
        msg = "#{msg} in #{context}" if context
        raise ArgumentError, msg
      end

    end

  end
end
