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
    class SortableFloatAttribute < FloatAttribute

      def initialize name, options = {}

        range = options[:range]
        raise ArgumentError, "missing required option :range" unless range
        raise ArgumentError, ":range should be an integer range" unless
          range.is_a?(Range) and range.first.is_a?(Integer)

        super(name, options)

      end

      def self.serialize float, options = {}
        expect(Float, float) do 

          left, right = float.to_s.split('.')

          left = SortableIntegerAttribute.serialize(left.to_i, options)

          SortableIntegerAttribute.check_range(float, options)

          "#{left}.#{right}"

        end
      end

      def self.deserialize string_value, options = {}

        left, right = float.to_s.split('.')

        left = SortableIntegerAttribute.deserialize(left, options)

        "#{left}.#{right}".to_f

      end

    end

  end
end
