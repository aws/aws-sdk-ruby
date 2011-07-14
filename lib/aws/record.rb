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

require 'set'
require 'aws/record/base'

module AWS
  module Record
  
    # @private
    class RecordNotFound < Exception; end
  
    # Sets a prefix to be applied to all SimpleDB domains associated with
    # AWS::Record::Base classes.
    #
    #   AWS::Record.domain_prefix = 'production_'
    #
    #   class Product < AWS::Record::Base
    #     set_domain_name 'products'
    #   end
    #
    #   Product.domain_name #=> 'production_products'
    #
    # @param [String] A prefix to append to all domains.  This is useful for
    #   grouping domains used by one application with a single prefix.
    def self.domain_prefix= prefix
      @prefix = prefix
    end
  
    # @return [String,nil] The string that is prepended to all domain names.
    def self.domain_prefix
      @prefix
    end
  
    # A utility method for casting values into an array.  
    #
    # * nil is returned as an empty array, []
    # * Arrays are returned unmodified
    # * Everything else is returned as the sole element of an array
    #
    # @param [Object] value
    # @return [Array] The value cast into an array
    # @private
    def self.as_array value
      case value
      when nil   then []
      when Set   then value.to_a
      when Array then value
      else [value]
      end
    end
  
    # A utility method for casting values into 
    #
    # * Sets are returned unmodified
    # * everything else is passed through #{as_array} and then into a new Set
    #
    # @param [Object] value
    # @return [Set] The value cast into a Set.
    # @private
    def self.as_set value
      case value
      when Set then value
      else Set.new(as_array(value))
      end
    end
  
  end
end
