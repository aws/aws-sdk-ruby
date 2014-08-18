module Aws
  module Resource

    # A batch provides array like access to a list of resources. Batches
    # also provide the ability to invoke certain operations against
    # the entire batch.
    #
    # ## Getting a Batch
    #
    # You should normally not need to construct a batch. Anywhere a list
    # of resources is returned, they are returned as a batch:
    #
    #     # security_groups is a batch
    #     security_groups = ec2.instance('i-12345678').security_groups
    #
    # When the possible number of resources is unknown or large, the
    # resources will be returned in a collection. Collections can enumerate
    # individual resources or batches. They manage paging over the
    # AWS request/responses to produce batches.
    #
    #     # objects is a collection
    #     objects = s3.bucket('aws-sdk').objects
    #
    # You can invoke batch operations against collections and they will
    # invoke them on each batch.
    #
    #     # delets all all objects in this bucket in batches of 1k
    #     objects = s3.bucket('aws-sdk').objects
    #     objects.delete
    #
    # ## Batch Operations
    #
    # Batches provide operations that operate on the entire batch. These
    # operations are only defined for resources where the AWS API accepts
    # multiple inputs. This means a batch operation for n elements will
    # only make one request.
    #
    # Resource classes document each of their own batch operations.
    # See {S3::Object} for an example.
    #
    class Batch

      include Enumerable

      # @param [Array<Resource>] resources
      # @option options [Seahorse::Client::Response] :response
      def initialize(resources, options = {})
        @resources = resources
        @options = options
      end

      # @return [Seahorse::Client::Response, nil]
      def response
        @options[:response]
      end

      # @return [Integer]
      def size
        @resources.size
      end

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
      # @return [Resource, Batch]
      def first(count = nil)
        if count
          self.class.new(@resources.first(count), @options)
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
        "#<#{self.class.name} resources=#{@resources}>"
      end

      private

      def call_operation(operation, params)
        unless empty?
          operation.call(
            resources: @resources,
            client: @resources.first.client,
            params: params)
        end
      end

      class << self

        def operation(name)
          @operations[name.to_sym] or
            raise Errors::UnknownOperationError.new(name)
        end

        # @return [Enumerable<Symbol,Operation>]
        def operations(&block)
          @operations.each(&block)
        end

        # @return [Array<Symbol>]
        def operation_names
          @operations.keys
        end

        # @param [Symbol] name
        # @param [Operations::BatchOperation] operation
        def add_operation(name, operation)
          @operations[name.to_sym] = operation
          define_method(name) do |params={}|
            call_operation(operation, params)
          end
        end

        # @api private
        def inherited(subclass)
          subclass.send(:instance_variable_set, "@operations", {})
        end

      end
    end
  end
end
