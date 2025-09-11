# frozen_string_literal: true

# This is generated code!

module Aws::Snowball
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Snowball::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Snowball::Errors::ServiceError
  #       # rescues all API errors
  #     end
  #
  # ## Request Context
  #
  # ServiceError objects have a {Smithy::Client::ServiceError#context #context} method
  # that returns information about the request that generated the error.
  # See {Smithy::Client::HandlerContext} for more information.
  #
  # ## Error Classes
  #
  # * {ClusterLimitExceededException}
  # * {ConflictException}
  # * {Ec2RequestFailedException}
  # * {InvalidAddressException}
  # * {InvalidInputCombinationException}
  # * {InvalidJobStateException}
  # * {InvalidNextTokenException}
  # * {InvalidResourceException}
  # * {KMSRequestFailedException}
  # * {ReturnShippingLabelAlreadyExistsException}
  # * {UnsupportedAddressException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Job creation failed. Currently, clusters support five nodes. If you have fewer than
    #       five nodes for your cluster and you have more nodes to create for this cluster, try again and
    #       create jobs until your cluster has exactly five nodes.</p>
    class ClusterLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Snowball::Types::ClusterLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You get this exception when you call <code>CreateReturnShippingLabel</code> more than once
    #       when other requests are not completed.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Snowball::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>You get this resource when you call <code>CreateReturnShippingLabel</code> more than once when other requests are not completed. .</p>
      def conflict_resource
        @data[:conflict_resource]
      end

      def message
        @data[:message]
      end
    end

    # <p>Your user lacks the necessary Amazon EC2 permissions to perform the attempted
    #       action.</p>
    class Ec2RequestFailedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Snowball::Types::Ec2RequestFailedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The address provided was invalid. Check the address with your region's carrier, and try
    #       again.</p>
    class InvalidAddressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Snowball::Types::InvalidAddressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Job or cluster creation failed. One or more inputs were invalid. Confirm that the <a>CreateClusterRequest$SnowballType</a> value supports your <a>CreateJobRequest$JobType</a>, and try again.</p>
    class InvalidInputCombinationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Snowball::Types::InvalidInputCombinationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The action can't be performed because the job's current state doesn't allow that action
    #       to be performed.</p>
    class InvalidJobStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Snowball::Types::InvalidJobStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The <code>NextToken</code> string was altered unexpectedly, and the operation has
    #       stopped. Run the operation without changing the <code>NextToken</code> string, and try
    #       again.</p>
    class InvalidNextTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Snowball::Types::InvalidNextTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource can't be found. Check the information you provided in your last
    #       request, and try again.</p>
    class InvalidResourceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Snowball::Types::InvalidResourceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The provided resource value is invalid.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The provided Key Management Service key lacks the permissions to perform the specified
    #         <a>CreateJob</a> or <a>UpdateJob</a> action.</p>
    class KMSRequestFailedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Snowball::Types::KMSRequestFailedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You get this exception if you call <code>CreateReturnShippingLabel</code> and a valid
    #       return shipping label already exists. In this case, use
    #         <code>DescribeReturnShippingLabel</code> to get the URL.</p>
    class ReturnShippingLabelAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Snowball::Types::ReturnShippingLabelAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The address is either outside the serviceable area for your region, or an error
    #       occurred. Check the address with your region's carrier and try again. If the issue persists,
    #       contact Amazon Web Services Support.</p>
    class UnsupportedAddressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Snowball::Types::UnsupportedAddressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
