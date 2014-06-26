module Aws
  module Resource
    class Collection

      include Enumerable

      # @param [EnumerateResourceOperation] operation
      # @option (see EnumerateResourceOperation#call)
      # @api private
      def initialize(operation, options)
        @operation = operation
        @options = options
      end

      # @return [Enumerator<Resource::Base>]
      def each(&block)
        enum = enum_for(:each_resource)
        enum.each(&block) if block_given?
        enum
      end

      # @return [Enumerator<Batch>]
      def batches(&block)
        @operation.batches(@options)
      end

      # Specifies the maximum number of items to enumerate.
      #
      #   collection.limit(10).each do |resource|
      #     # yields at most 10 times
      #   end
      #
      # @param [Integer] limit The maximum number of items to yield
      #   via {#each} or {#batches}.
      # @return [Collection]
      def limit(limit)
        self.class.new(@operation, @options.merge(limit: limit))
      end

      # @api private
      def respond_to?(method_name, *args)
        if resource_class.instance_methods.include?(method_name.to_sym)
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

      private

      def each_resource(&block)
        batches.each do |batch|
          batch.each(&block)
        end
      end

      def resource_class
        @operation.builder.resource_class
      end

    end
  end
end
