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
    class FloatAttribute < Attribute
      
      def self.type_cast raw_value, options = {}
        case raw_value
        when nil   then nil
        when ''    then nil
        when Float then raw_value
        else
          raw_value.respond_to?(:to_f) ? 
            raw_value.to_f :
            raw_value.to_s.to_f
        end
      end

      def self.serialize float, options = {}
        expect(Float, float) do
          float.to_s
        end
      end

      # @private
      def self.allow_set?
        true
      end

    end

  end
end
