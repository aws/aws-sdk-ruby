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
require 'active_support/core_ext/time/conversions'
require 'active_support/core_ext/time/zones'
require 'active_support/core_ext/date_time/conversions'
require 'active_support/core_ext/date_time/zones'

module AWS
  module Record

    # @private
    class DateTimeAttribute < Attribute

      # Returns value cast to a DateTime object.  Empty strings are cast to 
      # nil.  Values are cast first to strings and then passed to 
      # DateTime.parse.  Integers are treated as timestamps.
      #
      #   datetime_attribute.type_cast('2000-01-02')
      #   #=> #<DateTime: 4903091/2,0,2299161>
      #
      #   datetime_attribute.type_cast(1306170146)
      #   #<DateTime: 106086465073/43200,-7/24,2299161>
      #
      #   datetime_attribute.type_cast('')
      #   #=> nil
      #
      #   datetime_attribute.type_cast(nil)
      #   #=> nil
      #
      # @param [Mixed] raw_value The value to cast to a DateTime object.
      # @param [Hash] options
      # @return [DateTime,nil]
      def self.type_cast raw_value, options = {}
        case raw_value
        when nil      then nil
        when ''       then nil
        when DateTime then raw_value
        when Integer  then 
          begin
            DateTime.parse(Time.at(raw_value).to_s) # timestamp
          rescue
            nil
          end
        else 
          begin
            DateTime.parse(raw_value.to_s) # Time, Date or String
          rescue
            nil
          end
        end
      end

      # Returns a DateTime object encoded as a string (suitable for sorting).
      #
      #   attribute.serialize(DateTime.parse('2001-01-01'))
      #   #=> '2001-01-01T00:00:00:Z)
      #
      # @param [DateTime] datetime The datetime object to serialize.
      # @param [Hash] options
      # @return [String] Returns the datetime object serialized to a string
      #   in ISO8601 format (e.g. '2011-01-02T10:11:12Z')
      def self.serialize datetime, options = {}
        unless datetime.is_a?(DateTime)
          msg = "expected a DateTime value, got #{datetime.class}"
          raise ArgumentError, msg  
        end

        original_zone = Time.zone
        Time.zone = 'UTC'
        string = datetime.in_time_zone.strftime('%Y-%m-%dT%H:%M:%S%z')
        Time.zone = original_zone
        string
      end

      # @private
      def self.allow_set?
        true
      end

    end

  end
end
