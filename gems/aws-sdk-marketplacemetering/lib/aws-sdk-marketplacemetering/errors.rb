# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceMetering
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::MarketplaceMetering::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::MarketplaceMetering::Errors::ServiceError
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
  # * {CustomerNotEntitledException}
  # * {DisabledApiException}
  # * {DuplicateRequestException}
  # * {ExpiredTokenException}
  # * {InternalServiceErrorException}
  # * {InvalidCustomerIdentifierException}
  # * {InvalidEndpointRegionException}
  # * {InvalidProductCodeException}
  # * {InvalidPublicKeyVersionException}
  # * {InvalidRegionException}
  # * {InvalidTagException}
  # * {InvalidTokenException}
  # * {InvalidUsageAllocationsException}
  # * {InvalidUsageDimensionException}
  # * {PlatformNotSupportedException}
  # * {ThrottlingException}
  # * {TimestampOutOfBoundsException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Exception thrown when the customer does not have a valid subscription for the
    #             product.</p>
    class CustomerNotEntitledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceMetering::Types::CustomerNotEntitledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The API is disabled in the Region.</p>
    class DisabledApiException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceMetering::Types::DisabledApiException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A metering record has already been emitted by the same EC2 instance, ECS task, or EKS
    #             pod for the given {<code>usageDimension</code>, <code>timestamp</code>} with a different
    #                 <code>usageQuantity</code>.</p>
    class DuplicateRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceMetering::Types::DuplicateRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The submitted registration token has expired. This can happen if the buyer's browser
    #             takes too long to redirect to your page, the buyer has resubmitted the registration
    #             token, or your application has held on to the registration token for too long. Your SaaS
    #             registration website should redeem this token as soon as it is submitted by the buyer's
    #             browser.</p>
    class ExpiredTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceMetering::Types::ExpiredTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>An internal error has occurred. Retry your request. If the problem persists, post a
    #             message with details on the Amazon Web Services forums.</p>
    class InternalServiceErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceMetering::Types::InternalServiceErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You have metered usage for a <code>CustomerIdentifier</code> that does not
    #             exist.</p>
    class InvalidCustomerIdentifierException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceMetering::Types::InvalidCustomerIdentifierException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The endpoint being called is in a Amazon Web Services Region different from your EC2 instance, ECS
    #             task, or EKS pod. The Region of the Metering Service endpoint and the Amazon Web Services Region of
    #             the resource must match.</p>
    class InvalidEndpointRegionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceMetering::Types::InvalidEndpointRegionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The product code passed does not match the product code used for publishing the
    #             product.</p>
    class InvalidProductCodeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceMetering::Types::InvalidProductCodeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Public Key version is invalid.</p>
    class InvalidPublicKeyVersionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceMetering::Types::InvalidPublicKeyVersionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>
    #             <code>RegisterUsage</code> must be called in the same Amazon Web Services Region the ECS task was
    #             launched in. This prevents a container from hardcoding a Region (e.g.
    #             withRegion(“us-east-1”) when calling <code>RegisterUsage</code>.</p>
    class InvalidRegionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceMetering::Types::InvalidRegionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The tag is invalid, or the number of tags is greater than 5.</p>
    class InvalidTagException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceMetering::Types::InvalidTagException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Registration token is invalid.</p>
    class InvalidTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceMetering::Types::InvalidTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Sum of allocated usage quantities is not equal to the usage quantity.</p>
    class InvalidUsageAllocationsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceMetering::Types::InvalidUsageAllocationsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The usage dimension does not match one of the <code>UsageDimensions</code> associated
    #             with products.</p>
    class InvalidUsageDimensionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceMetering::Types::InvalidUsageDimensionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Amazon Web Services Marketplace does not support metering usage from the underlying platform. Currently, Amazon ECS, Amazon EKS, and Fargate are supported.</p>
    class PlatformNotSupportedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceMetering::Types::PlatformNotSupportedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The calls to the API are throttled.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceMetering::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The <code>timestamp</code> value passed in the <code>UsageRecord</code> is out of
    #             allowed range.</p>
    #          <p>For <code>BatchMeterUsage</code>, if any of the records are outside of the allowed
    #             range, the entire batch is not processed. You must remove invalid records and try
    #             again.</p>
    class TimestampOutOfBoundsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceMetering::Types::TimestampOutOfBoundsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
