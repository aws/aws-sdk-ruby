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

require 'aws/simple_db'
require 'aws/record/scope'

module AWS
  module Record
    module FinderMethods
  
      # @param [String] id The id of the record to load.
      # @raise [RecordNotFound] Raises a record not found exception if there
      #   was no data found for the given id.
      # @return [Record::Base] Returns the record, as a sub-class of 
      #   Record::Base
      def [] id

        data = sdb_domain.items[id].data.attributes

        raise RecordNotFound, "no data found for id: #{id}" if data.empty?

        obj = self.new
        obj.send(:hydrate, id, data)
        obj

      end

      # Finds records in SimpleDB and returns them as objects of the 
      # current class.
      #
      # Finding +:all+ returns an enumerable scope object
      #
      #  People.find(:all, :order => [:age, :desc], :limit => 10).each do |person|
      #    puts person.name
      #  end
      #
      # Finding +:first+ returns a single record (or nil)
      #
      #  boss = People.find(:first, :where => { :boss => true })
      #
      # Find accepts a hash of find modifiers (+:where+, +:order+ and
      # +:limit+).  You can also choose to omit these modifiers and
      # chain them on the scope object returned.  In the following
      # example only one request is made to SimpleDB (when #each is
      # called)
      #
      #   people = People.find(:all)
      #
      #   johns = people.where(:name => 'John Doe')
      #
      #   johns.order(:age, :desc).limit(10).each do |suspects|
      #     # ...
      #   end
      #
      # See also {#where}, {#order} and {#limit} for more
      # information and options.
      #
      # @overload find(id)
      #   @param id The record to find, raises an exception if the record is
      #     not found.
      #
      # @overload find(mode, options = {})
      #   @param [:all,:first] mode (:all) When finding +:all+ matching records
      #     and array is returned of records.  When finding +:first+ then
      #     +nil+ or a single record will be returned.
      #   @param [Hash] options
      #   @option options [Mixed] :where Conditions that determine what
      #     records are returned.
      #   @option options [String,Array] :sort The order records should be 
      #     returned in.
      #   @option options [Integer] :limit The max number of records to fetch.
      def find *args
        _new_scope.find(*args)
      end

      # Equivalent to +find(:all)+
      def all(options = {})
        find(:all, options)
      end

      # Counts records in SimpleDB.
      #
      # With no arguments, counts all records:
      #
      #   People.count
      #
      # Accepts query options to count a subset of records:
      #
      #   People.count(:where => { :boss => true })
      #
      # You can also count records on a scope object:
      #
      #   People.find(:all).where(:boss => true).count
      #
      # See {#find} and {Scope#count} for more details.
      #
      # @param [Hash] options (<code>{}</code>) Options for counting
      #   records.
      #
      # @option options [Mixed] :where Conditions that determine what
      #   records are counted.
      # @option options [Integer] :limit The max number of records to count.
      def count(options = {})
        find(:all).count(options)
      end
      alias_method :size, :count

      # @return [Object,nil] Returns the first record found for the current
      #   class.  If there are no records in the current classes domain, then
      #   nil is returned.
      def first options = {}
        _new_scope.find(:first, options)
      end

      # Limits which records are retried from SimpleDB when performing a find.
      #   
      # Simple string condition
      #
      #   Car.where('color = "red" or color = "blue"').each {|car| ... }
      #   
      # String with placeholders for quoting params
      #
      #   Car.where('color = ?', 'red')
      #
      #   Car.where('color = ? OR style = ?', 'red', 'compact')
      #
      #   # produces a condition using in, like: WHERE color IN ('red', 'blue')
      #   Car.where('color = ?', ['red','blue'])
      # 
      # Hash arguments
      #
      #   # WHERE age = '40' AND gender = 'male'
      #   People.where(:age => 40, :gender => 'male').each {|person| ... }
      #
      # Chaining where with other scope modifiers
      #
      #   # 10 most expensive red cars
      #   Car.where(:color => 'red').order(:price, :desc).limit(10)
      #   
      # @overload where(conditions_hash)
      # @overload where(sql_fragment[, quote_params, ...])
      #
      # @param [Hash] conditions_hash A hash of attributes to values.  Each 
      #   key/value pair from the hash becomes a find condition.  All conditions
      #   are joined by AND.
      def where *args
        _new_scope.where(*args)
      end

      # Defines the order in which records are returned when performing a find.
      # SimpleDB only allows sorting by one attribute per request.
      #
      #   # oldest to youngest
      #   People.order(:age, :desc).each {|person| ... }
      #
      # You can chain order with the other scope modifiers:
      #
      #   Pepole.order(:age, :desc).limit(10).each {|person| ... }
      #
      # @overload order(attribute, direction = :asc)
      # @param [String,Symbol] attribute The attribute in SimpleDB to sort by.
      # @param [:asc,:desc] direction (:asc) The direction to sort, ascending
      #   or descending order.
      def order *args
        _new_scope.order(*args)
      end

      # The maximum number of records to return.  By default, all records
      # matching the where conditions will be returned from a find.
      # 
      #   People.limit(10).each {|person| ... }
      #
      # Limit can be chained with other scope modifiers:
      #
      #   People.where(:age => 40).limit(10).each {|person| ... }
      #
      def limit limit
        _new_scope.limit(limit)
      end

      # @private
      def _new_scope
        Scope.new(self)
      end
      private :_new_scope

      # A configuration method to override the default domain name.
      # @param [String] The domain name that should be used for this class.
      def set_domain_name name
        @_domain_name = name
      end

      # @return [String] Returns the full prefixed domain name for this class.
      # 
      def domain_name
        @_domain_name ||= self.to_s
        "#{Record.domain_prefix}#{@_domain_name}"
      end

      # @return [AWS::SimpleDB::Domain] A reference to the domain
      #   this class will save data to.
      def sdb_domain
        AWS::SimpleDB.new.domains[domain_name]
      end

      # Creates the SimpleDB domain that is configured for this class.
      def create_domain
        AWS::SimpleDB.new.domains.create(domain_name)
      end

      # @return [Hash] A hash of Attribute objects that represent the
      #   "columns" objects in this domain use.
      def attributes
        @attributes ||= {}
      end

      # @param [Symbol] name The name of the scope.  Scope names should be
      #   method-safe and should not conflict with any of the class 
      #   methods of {Record::Base} or {Record::Scope}.
      #
      # Adding a scope using built-in scope modifiers:
      #
      #   scope :top_10, order(:rating, :desc).limit(10)
      #
      def scope name, scope = nil, &block
        
        raise ArgumentError, "only a scope or block may be passed, not both" if
          scope and block_given?

        if scope
          method_definition = lambda { scope }
        else
          method_definition = block
        end

        extend(Module.new { define_method(name, &method_definition) })

      end

      def optimistic_locking attribute_name = :version_id
        attribute = integer_attr(attribute_name)
        @optimistic_locking_attr = attribute
      end

      # @private
      def optimistic_locking_attr
        @optimistic_locking_attr
      end

    end
  end
end
