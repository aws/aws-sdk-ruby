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
require 'aws/simple_db/config'

module AWS

  # This class is the starting point for working with Amazon SimpleDB.
  #
  # To use Amazon SimpleDB you must first 
  # {sign up here}[http://aws.amazon.com/simpledb/].
  #
  # For more information about Amazon SimpleDB:
  #
  # * {Amazon SimpleDB}[http://aws.amazon.com/simpledb/]
  # * {Amazon SimpleDB Documentation}[http://aws.amazon.com/documentation/simpledb/]
  #
  # = Credentials
  #
  # You can setup default credentials for all AWS services via 
  # AWS.config:
  #
  #   AWS.config(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  # 
  # Or you can set them directly on the SimpleDB interface:
  #
  #   sdb = AWS::SimpleDB.new(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  #
  # = Understanding the SimpleDB Interface
  #
  # SimpleDB stores data in a hierarchy of:
  #
  # Domains > Items > Attributes
  #
  # These are modeled with the following classes:
  #
  # * {DomainCollection} 
  # * {Domain} 
  # * {ItemCollection} 
  # * {Item} 
  # * {AttributeCollection} 
  # * {Attribute} 
  #
  # The collection classes listed above make it easy to enumerate,
  # the objects they represent.  They also make it easy to perform
  # bulk operations on all objects in that collection.
  #
  # = Domains
  #
  # Domains are like database tables.  A domain must exist before you can
  # write to it.  To create a domain:
  #
  #   sdb = SimpleDB.new
  #   domain = sdb.domains.create('mydomain')
  #
  # For more information about working with domains see {DomainCollection}
  # and {Domain}.
  #
  # = Items & Attributes
  #
  # Items exist in SimpleDB when they have attributes.  You can delete an 
  # item by removing all of its attributes.  You create an item by adding
  # an attribute to it.
  #
  # The following example illustrates how you can reference an item that
  # does not exist yet:
  #
  #   sdb = SimpleDB.new
  #
  #   # this domain is empty, it has no items
  #   domain = sdb.domains.create('newdomain')
  #   domain.items.collect(&:name)
  #   #=> []
  #
  #   # this item doesn't exist yet, so it has no attributes
  #   item = domain.items['newitem']
  #   item.attributes.collect(&:name)
  #   #=> []
  #
  #   # the item has no attributes
  #   tags = item.attributes['tags']
  #   tags.values
  #   #=> []
  #
  # To create the item in SimpleDB you just need to add an attribute.
  #
  #   tags.add %w(first new)
  #
  #   domain.items.collect(&:name)
  #   #=> ['newitem']
  #
  #   item.attributes.collect(&:name)
  #   #=> ['tags']
  #
  #   tags.values
  #   #=> ['first', 'new']
  #
  # For more information about working with items and attributes, see:
  #
  # * {ItemCollection}
  # * {Item}
  # * {AttributeCollection}
  # * {Attribute}
  #
  # = Lazy Execution
  #
  # Requests are not made until necessary.  This means you can drill down
  # all the way to an attribute, by name, without making any requets
  # to SimpleDB.
  #
  #   # makes no request to SimpleDB
  #   sdb = SimpleDB.new
  #   colors = sdb.domains['mydomain'].items['car'].attributes['colors']
  #
  #   # one request to get the values for 'colors'
  #   puts colors.values
  #
  #   # one request to add blue and green
  #   colors.add 'blue', 'green'
  #
  #   # one request to delete the colors attribute
  #   colors.delete
  #
  class SimpleDB

    AWS.register_autoloads(self, 'aws/simple_db') do
      autoload :Attribute,             'attribute'
      autoload :AttributeCollection,   'attribute_collection'
      autoload :Client,                'client'
      autoload :ConsistentReadOption,  'consistent_read_option'
      autoload :DeleteAttributes,      'delete_attributes'
      autoload :Domain,                'domain'
      autoload :DomainCollection,      'domain_collection'
      autoload :DomainMetadata,        'domain_metadata'
      autoload :Errors,                'errors' 
      autoload :ExpectConditionOption, 'expect_condition_option'
      autoload :Item,                  'item'
      autoload :ItemCollection,        'item_collection'
      autoload :ItemData,              'item_data'
      autoload :PutAttributes,         'put_attributes'
      autoload :Request,               'request'
    end

    include Core::ServiceInterface

    # Returns a collection object that represents the domains in your
    # account.
    #
    # @return [DomainCollection] Returns a collection representing all your 
    #   domains.
    def domains
      DomainCollection.new(:config => config)
    end

    # Call this method with a block.  Code executed inside the block
    # make consistent reads until the block ends.
    #
    #   AWS::SimpleDB.consistent_reads do
    #     # ...
    #   end
    #
    # === Other Modes
    #
    # You can also use this same function to disable consistent reads insie
    # a block.  This is useful if you have consistent reads enabled by 
    # default:
    #
    #   AWS::SimpleDB.consistent_reads(false) do
    #     # ...
    #   end
    # 
    # @param [Boolean] state (true) When true, all SimpleDB read operations
    #   will be consistent reads inside the block.  When false, all 
    #   reads operations will not be consistent reads.  The previous state
    #   will be restored after the block executes.
    # @return Returns the final block value.
    def self.consistent_reads state = true, &block
      begin
        prev_state = Thread.current['_simple_db_consistent_reads_']
        Thread.current['_simple_db_consistent_reads_'] = state
        yield
      ensure
        Thread.current['_simple_db_consistent_reads_'] = prev_state
      end
    end

    # @return [Boolean] Returns true if we are inside an AWS::SimpleDB
    #   #consistent_reads method block.
    # @private
    def self.in_consistent_reads_block?
      !Thread.current['_simple_db_consistent_reads_'].nil?
    end

    # @return [Boolean] Returns true if the consistent_reads block has
    #   a true state, false otherwise.
    # @private
    def self.consistent_reads_state
      Thread.current['_simple_db_consistent_reads_']
    end

  end
end
