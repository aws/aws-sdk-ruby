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
  
module AWS
  module Record

    # The primary interface for finding records with AWS::Record.
    #
    # == Getting a Scope Object
    #
    # You should normally never need to construct a Scope object directly.
    # Scope objects are returned from the AWS::Record::Base finder methods
    # (e.g. +find+ +all+, +where+, +order+, +limit+, etc).
    #
    #   books = Book.where(:author => 'John Doe')
    #   books.class #=> AWS::Record::Scope, not Array
    #
    # Scopes are also returned from methods defined with the +scope+ method.
    #
    # == Delayed Execution
    #
    # Scope objects represent a select expression, but do not actually
    # cause a request to be made until enumerated.
    #
    #   # no request made yet
    #   books = Book.where(:author => 'John Doe')
    #
    #   # a request is made now
    #   books.each {|book| ... }
    #
    # You can refine a scope object by calling other scope methods on
    # it.
    #
    #   # refine the previous books Scope, no request
    #   top_10 = books.order(:popularity, :desc).limit(10)
    #
    #   # another request is made now
    #   top_10.first
    #
    class Scope
  
      include Enumerable
      
      # @param [Record::Base] base_class A class that extends 
      #   {AWS::Record::Base}.  
      # @param [Hash] options
      # @option options :
      # @private
      def initialize base_class, options = {}
        @base_class = base_class
        @options = options
      end
  
      # @return [Class] Returns the AWS::Record::Base extending class that
      #   this scope will find records for.
      attr_reader :base_class

      # @param [String] domain
      # @return [Scope] Returns a scope for restricting the domain of subsequent
      #   scope operations
      def domain name
        _with(:domain => name)
      end
  
      # @overload find(id)
      #   Finds and returns a single record by id.  If no record is found
      #   with the given +id+, then a RecordNotFound error will be raised.
      #   @param [String] id ID of the record to find.
      #   @return [Record::Base] Returns the record.
      #   
      # @overload find(:first, options = {})
      #   Returns the first record found.  If no records were matched then
      #   nil will be returned (raises no exceptions).
      #   @param [Symbol] mode (:first)
      #   @return [Object,nil] Returns the first record or nil if no
      #     records matched the conditions.
      #
      # @overload find(:all, options = {})
      #   Returns an enumerable Scope object that represents all matching
      #   records.  No request is made to AWS until the scope is enumerated.
      #
      #     Book.find(:all, :limit => 100).each do |book|
      #       # ...
      #     end
      #
      #   @param [Symbol] mode (:all)
      #   @return [Scope] Returns an enumerable scope object.
      #
      def find id_or_mode, options = {}

        scope = _handle_options(options)

        case
        when id_or_mode == :all   then scope
        when id_or_mode == :first then scope.limit(1).first
        else
          base_class.find_by_id(id_or_mode, :domain => scope._domain)
        end
  
      end

      # @return [Integer] Returns the number of records that match the
      #   current scoped finder.
      def count options = {}
        if scope = _handle_options(options) and scope != self
          scope.count
        else
          _item_collection.count
        end
      end
      alias_method :size, :count

      # Applies conditions to the scope that limit which records are returned.
      # Only those matching all given conditions will be returned.
      #
      # @overload where(conditions_hash)
      #   Specify a hash of conditions to query with.  Multiple conditions
      #   are joined together with AND.
      #
      #     Book.where(:author => 'John Doe', :softcover => true)
      #     # where `author` = `John Doe` AND `softcover` = `1`
      #
      #   @param [Hash] conditions
      #
      # @overload where(conditions_string, *values)
      #   A sql-like query fragment with optional placeholders and values.
      #   Placeholders are replaced with properly quoted values.
      #
      #     Book.where('author = ?', 'John Doe')
      #
      #   @param [String] conditions_string A sql-like where string with
      #     question mark placeholders.  For each placeholder there should
      #     be a value that will be quoted into that position.
      #   @param [String] *values A value that should be quoted into the
      #     corresponding (by position) placeholder.
      #
      # @return [Scope] Returns a new scope with the passed conditions applied.
      def where *conditions
        if conditions.empty?
          raise ArgumentError, 'missing required condition'
        end
        _with(:where => Record.as_array(@options[:where]) + [conditions])
      end
  
      # Specifies how to sort records returned.  
      #
      #   # enumerate books, starting with the most recently published ones
      #   Book.order(:published_at, :desc).each do |book|
      #     # ...
      #   end
      #
      # Only one order may be applied.  If order is specified more than
      # once the last one in the chain takes precedence:
      #
      #    
      #   # books returned by this scope will be ordered by :published_at
      #   # and not :author.
      #   Book.where(:read => false).order(:author).order(:published_at)
      #
      # @param [String,Symbol] attribute_name The attribute to sort by.
      # @param [:asc, :desc] order (:asc) The direct to sort.
      def order attribute_name, order = :asc
        _with(:order => [attribute_name, order])
      end
  
      # Limits the maximum number of total records to return when finding
      # or counting.  Returns a scope, does not make a request.
      #
      #   books = Book.limit(100)
      #
      # @param [Integer] limit The maximum number of records to return.
      # @return [Scope] Returns a new scope that has the applied limit.
      def limit limit
        _with(:limit => limit)
      end
  
      # Yields once for each record matching the request made by this scope.
      #
      #   books = Book.where(:author => 'me').order(:price, :asc).limit(10)
      #
      #   books.each do |book|
      #     puts book.attributes.to_yaml
      #   end
      #
      # @yieldparam [Object] record 
      def each &block
        if block_given?
          _each_object(&block)
        else
          Enumerator.new(self, :"_each_object")
        end
      end

      protected
      def _domain
        @options[:domain] 
      end
  
      # @private
      private
      def _each_object &block

        items = _item_collection

        items.select.each do |item_data|
          obj = base_class.new
          obj.send(:hydrate, item_data.name, item_data.attributes)
          yield(obj)
        end

      end
  
      # @private
      private
      def _with options
        Scope.new(base_class, @options.merge(options))
      end
  
      # @private
      private
      def method_missing scope_name, *args
        # @todo only proxy named scope methods
        _merge_scope(base_class.send(scope_name, *args))
      end
  
      # Merges another scope with this scope.  Conditions are added together
      # and the limit and order parts replace those in this scope (if set).
      # @param [Scope] scope A scope to merge with this one.
      # @return [Scope] Returns a new scope with merged conditions and 
      #   overriden order and limit.
      # @private
      private
      def _merge_scope scope
        merged = self
        scope.instance_variable_get('@options').each_pair do |opt_name,opt_value|
          unless [nil, []].include?(opt_value)
            if opt_name == :where
              opt_value.each do |condition| 
                merged = merged.where(*condition) 
              end
            else
              merged = merged.send(opt_name, *opt_value)
            end
          end
        end
        merged
      end

      # Consumes a hash of options (e.g. +:where+, +:order+ and +:limit+) and
      # builds them onto the current scope, returning a new one.
      # @param [Hash] options
      # @option options :where
      # @option options :order
      # @option options [Integer] :limit
      # @return [Scope] Returns a new scope with the hash of scope 
      #   options applied.
      # @private
      private
      def _handle_options options
        scope = self
        options.each_pair do |method, args|
          if method == :where and args.is_a?(Hash)
            # splatting a hash turns it into an array, bad juju
            scope = scope.send(method, args)
          else
            scope = scope.send(method, *args)
          end
        end
        scope
      end

      # Converts this scope object into an AWS::SimpleDB::ItemCollection
      # @return [SimpleDB::ItemCollection]
      # @private
      private
      def _item_collection
        items = base_class.sdb_domain(_domain).items
        items = items.order(*@options[:order]) if @options[:order]
        items = items.limit(*@options[:limit]) if @options[:limit]
        Record.as_array(@options[:where]).each do |where_condition|
          items = items.where(*where_condition)
        end
        items
      end

    end
  end
end
