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

require 'aws/core'
require 'aws/dynamo_db/config'

module AWS

  # Provides a high-level interface for using DynamoDB.
  #
  #   dynamo_db = AWS::DynamoDB.new(
  #     :access_key_id => '...',
  #     :secret_access_key => '...',
  #     :session_token => '...')
  #
  # = Credentials
  #
  # Amazon DynamoDB requires that all requests are made with short-term
  # credentials (e.g. requires a session token).
  #
  # @note If you make a request using AWS::DynamoDB with long-term credentials
  #   a request is made to Amazon STS for temproary session credentials.
  #   These will be cached in the process and re-used.
  #
  # = Tables
  #
  # Tables contain items, and organize information into discrete
  # areas. All items in the table have the same primary key
  # scheme. You designate the attribute name (or names) to use for the
  # primary key when you create a table, and the table requires each
  # item in the table to have a unique primary key value. The first
  # step in writing data to DynamoDB is to create a table and
  # designate a table name with a primary key.
  #
  #   table = dynamo_db.tables.create(
  #     "MyTable",
  #     :hash_key => { :id => :string }
  #   )
  #   sleep 1 while table.status == :creating
  #
  # See {Table} and {TableCollection} for more information on creating
  # and managing tables.
  #
  # = Items and Attributes
  #
  # An item is a collection of one or more attributes, where each
  # attribute has a string name and a string, number, string set or
  # number set value.
  #
  # The identity of an item consists of its hash key value and -- if
  # the table's schema includes a range key -- its range key value.
  #
  #   item = table.items.put(:id => "abc123")
  #   item.hash_value # => "abc123"
  #   item.attributes.set(
  #     :colors => ["red", "blue"],
  #     :numbers => [12, 24]
  #   )
  #
  # See {Item} and {ItemCollection} for more information on creating
  # and managing items.  For more information on managing attributes,
  # see {AttributeCollection}.
  #
  # = Examples
  #
  #   # create a table (10 read and 5 write capacity units) with the
  #   # default schema (id string hash key)
  #   dynamo_db = AWS::DynamoDB.new
  #   table = dynamo_db.tables.create('my-table', 10, 5)
  #
  #   sleep 1 while table.status == :creating
  #   table.status #=> :active
  #
  #   # get an existing table by name and specify its hash key
  #   table = dynamo_db.tables['another-table']
  #   table.hash_key = [:id, :number]
  # 
  #   # add an item
  #   item = table.items.create('id' => 12345, 'foo' => 'bar')
  # 
  #   # add attributes to an item
  #   item.attributes.add 'category' => %w(demo), 'tags' => %w(sample item)
  # 
  #   # update an item with mixed add, delete, update
  #   item.attributes.update do |u|
  #     u.add 'colors' => %w(red)
  #     u.set 'category' => 'demo-category'
  #     u.delete 'foo'
  #   end
  # 
  #   # delete attributes
  #   item.attributes.delete 'colors', 'category'
  # 
  #   # get attributes
  #   item.attributes.to_h
  #   #=> {"id"=>#<BigDecimal:10155f5d0,'0.12345E5',9(18)>, "tags"=>#<Set: {"item", "sample"}>}
  # 
  #   # delete an item and all of its attributes
  #   item.delete
  #
  class DynamoDB

    AWS.register_autoloads(self, 'aws/dynamo_db') do
      autoload :AttributeCollection, 'attribute_collection'
      autoload :BatchGet, 'batch_get'
      autoload :Client, 'client'
      autoload :Errors, 'errors'
      autoload :Expectations, 'expectations'
      autoload :Item, 'item'
      autoload :ItemData, 'item_data'
      autoload :ItemCollection, 'item_collection'
      autoload :Keys, 'keys'
      autoload :PrimaryKeyElement, 'primary_key_element'
      autoload :Request, 'request'
      autoload :Resource, 'resource'
      autoload :Table, 'table'
      autoload :TableCollection, 'table_collection'
      autoload :Types, 'types'
    end

    include Core::ServiceInterface

    # Returns a collection representing all the tables in your account.
    #
    # @return [TableCollection]
    def tables
      TableCollection.new(:config => config)
    end

    # Request attributes for items spanning multiple tables.  You configure
    # you batch get request using a block:
    #
    #   attributes = dynamo_db.batch_get do |batch|
    #     # call methods on batch specify tables, attributes and items
    #     # ...
    #   end
    #
    # The value returned by #batch_get is an enumerable object that yields
    # the table name (as a string) and a hash of attributes.  The 
    # enumerable yields once per item received in the batch get.
    #
    # == Configuring the batch
    #
    # You can call two methods on the yielded batch object:
    #
    # * #table
    # * #items
    #
    # For more information on these methods, see {BatchGet}.
    #
    # @yield [String, Hash] Yields the table name as a string and a hash
    #   of attributes for each item received in the bach get request.
    #
    # @return [Enumerable] 
    #
    def batch_get &block 
      batch = BatchGet.new(:config => config)
      yield(batch)
      batch.enumerator
    end

  end
end
