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

require 'date'
require 'aws/record/attribute'

module AWS
  module Record

    # @private
    class DateAttribute < Attribute

      # Returns value cast to a Date object.  Empty strings are cast to 
      # nil.  Values are cast first to strings and then passed to 
      # Date.parse.  Integers are treated as timestamps.
      #
      #   date_attribute.type_cast('2000-01-02T10:11:12Z')
      #   #=> #<Date: 4903091/2,0,2299161>
      #
      #   date_attribute.type_cast(1306170146)
      #   #<Date: 4911409/2,0,2299161>
      #
      #   date_attribute.type_cast('')
      #   #=> nil
      #
      #   date_attribute.type_cast(nil)
      #   #=> nil
      #
      # @param [Mixed] raw_value The value to cast to a Date object.
      # @param [Hash] options
      # @return [Date,nil]
      def self.type_cast raw_value, options = {}
        case raw_value
        when nil      then nil
        when ''       then nil
        when Date     then raw_value
        when Integer  then 
          begin
            Date.parse(Time.at(raw_value).to_s) # assumed timestamp
          rescue
            nil
          end
        else 
          begin
            Date.parse(raw_value.to_s) # Time, DateTime or String
          rescue
            nil
          end
        end
      end

      # Returns a Date object encoded as a string (suitable for sorting).
      #
      #   attribute.serialize(DateTime.parse('2001-01-01'))
      #   #=> '2001-01-01'
      #
      # @param [Date] datetime The date to serialize.
      #
      # @param [Hash] options
      #
      # @return [String] Returns the date object serialized to a string
      #   ('YYYY-MM-DD').
      #
      def self.serialize date, options = {}
        unless date.is_a?(Date)
          raise ArgumentError, "expected a Date value, got #{date.class}"
        end
        date.strftime('%Y-%m-%d')
      end

      # @private
      def self.allow_set?
        true
      end

    end

  end
end
