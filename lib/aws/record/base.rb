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

# todo move these to included modules (like validations and naming)

require 'aws/simple_db'

require 'set'
require 'uuidtools'

require 'aws/record/naming'
require 'aws/record/attribute_macros'
require 'aws/record/scopes'
require 'aws/record/finder_methods'
require 'aws/record/optimistic_locking'
require 'aws/record/validations'
require 'aws/record/dirty_tracking'
require 'aws/record/conversion'
require 'aws/record/errors'
require 'aws/record/exceptions'

module AWS
  module Record

    # An ActiveRecord-like interface built ontop of AWS.
    #
    #   class Book < AWS::Record::Base
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
    # When extending AWS::Record::Base you should first consider what
    # attributes your class should have.  Unlike ActiveRecord, AWS::Record
    # models are not backed by a database table/schema.  You must choose what
    # attributes (and what types) you need.  
    #
    # * +string_attr+
    # * +boolean_attr+
    # * +integer_attr+
    # * +float_attr+
    # * +datetime_attr+
    #
    # For more information about the various attribute macros available, 
    # and what options they accept, see {AttributeMacros}.
    #
    # === Usage 
    #
    # Normally you just call these methods inside your model class definition:
    #
    #   class Book < AWS::Record::Base
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
    #   class Book < AWS::Record::Base
    #     string_attr :author, :deafult_value => 'Me'
    #   end
    #
    #   Book.new.author #=> 'Me'
    #
    # === Multi-Valued (Set) Attributes
    #
    # AWS::Record permits storing multiple values with a single attribute.
    #
    #   class Book < AWS::Record::Base
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
    #   class Book < AWS::Record::Base
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
    #   class Book < AWS::Record::Base
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
    class Base

      # for rails 3+ active model compatability
      extend Naming
      include Naming

      extend Validations
      extend AttributeMacros
      extend FinderMethods
      extend OptimisticLocking
      extend Scopes

      include Conversion
      include DirtyTracking
  
      # Constructs a new record for this class/domain.
      #
      # @param [Hash] attributes A set of attribute values to seed this record
      #   with.  The attributes are bulk assigned.
      # @return [Base] Returns a new record that has not been persisted yet.
      def initialize attributes = {}
        @_data = {}
        assign_default_values
        bulk_assign(attributes)
      end
  
      # The id for each record is auto-generated.  The default strategy 
      # generates uuid strings.
      # @return [String] Returns the id string (uuid) for this record.  Retuns
      #   nil if this is a new record that has not been persisted yet.
      def id
        @_id
      end

      # @return [Hash] A hash with attribute names as hash keys (strings) and 
      #   attribute values (of mixed types) as hash values.
      def attributes
        attributes = Core::IndifferentHash.new
        attributes['id'] = id if persisted?
        self.class.attributes.keys.inject(attributes) do |hash,attr_name|
          hash[attr_name] = __send__(attr_name)
          hash
        end
      end

      # Acts like {#update} but does not call {#save}.
      #
      #   record.attributes = { :name => 'abc', :age => 20 }
      #
      # @param [Hash] attributes A hash of attributes to set on this record
      #   without calling save. 
      #
      # @return [Hash] Returns the attribute hash that was passed in.
      #
      def attributes= attributes
        bulk_assign(attributes)
      end
  
      # Persistence indicates if the record has been saved previously or not.
      #
      # @example
      #   @recipe = Recipe.new(:name => 'Buttermilk Pancackes')
      #   @recipe.persisted? #=> false
      #   @recipe.save!
      #   @recipe.persisted? #=> true
      #
      # @return [Boolean] Returns true if this record has been persisted.
      def persisted?
        !!@_persisted
      end
  
      # @return [Boolean] Returns true if this record has not been persisted
      #   to SimpleDB.
      def new_record?
        !persisted?
      end
  
      # @return [Boolean] Returns true if this record has no validation errors.
      def valid?
        run_validations
        errors.empty?
      end
  
      # Creates new records, updates existing records.
      # @return [Boolean] Returns true if the record saved without errors,
      #   false otherwise.
      def save
        if valid?
          persisted? ? update : create
          clear_changes!
          true
        else
          false
        end
      end
  
      # Creates new records, updates exsting records.  If there is a validation
      # error then an exception is raised.
      # @raise [InvalidRecordError] Raised when the record has validation 
      #   errors and can not be saved.
      # @return [true] Returns true after a successful save.
      def save!
        raise InvalidRecordError.new(self) unless save
        true
      end
  
      # Bulk assigns the attributes and then saves the record.
      # @param [Hash] attribute_hash A hash of attribute names (keys) and
      #   attribute values to assign to this record.
      # @return (see #save)
      def update_attributes attribute_hash
        bulk_assign(attribute_hash)
        save
      end

      # Bulk assigns the attributes and then saves the record.  Raises
      # an exception (AWS::Record::InvalidRecordError) if the record is not 
      # valid.
      # @param (see #update_attributes)
      # @return [true]
      def update_attributes! attribute_hash
        if update_attributes(attribute_hash)
          true
        else
          raise InvalidRecordError.new(self)
        end
      end
  
      # Deletes the record.
      # @return (see #delete_item)
      def delete
        if persisted?
          if deleted?
            raise 'unable to delete, this object has already been deleted'
          else
            delete_item
          end
        else
          raise 'unable to delete, this object has not been saved yet'
        end
      end
  
      # @return [Boolean] Returns true if this instance object has been deleted.
      def deleted?
        persisted? ? !!@_deleted : false
      end

      class << self

        # @return [Hash<String,Attribute>] Returns a hash of all of the
        #   configured attributes for this class.
        def attributes
          @attributes ||= {}
        end

        # Allows you to override the default domain name for this class.  
        # The defualt domain name is the class name.
        # @param [String] The domain name that should be used for this class.
        def set_domain_name name
          @_domain_name = name
        end

        # Returns the domain name this record class persists data into.
        # The default domain name is the class name with the optional
        # domain_prefix).
        # @param [String] name Defaults to the name of this class.
        # @return [String] Returns the full prefixed domain name for this class.
        def domain_name name = nil
          "#{Record.domain_prefix}#{name || @_domain_name || self.to_s}"
        end

        # Creates the SimpleDB domain that is configured for this class.
        # @param [String] name Name of the domain to create.  Defaults to
        #   the name of this class.  The +name+ will be prefixed with
        #   domain_prefix if one is set.
        #
        # @return [AWS::SimpleDB::Domain]
        #
        def create_domain name = nil
          AWS::SimpleDB.new.domains.create(domain_name(name))
        end

        # @return [AWS::SimpleDB::Domain] Returns a reference to the domain
        #   this class will save data to.
        # @private
        def sdb_domain name = nil
          AWS::SimpleDB.new.domains[domain_name(name)]
        end

      end

      # If you define a custom setter, you use #[]= to set the value 
      # on the record.
      #
      #   class Book < AWS::Record::Base
      #
      #     string_attr :name
      #
      #     # replace the default #author= method
      #     def author= name
      #       self['author'] = name.blank? ? 'Anonymous' : name
      #     end
      #
      #   end
      #
      # @param [String,Symbol] The attribute name to set a value for
      # @param attribute_value The value to assign.
      protected
      def []= attribute_name, new_value
        self.class.attribute_for(attribute_name) do |attribute|

          if_tracking_changes do 
            original_value = type_cast(attribute, attribute_was(attribute.name))
            incoming_value = type_cast(attribute, new_value)
            if original_value == incoming_value
              clear_change!(attribute.name)
            else
              attribute_will_change!(attribute.name)
            end
          end

          @_data[attribute.name] = new_value

        end
      end
  
      # Returns the typecasted value for the named attribute.
      #
      #   book = Book.new(:title => 'My Book')
      #   book['title'] #=> 'My Book'
      #   book.title    #=> 'My Book'
      #
      # === Intended Use
      #
      # This method's primary use is for getting/setting the value for
      # an attribute inside a custom method:
      #
      #   class Book < AWS::Record::Base
      #
      #     string_attr :title
      #
      #     def title
      #       self['title'] ? self['title'].upcase : nil
      #     end
      #
      #   end
      #
      #   book = Book.new(:title => 'My Book')
      #   book.title    #=> 'MY BOOK'
      #
      # @param [String,Symbol] attribute_name The name of the attribute to fetch
      #   a value for.
      # @return The current type-casted value for the named attribute.
      protected
      def [] attribute_name
        self.class.attribute_for(attribute_name) do |attribute|
          type_cast(attribute, @_data[attribute.name])
        end
      end
  
      # @return [SimpleDB::Item] Returns a reference to the item as stored in 
      #   simple db.
      # @private
      private
      def sdb_item
        if respond_to?(:sdb_domain)
          AWS::SimpleDB.new.domains[sdb_domain].items[id]
        else
          self.class.sdb_domain.items[id]
        end
      end

      # @private
      private
      def assign_default_values
        # populate default attribute values
        ignore_changes do
          self.class.attributes.values.each do |attribute|
            begin
              # copy default values down so methods like #gsub! don't 
              # modify the default values for other objects
              @_data[attribute.name] = attribute.default_value.clone
            rescue TypeError
              @_data[attribute.name] = attribute.default_value
            end
          end
        end
      end
  
      # @return [true]
      # @private
      private
      def delete_item
        options = {}
        add_optimistic_lock_expectation(options)
        sdb_item.delete(options)
        @_deleted = true
      end
  
      # @private
      private
      def bulk_assign hash
        hash.each_pair do |attribute_name, attribute_value|
          __send__("#{attribute_name}=", attribute_value)
        end
      end
  
      # @private
      # @todo need to do something about partial hyrdation of attributes
      private
      def hydrate id, data
        @_id = id
  
        # New objects are populated with default values, but we don't
        # want these values to hang around when hydrating persisted values
        # (those values may have been blanked out before save).
        self.class.attributes.values.each do |attribute|
          @_data[attribute.name] = nil 
        end
  
        ignore_changes do
          bulk_assign(deserialize_item_data(data))
        end
  
        @_persisted = true
  
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
      private
      def create
  
        populate_id
        touch_timestamps('created_at', 'updated_at')
        increment_optimistic_lock_value

        to_add = serialize_attributes
  
        add_optimistic_lock_expectation(to_add)
        sdb_item.attributes.add(to_add)
  
        @_persisted = true
  
      end
  
      # @private
      private
      def update
  
        return unless changed?
  
        touch_timestamps('updated_at')
        increment_optimistic_lock_value
  
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
  
        add_optimistic_lock_expectation(to_update)
  
        if to_delete.empty?
          sdb_item.attributes.replace(to_update)
        else
          sdb_item.attributes.replace(to_update.merge('_delete_' => to_delete))
          sdb_item.attributes.delete(to_delete + ['_delete_'])
        end
  
      end

      # @private
      private
      def serialize_attributes

        hash = {}
        self.class.attributes.each_pair do |attribute_name,attribute|
          values = serialize(attribute, @_data[attribute_name])
          unless values.empty?
            hash[attribute_name] = values
          end
        end

        # simple db does not support persisting items without attribute values
        raise EmptyRecordError.new(self) if hash.empty?

        hash

      end
  
      # @private
      private
      def increment_optimistic_lock_value
        if_locks_optimistically do |lock_attr_name|
          if value = self[lock_attr_name]
            self[lock_attr_name] += 1
          else
            self[lock_attr_name] = 1
          end
        end
      end
  
      # @private
      private
      def add_optimistic_lock_expectation options
        if_locks_optimistically do |lock_attr_name|
          was = attribute_was(lock_attr_name)
          if was
            options[:if] = { lock_attr_name => was.to_s }
          else
            options[:unless] = lock_attr_name
          end
        end
      end
  
      private
      def if_locks_optimistically &block
        if opt_lock_attr = self.class.optimistic_locking_attr
          yield(opt_lock_attr.name)
        end
      end
  
      # @private
      private
      def populate_id
        @_id = UUIDTools::UUID.random_create.to_s
      end
  
      # @private
      private
      def touch_timestamps *attributes
        time = Time.now
        attributes.each do |attr_name|
          if self.class.attributes[attr_name] and !attribute_changed?(attr_name)
            __send__("#{attr_name}=", time)
          end
        end
      end

      # @private
      private
      def type_cast attribute, raw
        if attribute.set?
          values = Record.as_array(raw).inject([]) do |values,value|
            values << attribute.type_cast(value)
            values
          end
          Set.new(values.compact)
        else
          attribute.type_cast(raw)
        end
      end

      # @private
      private
      def serialize attribute, raw
        type_casted = type_cast(attribute, raw)
        Record.as_array(type_casted).inject([]) do |values, value|
          values << attribute.serialize(value)
          values
        end
      end

      # @private
      private
      def self.attribute_for attribute_name, &block
        unless attributes[attribute_name.to_s]
          raise UndefinedAttributeError.new(attribute_name.to_s)
        end
        yield(attributes[attribute_name.to_s])
      end

    end

  end
end
