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
    class StringAttribute < Attribute

      # Returns the value cast to a string.  Empty strings are returned as 
      # nil by default.  Type casting is done by calling #to_s on the value.
      #
      #   string_attr.type_cast(123)
      #   # => '123'
      #
      #   string_attr.type_cast('')
      #   # => nil
      #
      #   string_attr.type_cast('', :preserve_empty_strings => true)
      #   # => ''
      #
      # @param [Mixed] value
      # @param [Hash] options
      # @option options [Boolean] :preserve_empty_strings (false) When true,
      #   empty strings are preserved and not cast to nil.  
      # @return [String,nil] The type casted value.
      def self.type_cast raw_value, options = {}
        case raw_value
        when nil     then nil
        when ''      then options[:preserve_empty_strings] ? '' : nil
        when String  then raw_value
        else raw_value.to_s
        end
      end

      # Returns a serialized representation of the string value suitable for
      # storing in SimpleDB.
      # @param [String] string
      # @param [Hash] options
      # @return [String] The serialized string.
      def self.serialize string, options = {}
        unless string.is_a?(String)
          msg = "expected a String value, got #{string.class}"
          raise ArgumentError, msg  
        end
        string
      end

      # @private
      def self.allow_set?
        true
      end

    end

  end
end
