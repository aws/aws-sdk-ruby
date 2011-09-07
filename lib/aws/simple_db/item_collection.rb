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

require 'aws/model'
require 'aws/simple_db/item'
require 'aws/simple_db/item_data'
require 'aws/simple_db/consistent_read_option'

# for 1.8.6
require 'enumerator'

module AWS
  class SimpleDB

    # Represents a collection of items in a SimpleDB domain.
    class ItemCollection

      include Model
      include Enumerable
      include ConsistentReadOption

      # @private
      attr_reader :conditions

      # @private
      attr_reader :sort_instructions

      # @param [Domain] domain The domain that you want an item collection for.
      # @return [ItemCollection]
      def initialize domain, options = {}
        @domain = domain
        @conditions = []
        @conditions += options[:conditions] if options[:conditions]
        @sort_instructions = options[:sort_instructions] if options[:sort_instructions]
        @not_null_attribute = options[:not_null_attribute]
        @limit = options[:limit] if options[:limit]
        super
      end

      # @return [Domain] The domain the items belong to.
      attr_reader :domain

      # Creates a new item in SimpleDB with the given attributes: 
      #
      #   domain.items.create('shirt', {
      #     'colors' => ['red', 'blue'],  
      #     'category' => 'clearance'})
      #
      # @overload create(item_name, attribute_hash)
      # @param [String] item_name The name of the item as you want it stored
      #   in SimpleDB.
      # @param [Hash] attribute_hash A hash of attribute names and values 
      #   you want to store in SimpleDB.
      # @return [Item] Returns a reference to the object that was created.
      def create item_name, *args
        item = self[item_name]
        item.attributes.replace(*args)
        item
      end

      # Retuns an item with the given name.
      #
      # @note This does not make a request to SimpleDB.
      #
      # You can ask for any item.  The named item may or may not actually
      # exist in SimpleDB.
      #
      # @example Get an item by symbol or string name
      #
      #   item = domain.items[:itemname]
      #   item = domain.items['itemname']
      #
      # @param [String, Symbol] item_name name of the item to get.
      # @return [Item] Returns an item with the given name.
      def [] item_name
        Item.new(domain, item_name.to_s)
      end

      # Yields to the block once for each item in the domain.
      #
      # @example using each to fetch every item in the domain.
      #
      #   domain.items.each do |item|
      #     puts item.name
      #   end
      #
      # @yield [item] Yields once for every item in the {#domain}.
      # @yieldparam [Item] item
      # @param options (see #select)
      # @option options (see #select)
      # @option options [Symbol or Array] :select Causes this method
      #   to behave like {#select} and yield {ItemData} instead of
      #   {Item} instances.
      # @option options :batch_size Specifies a maximum number of records
      #   to fetch from SimpleDB in a single request.  SimpleDB may return
      #   fewer items than :batch_size per request, but never more.
      # @return [nil]
      def each options = {}, &block

        return if handle_query_options(:each, options, &block)

        if attributes = options.delete(:select)
          return select(attributes, options, &block)
        end

        perform_select(options) do |response|
          response.items.each do |item|
            yield(self[item.name])
          end
        end

      end

      # Retrieves data from each item in the domain.
      #
      #   domain.items.select('size', 'color')
      #
      # You may optionally filter by a set of conditions.  For example, 
      # to retrieve the attributes of each of the top 100 items in order of
      # descending popularity as an array of hashes, you could do:
      #
      #  items.order(:popularity, :desc).limit(100).select do |data|
      #    puts data.to_yaml
      #  end
      #
      # You can select specific attributes; for example, to get
      # all the unique colors in the collection you could do:
      #
      #  colors = Set.new
      #  items.select(:color) {|data| colors += data.attributes["color"] }
      #
      # Finally, you can specify conditions, sort instructions, and
      # a limit in the same method call:
      #
      #  items.select(:color,
      #               :where => "rating > 4",
      #               :order => [:popularity, :desc],
      #               :limit => 100) do |data|
      #    puts "Data for #{data.name}: #{data.attributes.inspect}"
      #  end
      #
      # @overload select(*attribute_names, options = {}) &block
      #   @param *attributes [Symbol, String, or Array]
      #     The attributes to retrieve.  This can be:
      #
      #     * +:all+ to retrieve all attributes (the default).
      #     * a Symbol or String to retrieve a single attribute.
      #     * an array of Symbols or Strings to retrieve multiple attributes.
      #
      #     For single attributes or arrays of attributes, the
      #     attribute name may contain any characters that are valid
      #     in a SimpleDB attribute name; this method will handle
      #     escaping them for inclusion in the query.  Note that you
      #     cannot use this method to select the number of items; use
      #     {#count} instead.
      #
      #   @param [Hash] options Options for querying the domain.
      #   @option options [Boolean] :consistent_read (false) Causes this
      #     method to yield the most current data in the domain.
      #   @option options :where Restricts the item collection using
      #     {#where} before querying.
      #   @option options :order Changes the order in which the items
      #     will be yielded (see {#order}).
      #   @option options :limit [Integer] The maximum number of
      #     items to fetch from SimpleDB.  More than one request may be
      #     required to satisfy the limit.
      #   @option options :batch_size Specifies a maximum number of records
      #     to fetch from SimpleDB in a single request.  SimpleDB may return
      #     fewer items than :batch_size per request, but never more.
      #   @return If no block is given, an enumerator is returned. If a block
      #     was passed then nil is returned.
      def select *attributes, &block
        
        options = attributes.last.is_a?(Hash) ? attributes.pop : {}

        args = attributes + [options]

        unless block_given?
          return Enumerator.new(self, :select, *args)
        end

        return if handle_query_options(:select, *args, &block)
  
        if attributes.empty?
          output_list = '*'
        #elsif attributes == ['*']
        #  output_list = '*'
        else
          output_list = [attributes].flatten.collect do |attr|
            coerce_attribute(attr)
          end.join(', ')
        end

        perform_select(options.merge(:output_list => output_list)) do |response|
          response.items.each do |item|
            yield(ItemData.new(:domain => domain, :response_object => item))
          end
        end

        nil

      end

      # Counts the items in the collection.
      #
      #   domain.items.count
      #
      # You can use this method to get the total number of items in
      # the domain, or you can use it with {#where} to count a subset
      # of items.  For example, to count the items where the "color"
      # attribute is "red":
      #
      #   domain.items.where("color" => "red").count
      #
      # You can also limit the number of items searched using the
      # {#limit} method.  For example, to count the number of items up
      # to 500:
      #
      #   domain.items.limit(500).count
      #
      # @param [Hash] options Options for counting items.
      #
      # @option options [Boolean] :consistent_read (false) Causes this
      #   method to yield the most current data in the domain.
      # @option options :where Restricts the item collection using
      #   {#where} before querying.
      # @option options :limit [Integer] The maximum number of
      #   items to fetch from SimpleDB.  More than one request may be
      #   required to satisfy the limit.
      def count options = {}, &block
        return if handle_query_options(:count, options, &block)

        options = options.merge(:output_list => "count(*)")

        count = 0
        next_token = nil

        while limit.nil? || count < limit and
            response = select_request(options, next_token)

          if domain_item = response.items.first and
              count_attribute = domain_item.attributes.first
            count += count_attribute.value.to_i
          end

          next_token = response.next_token
          break unless next_token

        end

        count
      end
      alias_method :size, :count

      # Identifies quoted regions in the string, giving access to
      # the regions before and after each quoted region, for example:
      #  "? ? `foo?``bar?` ? 'foo?' ?".scan(OUTSIDE_QUOTES_REGEX)
      #  # => [["? ? ", "`foo?``bar?`", " ? "], ["", "'foo?'", " ?"]]
      OUTSIDE_QUOTES_REGEX = Regexp.compile('([^\'"`]*)(`(?:[^`]*(?:``))*[^`]*`|'+
                                            '\'(?:[^\']*(?:\'\'))*[^\']*\'|'+
                                            '"(?:[^"]*(?:""))*[^"]*")([^\'`"]*)')

      # Returns an item collection defined by the given conditions
      # in addition to any conditions defined on this collection.
      # For example:
      #
      #  items = domain.items.where(:color => 'blue').
      #    where('engine_type is not null')
      #
      #  # does SELECT itemName() FROM `mydomain`
      #  #      WHERE color = "blue" AND engine_type is not null
      #  items.each { |i| ... }
      #
      # == Hash Conditions
      #
      # When +conditions+ is a hash, each entry produces a condition
      # on the attribute named in the hash key.  For example:
      #
      #  # produces "WHERE `foo` = 'bar'"
      #  domain.items.where(:foo => 'bar')
      #
      # You can pass an array value to use an "IN" operator instead
      # of "=":
      #
      #  # produces "WHERE `foo` IN ('bar', 'baz')"
      #  domain.items.where(:foo => ['bar', 'baz'])
      #
      # You can also pass a range value to use a "BETWEEN" operator:
      #
      #  # produces "WHERE `foo` BETWEEN 'bar' AND 'baz'
      #  domain.items.where(:foo => 'bar'..'baz')
      #
      #  # produces "WHERE (`foo` >= 'bar' AND `foo` < 'baz')"
      #  domain.items.where(:foo => 'bar'...'baz')
      #
      # == Placeholders
      #
      # If +conditions+ is a string and "?" appears outside of any
      # quoted part of the expression, +placeholers+ is expected to
      # contain a value for each of the "?" characters in the
      # expression.  For example:
      #
      #  # produces "WHERE foo like 'fred''s % value'"
      #  domain.items.where("foo like ?", "fred's % value")
      #
      # Array values are surrounded with parentheses when they are
      # substituted for a placeholder:
      #
      #  # produces "WHERE foo in ('1', '2')"
      #  domain.items.where("foo in ?", [1, 2])
      #
      # Note that no substitutions are made within a quoted region
      # of the query:
      #
      #  # produces "WHERE `foo?` = 'red'"
      #  domain.items.where("`foo?` = ?", "red")
      #
      #  # produces "WHERE foo = 'fuzz?' AND bar = 'zap'"
      #  domain.items.where("foo = 'fuzz?' AND bar = ?", "zap")
      #
      # Also note that no attempt is made to correct for syntax:
      #
      #  # produces "WHERE 'foo' = 'bar'", which is invalid
      #  domain.items.where("? = 'bar'", "foo")
      #
      # @return [ItemCollection] Returns a new item collection with the
      #   additional conditions.
      def where(conditions, *substitutions)
        case conditions
        when String
          conditions = [replace_placeholders(conditions, *substitutions)]
        when Hash
          conditions = conditions.map do |name, value|
            name = coerce_attribute(name)
            case value
            when Array
              "#{name} IN " + coerce_substitution(value)
            when Range
              if value.exclude_end?
                "(#{name} >= #{coerce_substitution(value.begin)} AND " +
                  "#{name} < #{coerce_substitution(value.end)})"
              else
                "#{name} BETWEEN #{coerce_substitution(value.begin)} AND " +
                  coerce_substitution(value.end)
              end
            else
              "#{name} = " + coerce_substitution(value)
            end
          end
        end

        collection_with(:conditions => self.conditions + conditions)
      end

      # Changes the order in which results are returned or yielded.
      # For example, to get item names in descending order of
      # popularity, you can do:
      #
      #  domain.items.order(:popularity, :desc).map(&:name)
      #
      # @param attribute [String or Symbol] The attribute name to
      #   order by.
      # @param order [String or Symbol] The desired order, which may be:
      #   * +asc+ or +ascending+ (the default)
      #   * +desc+ or +descending+
      # @return [ItemCollection] Returns a new item collection with the
      #   given ordering logic.
      def order(attribute, order = nil)
        sort = coerce_attribute(attribute)
        sort += " DESC" if order.to_s =~ /^desc(ending)?$/
        sort += " ASC" if order.to_s =~ /^asc(ending)?$/
        collection_with(:sort_instructions => sort,
                        :not_null_attribute => attribute.to_s)
      end

      # Limits the number of items that are returned or yielded.
      # For example, to get the 100 most popular item names:
      #
      #  domain.items.
      #    order(:popularity, :desc).
      #    limit(100).
      #    map(&:name)
      #
      # @overload limit
      #   @return [Integer] Returns the current limit for the collection.
      # @overload limit(value)
      #   @return [ItemCollection] Returns a collection with the given limit.
      def limit(*args)
        return @limit if args.empty?
        collection_with(:limit => Integer(args.first))
      end

      # turns e.g. each(:where => 'foo', ...) into where('foo').each(...)
      # @private
      protected
      def handle_query_options(method, *args, &block)
        options = args.pop if args.last.kind_of?(Hash)
        if query_option = (options.keys & [:where, :order, :limit]).first
          option_args = options[query_option]
          option_args = [option_args] unless option_args.kind_of?(Array)
          options.delete(query_option)
          send(query_option, *option_args).
            send(method, *(args + [options]), &block)
          true
        else
          false
        end
      end

      # @private
      protected
      def perform_select(options = {})

        next_token = options[:next_token]
        batch_size = options[:batch_size] ? Integer(options[:batch_size]) : nil
        total = 0
        
        begin

          # if the user provided a batch size we need to rewrite the
          # select expression's LIMIT clause.  
          if batch_size
            max = limit ? [limit - total, batch_size].min : batch_size
          else
            max = nil
          end

          response = select_request(options, next_token, max)

          yield(response)

          next_token = response.next_token

          total += response.items.size

        end while next_token && (limit.nil? || total < limit)
      end

      protected
      def select_request(options, next_token = nil, limit = nil)
        opts = {}
        opts[:select_expression] = select_expression(options[:output_list])
        opts[:consistent_read] = consistent_read(options)
        opts[:next_token] = next_token if next_token

        if limit
          unless opts[:select_expression].gsub!(/LIMIT \d+/, "LIMIT #{limit}")
            opts[:select_expression] << " LIMIT #{limit}"
          end
        end

        client.select(opts)
      end

      # @private
      protected
      def select_expression(output_list = nil)
        output_list ||= "itemName()"
        "SELECT #{output_list} FROM `#{domain.name}`" +
          where_clause + order_by_clause + limit_clause
      end

      # @private
      protected
      def limit_clause
        if limit
          " LIMIT #{limit}"
        else
          ""
        end
      end

      # @private
      protected
      def where_clause
        all_conditions = conditions.dup
        if @not_null_attribute
          all_conditions << coerce_attribute(@not_null_attribute) + " IS NOT NULL"
        end
        if all_conditions.empty?
          ""
        else
          " WHERE " + all_conditions.join(" AND ")
        end
      end

      # @private
      protected
      def order_by_clause
        if sort_instructions
          " ORDER BY " + sort_instructions
        else
          ""
        end
      end

      # @private
      protected
      def collection_with(opts)
        ItemCollection.new(domain, { 
          :limit => limit,
          :conditions => conditions,
          :sort_instructions => sort_instructions }.merge(opts))
      end

      # @private
      protected
      def replace_placeholders(str, *substitutions)
        named = {}
        named = substitutions.pop if substitutions.last.kind_of?(Hash)
        if str =~ /['"`]/
          count = 0
          str = str.scan(OUTSIDE_QUOTES_REGEX).
            map do |(before, quoted, after)|

            (before, after) = [before, after].map do |s|
              s, count =
                replace_placeholders_outside_quotes(s, count, substitutions, named)
              s
            end
            [before, quoted, after].join
          end.join
        else
          # no quotes
          str, count =
            replace_placeholders_outside_quotes(str, 0, substitutions, named)
        end
        raise ArgumentError.new("extra value(s): #{substitutions.inspect}") unless
          substitutions.empty?
        str
      end

      # @private
      protected
      def replace_placeholders_outside_quotes(str, count, substitutions, named = {})
        str, count = replace_positional_placeders(str, count, substitutions)
        str = replace_named_placeholders(str, named)
        [str, count]
      end

      # @private
      protected
      def replace_positional_placeders(str, count, substitutions)
        str = str.gsub("?") do |placeholder|
          count += 1
          raise ArgumentError.new("missing value for placeholder #{count}") if
            substitutions.empty?
          coerce_substitution(substitutions.shift)
        end
        [str, count]
      end

      # @private
      protected
      def replace_named_placeholders(str, named)
        named.each do |name, value|
          str = str.gsub(name.to_sym.inspect, coerce_substitution(value))
        end
        str.scan(/:\S+/) do |missing|
          raise ArgumentError.new("missing value for placeholder #{missing}")
        end
        str
      end

      # @private
      protected
      def coerce_substitution(subst)
        if subst.kind_of?(Array)
          "(" +
            subst.flatten.map { |s| coerce_substitution(s) }.join(", ") + ")"
        else
          "'" + subst.to_s.gsub("'", "''") + "'"
        end
      end

      # @private
      protected
      def coerce_attribute(name)
        '`' + name.to_s.gsub('`', '``') + '`'
      end

    end
  end
end
