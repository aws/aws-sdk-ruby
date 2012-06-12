# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#.kkk:w

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

module AWS
  class CloudWatch
    #
    # @attr_reader [String] name
    #
    # @attr_reader [String] value
    #
    class Dimension
      # @private
      def initialize name, value
        @name = name
        @value = value
      end

      attr_reader :name

      attr_reader :value

      def to_hash
        {:name => name, :value => value}
      end

      def ==(other)
        name == other.name and value == other.value
      end
    end

    class DimensionFilter < Dimension
    end
  end
end
