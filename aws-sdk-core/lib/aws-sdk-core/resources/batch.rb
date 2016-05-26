module Aws
  module Resources

    # This class has been deprecated. Each {Resource} class now
    # has its own collection class that defines batch methods.
    # This is being left behind to provide a backwards compatability
    # shim for the old resource batch interface.
    # @api private
    class Batch

      include Enumerable

      # @param [Class<Resource>] resource_class
      # @param [Array<Resource>] resources
      # @option options [Seahorse::Client::Response] :response
      def initialize(resource_class, resources, options = {})
        @resource_class = resource_class
        @collection_class = resource_class.const_get(:Collection)
        @resources = resources
        @response = options[:response]
        @size = resources.size
        @options = options
      end

      # @return [Class<Resource>]
      attr_reader :resource_class

      # @return [Seahorse::Client::Response, nil]
      attr_reader :response

      # @return [Integer]
      attr_reader :size

      alias count size

      # @param [Integer] index
      # @return [Resource]
      def [](index)
        @resources[index]
      end

      # Yields each resource of the batch, one at a time.
      def each(&block)
        enum = @resources.to_enum
        enum.each(&block) if block_given?
        enum
      end

      # @param [Integer] count
      # @return [Resource, Batch<Resource>]
      def first(count = nil)
        if count
          Batch.new(@resource_class, @resources.first(count), @options)
        else
          @resources.first
        end
      end

      # @return [Boolean]
      def empty?
        @resources.empty?
      end

      # @api private
      def inspect
        "#<#{self.class.name} resources=#{@resources.inspect}>"
      end

      # @api private
      def respond_to?(method_name, *args)
        if @collection_class.method_defined?(method_name)
          true
        else
          super
        end
      end

      # @api private
      def method_missing(method_name, *args, &block)
        if respond_to?(method_name)
          collection = @collection_class.new([@resources], size: @size)
          collection.send(method_name, *args)
        else
          super
        end
      end

    end
  end
end
