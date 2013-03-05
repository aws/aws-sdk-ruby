# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

module AWS

  # AWS::Record is an ORM built on top of AWS services.  
  module Record

    AWS.register_autoloads(self) do
      autoload :Base,         'model'
      autoload :Model,        'model'
      autoload :HashModel,    'hash_model'
    end

    # @private
    class RecordNotFound < StandardError; end
  
    # Sets a prefix to be applied to all SimpleDB domains associated with
    # AWS::Record::Base classes.
    #
    #   AWS::Record.domain_prefix = 'production_'
    #
    #   class Product < AWS::Record::Base
    #     set_shard_name 'products'
    #   end
    #
    #   p = Product.new
    #   p.shard #=> 'products'
    #   p.save # the product is persisted to the 'production-products' domain
    #
    # @param [String] prefix A prefix to append to all domains.  This is useful 
    #   for grouping domains used by one application with a single prefix.
    #
    def self.domain_prefix= prefix
      @domain_prefix = prefix
    end

    # @return [String,nil] The string that is prepended to all domain names.
    def self.domain_prefix
      @domain_prefix
    end

    # Sets a prefix to be applied to all DynamoDB tables associated
    # with {AWS::Record::HashModel} and {AWS::Record::ListModel}
    # classes.
    #
    #   AWS::Record.table_prefix = 'production_'
    #
    #   class Product < AWS::Record::HashModel
    #     set_shard_name 'products'
    #   end
    #
    #   p = Product.new
    #   p.shard #=> 'products'
    #   p.save # the product is persisted to the 'production-products' table
    #
    # @param [String] prefix A prefix to append to all tables.  This is
    #   useful for grouping tables used by one application with a
    #   single prefix.
    #
    def self.table_prefix= prefix
      @table_prefix = prefix
    end

    # @return [String,nil] The string that is prepended to all table names.
    def self.table_prefix
      @table_prefix
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
