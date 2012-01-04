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

require 'aws/record/attribute'

module AWS
  module Record

    # @private
    class IntegerAttribute < Attribute
      
      # Returns value cast to an integer.  Empty strings are cast to 
      # nil by default.  Type casting is done by calling #to_i on the value.
      #
      #   int_attribute.type_cast('123')
      #   #=> 123
      #
      #   int_attribute.type_cast('')
      #   #=> nil
      #
      # @param [Mixed] value The value to type cast to an integer.
      # @return [Integer,nil] Returns the type casted integer or nil
      def self.type_cast raw_value, options = {}
        case raw_value
        when nil      then nil
        when ''       then nil
        when Integer  then raw_value
        else
          raw_value.respond_to?(:to_i) ? 
            raw_value.to_i :
            raw_value.to_s.to_i
        end
      end

      # Returns a serialized representation of the integer value suitable for
      # storing in SimpleDB.
      #
      #   attribute.serialize(123)
      #   #=> '123'
      #
      # @param [Integer] integer The number to serialize.
      # @param [Hash] options
      # @return [String] A serialized representation of the integer.
      def self.serialize integer, options = {}
        expect(Integer, integer) do
          integer.to_s
        end
      end

      # @private
      def self.allow_set?
        true
      end

    end

  end
end
