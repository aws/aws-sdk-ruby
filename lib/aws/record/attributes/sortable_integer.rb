# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'aws/record/attributes/integer'

module AWS
  module Record

    # @private
    class SortableIntegerAttribute < IntegerAttribute

      def initialize name, options = {}

        range = options[:range]
        raise ArgumentError, "missing required option :range" unless range
        raise ArgumentError, ":range should be a integer range" unless
          range.is_a?(Range) and range.first.is_a?(Integer)

        super(name, options)

      end
      
      # Returns a serialized representation of the integer value suitable for
      # storing in SimpleDB.
      #
      #   attribute.serialize(123)
      #   #=> '123'
      #
      #   # padded to the correct number of digits
      #   attribute.serialize('123', :range => (0..10_000)
      #   #=> '00123'
      #
      #   # offset applied to make all values positive
      #   attribute.serialize('-55', :range => (-100..10_000)
      #   #=> '00045'
      #
      # @param [Integer] integer The number to serialize.
      # @param [Hash] options
      # @option options [required,Range] :range A range that represents the 
      #   minimum and maximum values this integer can be.
      #   The returned value will have an offset applied (if min is
      #   less than 0) and will be zero padded.
      # @return [String] A serialized representation of the integer.
      def self.serialize integer, options = {}
        expect(Integer, integer) do
          check_range(integer, options)
          offset_and_precision(options) do |offset,precision|
            "%0#{precision}d" % (integer.to_i + offset)
          end
        end
      end

      def self.deserialize string_value, options = {}
        offset_and_precision(options) do |offset,precision|
          string_value.to_i - offset
        end
      end

      # @private
      protected
      def self.offset_and_precision options, &block

        min = options[:range].first
        max = options[:range].last

        offset = min < 0 ? min * -1 : 0
        precision = (max + offset).to_s.length

        yield(offset, precision)

      end

      # @private
      def self.check_range number, options
        unless options[:range].include?(number)
          msg = "unable to serialize `#{number}`, falls outside " +
           "the range #{options[:range]}"
          raise msg
        end
      end

    end

  end
end
