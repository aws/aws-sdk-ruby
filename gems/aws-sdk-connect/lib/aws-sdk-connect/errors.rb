# frozen_string_literal: true

# This is generated code!

module Aws::Connect
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Connect::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Connect::Errors::ServiceError
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
  # * {ConditionalOperationFailedException}
  # * {ConflictException}
  # * {ContactFlowNotPublishedException}
  # * {ContactNotFoundException}
  # * {DestinationNotAllowedException}
  # * {DuplicateResourceException}
  # * {IdempotencyException}
  # * {InternalServiceException}
  # * {InvalidContactFlowException}
  # * {InvalidContactFlowModuleException}
  # * {InvalidParameterException}
  # * {InvalidRequestException}
  # * {LimitExceededException}
  # * {MaximumResultReturnedException}
  # * {OutboundContactNotPermittedException}
  # * {OutputTypeNotFoundException}
  # * {PropertyValidationException}
  # * {ResourceConflictException}
  # * {ResourceInUseException}
  # * {ResourceNotFoundException}
  # * {ResourceNotReadyException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {TooManyRequestsException}
  # * {UserNotFoundException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You do not have sufficient permissions to perform this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Request processing failed because dependent condition failed.</p>
    class ConditionalOperationFailedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::ConditionalOperationFailedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Operation cannot be performed at this time as there is a conflict with another operation or
    #    contact state.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The flow has not been published.</p>
    class ContactFlowNotPublishedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::ContactFlowNotPublishedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The contact with the specified ID is not active or does not exist. Applies to Voice calls
    #    only, not to Chat or Task contacts.</p>
    class ContactNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::ContactNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message.</p>
      def message
        @data[:message]
      end
    end

    # <p>Outbound calls to the destination number are not allowed.</p>
    class DestinationNotAllowedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::DestinationNotAllowedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message about the outbound calls.</p>
      def message
        @data[:message]
      end
    end

    # <p>A resource with the specified name already exists.</p>
    class DuplicateResourceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::DuplicateResourceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>An entity with the same name already exists.</p>
    class IdempotencyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::IdempotencyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Request processing failed because of an error or failure with the service.</p>
    class InternalServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::InternalServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The flow is not valid.</p>
    class InvalidContactFlowException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::InvalidContactFlowException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The problems with the flow. Please fix before trying again.</p>
      def problems
        @data[:problems]
      end
    end

    # <p>The problems with the module. Please fix before trying again.</p>
    class InvalidContactFlowModuleException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::InvalidContactFlowModuleException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def problems
        @data[:problems]
      end
    end

    # <p>One or more of the specified parameters are not valid.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message about the parameters.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request is not valid.</p>
    class InvalidRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::InvalidRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message about the request.</p>
      def message
        @data[:message]
      end

      def reason
        @data[:reason]
      end
    end

    # <p>The allowed limit for the resource has been exceeded.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message about the limit.</p>
      def message
        @data[:message]
      end
    end

    # <p>Maximum number (1000) of tags have been returned with current request. Consider changing
    #    request parameters to get more tags.</p>
    class MaximumResultReturnedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::MaximumResultReturnedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The contact is not permitted.</p>
    class OutboundContactNotPermittedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::OutboundContactNotPermittedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message about the contact.</p>
      def message
        @data[:message]
      end
    end

    # <p>Thrown for analyzed content when requested OutputType was not enabled for a given contact.
    #    For example, if an OutputType.Raw was requested for a contact that had `RedactedOnly` Redaction
    #    policy set in the flow.</p>
    class OutputTypeNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::OutputTypeNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The property is not valid.</p>
    class PropertyValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::PropertyValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def property_list
        @data[:property_list]
      end
    end

    # <p>A resource already has that name.</p>
    class ResourceConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::ResourceConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>That resource is already in use (for example, you're trying to add a record with the same
    #    name as an existing record). If you are trying to delete a resource (for example,
    #    DeleteHoursOfOperation or DeletePredefinedAttribute), remove its reference from related resources
    #    and then try again.</p>
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::ResourceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The type of resource.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The identifier for the resource.</p>
      def resource_id
        @data[:resource_id]
      end
    end

    # <p>The specified resource was not found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message about the resource.</p>
      def message
        @data[:message]
      end
    end

    # <p>The resource is not ready.</p>
    class ResourceNotReadyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::ResourceNotReadyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The service quota has been exceeded.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def reason
        @data[:reason]
      end
    end

    # <p>The throttling limit has been exceeded.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Displayed when rate-related API limits are exceeded.</p>
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>No user with the specified credentials was found in the Amazon Connect instance.</p>
    class UserNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Connect::Types::UserNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
