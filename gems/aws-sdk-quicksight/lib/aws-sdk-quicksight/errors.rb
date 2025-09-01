# frozen_string_literal: true

# This is generated code!

module Aws::QuickSight
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::QuickSight::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::QuickSight::Errors::ServiceError
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
  # * {AccessDeniedException}
  # * {ConcurrentUpdatingException}
  # * {ConflictException}
  # * {CustomerManagedKeyUnavailableException}
  # * {DomainNotWhitelistedException}
  # * {IdentityTypeNotSupportedException}
  # * {InternalFailureException}
  # * {InternalServerException}
  # * {InvalidNextTokenException}
  # * {InvalidParameterValueException}
  # * {InvalidRequestException}
  # * {LimitExceededException}
  # * {PreconditionNotMetException}
  # * {QuickSightUserNotFoundException}
  # * {ResourceExistsException}
  # * {ResourceNotFoundException}
  # * {ResourceUnavailableException}
  # * {SessionLifetimeInMinutesInvalidException}
  # * {ThrottlingException}
  # * {UnsupportedPricingPlanException}
  # * {UnsupportedUserEditionException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You don't have access to this item. The provided credentials couldn't be
    # 			validated. You might not be authorized to carry out the request. Make sure that your
    # 			account is authorized to use the Amazon QuickSight service, that your policies have the
    # 			correct permissions, and that you are using the correct credentials.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The Amazon Web Services request ID for this request.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>A resource is already in a state that indicates an operation is happening that must complete
    # 			before a new update can be applied.</p>
    class ConcurrentUpdatingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::ConcurrentUpdatingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>Updating or deleting a resource can cause an inconsistent state.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The Amazon Web Services request ID for this request.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>The customer managed key that is registered to your Amazon QuickSight account is unavailable.</p>
    class CustomerManagedKeyUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::CustomerManagedKeyUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The Amazon Web Services request ID for this operation.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>The domain specified isn't on the allow list. All domains for embedded dashboards must be
    # 			added to the approved list by an Amazon QuickSight admin.</p>
    class DomainNotWhitelistedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::DomainNotWhitelistedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The Amazon Web Services request ID for this request.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>The identity type specified isn't supported. Supported identity types include
    # 				<code>IAM</code> and <code>QUICKSIGHT</code>.</p>
    class IdentityTypeNotSupportedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::IdentityTypeNotSupportedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The Amazon Web Services request ID for this request.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>An internal failure occurred.</p>
    class InternalFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::InternalFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The Amazon Web Services request ID for this request.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>An internal service exception.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The <code>NextToken</code> value isn't valid.</p>
    class InvalidNextTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::InvalidNextTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The Amazon Web Services request ID for this request.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>One or more parameters has a value that isn't valid.</p>
    class InvalidParameterValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::InvalidParameterValueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The Amazon Web Services request ID for this request.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>You don't have this feature activated for your account. To fix this issue, contact Amazon Web Services support.</p>
    class InvalidRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::InvalidRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The Amazon Web Services request ID for this request.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>A limit is exceeded.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>Limit exceeded.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The Amazon Web Services request ID for this request.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>One or more preconditions aren't met.</p>
    class PreconditionNotMetException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::PreconditionNotMetException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The Amazon Web Services request ID for this request.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>The user with the provided name isn't found. This error can happen in any operation
    # 			that requires finding a user based on a provided user name, such as
    # 				<code>DeleteUser</code>, <code>DescribeUser</code>, and so on.</p>
    class QuickSightUserNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::QuickSightUserNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The Amazon Web Services request ID for this request.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>The resource specified already exists. </p>
    class ResourceExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::ResourceExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The resource type for this request.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The Amazon Web Services request ID for this request.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>One or more resources can't be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The resource type for this request.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The Amazon Web Services request ID for this request.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>This resource is currently unavailable.</p>
    class ResourceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::ResourceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The resource type for this request.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The Amazon Web Services request ID for this request.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>The number of minutes specified for the lifetime of a session isn't valid. The session
    # 			lifetime must be 15-600 minutes.</p>
    class SessionLifetimeInMinutesInvalidException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::SessionLifetimeInMinutesInvalidException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The Amazon Web Services request ID for this request.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>Access is throttled.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The Amazon Web Services request ID for this request.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>This error indicates that you are calling an embedding operation in Amazon QuickSight
    # 			without the required pricing plan on your Amazon Web Services account. Before you can use embedding 
    # 			for anonymous users, a QuickSight administrator needs to add capacity pricing to Amazon QuickSight. You 
    # 		    can do this on the <b>Manage Amazon QuickSight</b> page. </p>
    #          <p>After capacity pricing is added, you can use the 
    #             <code>
    #                <a href="https://docs.aws.amazon.com/quicksight/latest/APIReference/API_GetDashboardEmbedUrl.html">GetDashboardEmbedUrl</a>
    #             </code> API operation with the 
    #             <code>--identity-type ANONYMOUS</code> option.</p>
    class UnsupportedPricingPlanException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::UnsupportedPricingPlanException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The Amazon Web Services request ID for this request.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>This error indicates that you are calling an operation on an Amazon QuickSight
    # 			subscription where the edition doesn't include support for that operation. Amazon
    # 			Amazon QuickSight currently has Standard Edition and Enterprise Edition. Not every operation and
    # 			capability is available in every edition.</p>
    class UnsupportedUserEditionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QuickSight::Types::UnsupportedUserEditionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The Amazon Web Services request ID for this request.</p>
      def request_id
        @data[:request_id]
      end
    end
  end
end
