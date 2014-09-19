module Aws
  module Resources
    class Collection

      include Enumerable

      # @param [EnumerateResourceOperation] operation
      # @option (see EnumerateResourceOperation#call)
      # @api private
      def initialize(operation, options)
        @operation = operation
        @options = options
        reject_limit_param(options)
      end

      # @return [Enumerator<Resource>]
      def each(&block)
        if block_given?
          batches.each { |batch| batch.each(&block) }
        else
          self
        end
      end

      # @return [Enumerator<Batch>]
      def batches(&block)
        @operation.batches(@options)
      end

      # Specifies the maximum number of items to enumerate.
      #
      #     collection.limit(10).each do |resource|
      #       # yields at most 10 times
      #     end
      #
      # @param [Integer] limit The maximum number of items to yield
      #   via {#each} or {#batches}.
      # @return [Collection]
      def limit(limit)
        self.class.new(@operation, @options.merge(limit: limit))
      end

      # Specifies max size of each batch. Some services may return fewer
      # than `size` number of items per request.
      #
      # @example Enumerate the collection in batches with a max size
      #
      #   collection.batch_size(10).batches.each do |batch|
      #     # batch has at most 10 items
      #   end
      #
      # @param [Integer] size
      # @return [Collection]
      def batch_size(size)
        if limit_key
          self.class.new(@operation, @options.merge(batch_size: size))
        else
          resource = resource_class.name
          method_name = @operation.request.method_name
          msg = "batch size not supported by #{resource}##{method_name}"
          raise NotImplementedError, msg
        end
      end

      # Returns the first resource from the collection.
      #
      #     resource = collection.first
      #
      # If you pass a count, then the first `count` resources are returned in
      # a single batch. See the resource specific batch documentation for
      # a list of supported batch methods.
      #
      #     resources = collection.first(10)
      #     resources.delete
      #
      # @return [Resource, Batch]
      def first(count = 1)
        if count == 1
          limit(1).to_a.first
        else
          resource_class::Batch.new(limit(count).to_a)
        end
      end

      # @api private
      def respond_to?(method_name, *args)
        if resource_class::Batch.instance_methods.include?(method_name.to_sym)
          true
        else
          super
        end
      end

      # @api private
      def method_missing(method_name, *args, &block)
        if respond_to?(method_name)
          batches.each do |batch|
            batch.send(method_name, *args, &block)
          end
        else
          super
        end
      end

      # @api private
      def inspect
        parts = {}
        parts[:type] = resource_class.name
        parts[:limit] = @options[:limit]
        parts[:batch_size] = @options[:batch_size] if limit_key
        parts[:params] = @options[:params] || {}
        parts = parts.inject("") {|s,(k,v)| s << " #{k}=#{v.inspect}" }
        ['#<', self.class.name, parts, '>'].join
      end

      private

      # @api private
      def limit_key
        @operation.limit_key
      end

      def reject_limit_param(options)
        if options[:params] && options[:params][limit_key]
          msg = "invalid option :#{limit_key}, call #limit or #batch_size "
          msg << "on the returned Aws::Resource::Collection instead"
          raise ArgumentError, msg
        end
      end

      def resource_class
        @operation.builder.resource_class
      end

    end
  end
end
