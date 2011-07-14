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
    class Scope
  
      include Enumerable
  
      attr_reader :base_class
      
      def initialize base_class, options = {}
        @base_class = base_class
        @options = options
      end
  
      def find id_or_mode, options = {}

        scope = _handle_options(options)

        case
        when id_or_mode == :all   then scope
        when id_or_mode == :first then scope.limit(1).first
        when scope.send(:_empty?) then base_class[id_or_mode]
        else
          object = scope.where('itemName() = ?', id_or_mode).limit(1).first
          if object.nil?
            raise RecordNotFound, "no data found for id: #{id_or_mode}"
          end
          object
        end
  
      end

      def count(options = {})
        if scope = _handle_options(options) and
            scope != self
          scope.count
        else
          _item_collection.count
        end
      end
      alias_method :size, :count

      def where *conditions
        if conditions.empty?
          raise ArgumentError, 'missing required condition'
        end
        _with(:where => Record.as_array(@options[:where]) + [conditions])
      end
  
      def order attribute, order = :asc
        _with(:order => [attribute, order])
      end
  
      def limit limit
        _with(:limit => limit)
      end
  
      def each &block
        if block_given?
          _each_object(&block)
        else
          Enumerator.new(self, :"_each_object")
        end
      end
  
      # @private
      def _empty?
        @options == {}
      end
      private :_empty?
  
      # @private
      def _each_object &block

        items = _item_collection

        items.select.each do |item_data|
          obj = base_class.new
          obj.send(:hydrate, item_data.name, item_data.attributes)
          yield(obj)
        end

      end
      private :_each_object
  
      # @private
      def _with options
        Scope.new(base_class, @options.merge(options))
      end
      private :_with
  
      # @private
      def method_missing scope_name, *args
        # @todo only proxy named scope methods
        _merge_scope(base_class.send(scope_name, *args))
      end
      private :method_missing
  
      # @private
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
      private :_merge_scope

      # @private
      def _handle_options(options)
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
      private :_handle_options

      # @private
      def _item_collection
        items = base_class.sdb_domain.items
        items = items.order(*@options[:order]) if @options[:order]
        items = items.limit(*@options[:limit]) if @options[:limit]
        Record.as_array(@options[:where]).each do |where_condition|
          items = items.where(*where_condition)
        end
        items
      end
      private :_item_collection
    end
  end
end
