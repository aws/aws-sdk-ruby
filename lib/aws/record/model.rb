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

# todo move these to included modules (like validations and naming)

require 'aws/record/abstract_base'
require 'aws/record/model/scope'
require 'aws/record/model/attributes'
require 'aws/record/model/finder_methods'

module AWS
  module Record

    # An ActiveRecord-like interface built ontop of Amazon SimpleDB.
    #
    #   class Book < AWS::Record::Model
    #
    #     string_attr :title
    #     string_attr :author
    #     integer :number_of_pages
    #
    #     timestamps # adds a :created_at and :updated_at pair of timestamps
    #
    #   end
    #
    #   b = Book.new(:title => 'My Book', :author => 'Me', :pages => 1)
    #   b.save
    #
    # = Attribute Macros
    #
    # When extending AWS::Record::Model you should first consider what
    # attributes your class should have.  Unlike ActiveRecord, AWS::Record
    # models are not backed by a database table/schema.  You must choose what
    # attributes (and what types) you need.  
    #
    # * +string_attr+
    # * +boolean_attr+
    # * +integer_attr+
    # * +float_attr+
    # * +datetime_attr+
    # * +date_attr+
    #
    # === Usage 
    #
    # Normally you just call these methods inside your model class definition:
    #
    #   class Book < AWS::Record::Model
    #     string_attr :title
    #     boolean_attr :has_been_read
    #     integer_attr :number_of_pages
    #     float_attr :weight_in_pounds
    #     datetime_attr :published_at
    #   end
    #
    # For each attribute macro a pair of setter/getter methods are added #
    # to your class (and a few other useful methods).
    #
    #   b = Book.new
    #   b.title = "My Book"
    #   b.has_been_read = true
    #   b.number_of_pages = 1000
    #   b.weight_in_pounds = 1.1
    #   b.published_at = Time.now
    #   b.save
    #
    #   b.id #=> "0aa894ca-8223-4d34-831e-e5134b2bb71c"
    #   b.attributes
    #   #=> { 'title' => 'My Book', 'has_been_read' => true, ... }
    #
    # === Default Values
    #
    # All attribute macros accept the +:default_value+ option.  This sets
    # a value that is populated onto all new instnaces of the class.
    #
    #   class Book < AWS::Record::Model
    #     string_attr :author, :deafult_value => 'Me'
    #   end
    #
    #   Book.new.author #=> 'Me'
    #
    # === Multi-Valued (Set) Attributes
    #
    # AWS::Record permits storing multiple values with a single attribute.
    #
    #   class Book < AWS::Record::Model
    #     string_attr :tags, :set => true
    #   end
    #
    #   b = Book.new
    #   b.tags #=> #<Set: {}>
    #
    #   b.tags = ['fiction', 'fantasy']
    #   b.tags #=> #<Set: {'fiction', 'fantasy'}>
    #
    # These multi-valued attributes are treated as sets, not arrays.  This
    # means:
    #
    # * values are unordered
    # * duplicate values are automatically omitted
    #
    # Please consider these limitations when you choose to use the +:set+ 
    # option with the attribute macros.
    # 
    # = Validations
    #
    # It's important to validate models before there are persisted to keep
    # your data clean.  AWS::Record supports most of the ActiveRecord style
    # validators.
    #
    #   class Book < AWS::Record::Model
    #     string_attr :title
    #     validates_presence_of :title
    #   end
    #
    #   b = Book.new
    #   b.valid? #=> false
    #   b.errors.full_messages #=> ['Title may not be blank']
    #
    # Validations are checked before saving a record.  If any of the validators
    # adds an error, the the save will fail.
    #
    # For more information about the available validation methods see
    # {Validations}.
    # 
    # = Finder Methods
    #
    # You can find records by their ID.  Each record gets a UUID when it
    # is saved for the first time.  You can use this ID to fetch the record
    # at a latter time:
    #
    #   b = Book["0aa894ca-8223-4d34-831e-e5134b2bb71c"]
    #
    #   b = Book.find("0aa894ca-8223-4d34-831e-e5134b2bb71c")
    #
    # If you try to find a record by ID that has no data an error will
    # be raised.
    #
    # === All
    #
    # You can enumerate all of your records using +all+.
    #
    #   Book.all.each do |book|
    #     puts book.id
    #   end
    #
    #   Book.find(:all) do |book|
    #     puts book.id
    #   end
    #
    # Be careful when enumerating all.  Depending on the number of records
    # and number of attributes each record has, this can take a while, 
    # causing quite a few requests.
    #
    # === First
    #
    # If you only want a single record, you should use +first+.
    #
    #   b = Book.first
    #
    # === Modifiers
    #
    # Frequently you do not want ALL records or the very first record.  You
    # can pass options to +find+, +all+ and +first+.
    #
    #   my_books = Book.find(:all, :where => 'owner = "Me"')
    #
    #   book = Book.first(:where => { :has_been_read => false })
    #
    # You can pass as find options:
    # 
    # * +:where+ - Conditions that must be met to be returned
    # * +:order+ - The order to sort matched records by
    # * +:limit+ - The maximum number of records to return
    #
    # = Scopes
    #
    # More useful than writing query fragments all over the place is to
    # name your most common conditions for reuse.
    #
    #   class Book < AWS::Record::Model
    #
    #     scope :mine, where(:owner => 'Me')
    #   
    #     scope :unread, where(:has_been_read => false)
    #
    #     scope :by_popularity, order(:score, :desc)
    #
    #     scope :top_10, by_popularity.limit(10)
    #
    #   end
    #
    #   # The following expression returns 10 books that belong
    #   # to me, that are unread sorted by popularity.
    #   next_good_reads = Book.mine.unread.top_10 
    #
    # There are 3 standard scope methods:
    #
    # * +where+
    # * +order+
    # * +limit+
    #
    # === Conditions (where)
    #
    # Where accepts aruments in a number of forms:
    #
    # 1. As an sql-like fragment. If you need to escape values this form is 
    #    not suggested.
    #
    #      Book.where('title = "My Book"')
    #
    # 2. An sql-like fragment, with placeholders.  This escapes quoted
    #    arguments properly to avoid injection.
    #
    #      Book.where('title = ?', 'My Book')
    #
    # 3. A hash of key-value pairs. This is the simplest form, but also the 
    #    least flexible.  You can not use this form if you need more complex 
    #    expressions that use or.
    #
    #      Book.where(:title => 'My Book')
    #
    # === Order
    #
    # This orders the records as returned by AWS.  Default ordering is ascending.
    # Pass the value :desc as a second argument to sort in reverse ordering.
    #
    #   Book.order(:title)        # alphabetical ordering 
    #   Book.order(:title, :desc) # reverse alphabetical ordering 
    #
    # You may only order by a single attribute. If you call order twice in the 
    # chain, the last call gets presedence:
    #
    #   Book.order(:title).order(:price)
    #
    # In this example the books will be ordered by :price and the order(:title)
    # is lost.
    #
    # === Limit
    #
    # Just call +limit+ with an integer argument.  This sets the maximum
    # number of records to retrieve:
    #
    #   Book.limit(2)
    #
    # === Delayed Execution
    #
    # It should be noted that all finds are lazy (except +first+).  This
    # means the value returned is not an array of records, rather a handle
    # to a {Scope} object that will return records when you enumerate over them.
    #
    # This allows you to build an expression without making unecessary requests.
    # In the following example no request is made until the call to
    # each_with_index.
    #
    #   all_books = Books.all
    #   ten_books = all_books.limit(10)
    #
    #   ten_books.each_with_index do |book,n|
    #     puts "#{n + 1} : #{book.title}"
    #   end
    #
    class Model

      extend AbstractBase

      class << self

        # Creates the SimpleDB domain that is configured for this class.
        #
        #   class Product < AWS::Record::Model
        #   end
        #
        #   Product.create_table #=> creates the SimpleDB domain 'Product'
        #
        # If you shard you data across multiple domains, you can specify the
        # shard name:
        #
        #   # create two domains, with the given names
        #   Product.create_domain :shard_name => 'products-1'
        #   Product.create_domain :shard_name => 'products-2'
        #
        # If you share a single AWS account with multiple applications, you
        # can provide a domain prefix to group domains and to avoid name
        # collisions:
        #
        #   AWS::Record.domain_prefix = 'myapp-'
        #
        #   # creates the domain 'myapp-Product'
        #   Product.create_domain
        #
        #   # creates the domain 'myapp-products-1'
        #   Product.create_domain :shard_name => 'products-1'
        #
        # @param [Hash] options Hash of options passed to 
        #   {SimpleDB::DomainCollection#create}.  
        #
        # @option options [String] :shard_name Defaults to the class name.  The
        #   shard name will be prefixed with {AWS::Record.domain_prefix},
        #   and that becomes the domain name.
        #
        # @return [SimpleDB::Domain]
        #
        def create_domain shard_name = nil
          sdb.domains.create(sdb_domain_name(shard_name))
        end

        # @return [AWS::SimpleDB::Domain]
        # @private
        def sdb_domain shard_name = nil
          sdb.domains[sdb_domain_name(shard_name)]
        end

        protected
        def sdb_domain_name shard_name = nil
          "#{AWS::Record.domain_prefix}#{self.shard_name(shard_name)}"
        end

        protected
        def sdb
          AWS::SimpleDB.new
        end

      end

      # @return [SimpleDB::Item] Returns a reference to the item as stored in 
      #   simple db.
      # @private
      private
      def sdb_item
        sdb_domain.items[id]
      end

      # @return [SimpleDB::Domain] Returns the domain this record is
      #   persisted to or will be persisted to.
      private
      def sdb_domain
        self.class.sdb_domain(shard)
      end

      # This function accepts a hash of item data (as returned from
      # AttributeCollection#to_h or ItemData#attributes) and returns only
      # the key/value pairs that are configured attribues for this class.
      # @private
      private
      def deserialize_item_data item_data

        marked_for_deletion = item_data['_delete_'] || []

        data = {}
        item_data.each_pair do |attr_name,values|

          attribute = self.class.attributes[attr_name]

          next unless attribute
          next if marked_for_deletion.include?(attr_name)

          if attribute.set?
            data[attr_name] = values.map{|v| attribute.deserialize(v) }
          else
            data[attr_name] = attribute.deserialize(values.first)
          end

        end
        data
      end

      # @private
      protected
      def create_storage
        to_add = serialize_attributes
        sdb_item.attributes.add(to_add.merge(opt_lock_conditions))
      end

      # @private
      private
      def update_storage

        to_update = {}
        to_delete = []

        # serialized_attributes will raise error if the entire record is blank
        attribute_values = serialize_attributes

        changed.each do |attr_name|
          if values = attribute_values[attr_name]
            to_update[attr_name] = values
          else
            to_delete << attr_name
          end
        end

        to_update.merge!(opt_lock_conditions)

        if to_delete.empty?
          sdb_item.attributes.replace(to_update)
        else
          sdb_item.attributes.replace(to_update.merge('_delete_' => to_delete))
          sdb_item.attributes.delete(to_delete + ['_delete_'])
        end

      end

      # @return [true]
      # @private
      private
      def delete_storage
        sdb_item.delete(opt_lock_conditions)
        @_deleted = true
      end

    end

    # for backwards compatability with the old AWS::Record::Base
    Base = Model

  end
end
