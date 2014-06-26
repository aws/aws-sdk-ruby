module Aws
  module Resource

    # A resource batch provides array like access to a list of resources.
    # Additionally, it provides the ability to invoke operations against
    # the entire batch.
    #
    #     # S3 object batch
    #     batch.size #=> 1000
    #
    #     # you can enumerate a batch
    #     batch.each do |obj|
    #       puts obj.key
    #     end
    #
    #     # you can invoke operations on the batch, this would delete
    #     # all 1k S3 objects in one API call.
    #     batch.delete
    #
    # ## Getting Batch objects
    #
    # You should normally never need to construct a batch.  They are returned
    # by resource methods where you might normally expect an array.  For
    # example, accessing {AWS::Resources::EC2::Instance#security_groups}
    # returns a batch of security group resource objects.
    #
    #     security_groups = ec2.instance('i-12345678').security_groups
    #
    #     security_groups.size
    #     #=> 2
    #
    # Some resource operations return *many* resources via a collection.
    # This happens when the number of resources is unknown and possibly
    # large. Fetching all of the resources might require many API calls.
    #
    #     s3.bucket('aws-sdk').
    #
    # If the resource operation returns a collection, you can access 
    # * Array-like access to a list of resource objects.
    # * The ability to invoke operations on the 
    #
    # * array-like access to a list of resource objects
    # * the 
    # a list of resources.
    #
    #     objects = s3.bucket('aws-sdk').objects(prefix: 'tmp/')
    #     objects.delete
    #
    # A batch object is an Enumerable object that provides array like
    # access to each resource in the batch.  A batch has a fixed size
    # and is initialized with an array of resource objects.
    #
    #     batch = Aws::Resources::S3::Object::Batch.new([obj1, obj2])
    #
    # ## Getting Batch objects
    #
    # You should never need to construct a batch object directly. Instead
    # all resource operations that return some or many resource objects
    # will return a batch or a collection that can yield batches.
    #
    #     ec2 = Aws::Resources::EC2.new
    #
    #     # instances is a collection of instances, with an unknown size
    #     instances = ec2.instances
    #
    #     instances.batches.each do |batch|
    #     end
    #
    #     objects =
    #
    # ## Batch Classes
    #
    # Every resource class has an associated Batch class.
    #
    #     Aws::Resources::S3::Object
    #     Aws::Resources::S3::Object::Batch
    #
    # Currently, not all resource types have
    #
    # ## Batch Operations
    #
    # Many resource classes have operations that can be invoked on more
    # than one of that resource type. These batch operations are exposed
    # on that resource's batch class.
    #
    #   # Deletes all objects from the 'aws-sdk' bucket that
    #   # have the key prefix of 'tmp/' - this is done in batches
    #   # of 1k objects
    #   tmp_objects.delete
    #
    #
    # list of resources
    # A batch is
    # returned from every resource method that would normally return an
    # array.
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
