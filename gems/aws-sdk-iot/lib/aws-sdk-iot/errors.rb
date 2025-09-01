# frozen_string_literal: true

# This is generated code!

module Aws::IoT
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::IoT::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::IoT::Errors::ServiceError
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
  # * {CertificateConflictException}
  # * {CertificateStateException}
  # * {CertificateValidationException}
  # * {ConflictException}
  # * {ConflictingResourceUpdateException}
  # * {DeleteConflictException}
  # * {IndexNotReadyException}
  # * {InternalException}
  # * {InternalFailureException}
  # * {InternalServerException}
  # * {InvalidAggregationException}
  # * {InvalidQueryException}
  # * {InvalidRequestException}
  # * {InvalidResponseException}
  # * {InvalidStateTransitionException}
  # * {LimitExceededException}
  # * {MalformedPolicyException}
  # * {NotConfiguredException}
  # * {RegistrationCodeValidationException}
  # * {ResourceAlreadyExistsException}
  # * {ResourceNotFoundException}
  # * {ResourceRegistrationFailureException}
  # * {ServiceQuotaExceededException}
  # * {ServiceUnavailableException}
  # * {SqlParseException}
  # * {TaskAlreadyExistsException}
  # * {ThrottlingException}
  # * {TransferAlreadyCompletedException}
  # * {TransferConflictException}
  # * {UnauthorizedException}
  # * {ValidationException}
  # * {VersionConflictException}
  # * {VersionsLimitExceededException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Unable to verify the CA certificate used to sign the device certificate you are
    #          attempting to register. This is happens when you have registered more than one CA
    #          certificate that has the same subject field and public key.</p>
    class CertificateConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::CertificateConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The certificate operation is not allowed.</p>
    class CertificateStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::CertificateStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The certificate is invalid.</p>
    class CertificateValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::CertificateValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Additional information about the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request conflicts with the current state of the resource.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>A resource with the same name already exists.</p>
      def resource_id
        @data[:resource_id]
      end
    end

    # <p>A conflicting resource update exception. This exception is thrown when two pending
    #          updates cause a conflict.</p>
    class ConflictingResourceUpdateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::ConflictingResourceUpdateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>You can't delete the resource because it is attached to one or more
    #          resources.</p>
    class DeleteConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::DeleteConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The index is not ready.</p>
    class IndexNotReadyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::IndexNotReadyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>An unexpected error has occurred.</p>
    class InternalException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::InternalException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>An unexpected error has occurred.</p>
    class InternalFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::InternalFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>Internal error from the service that indicates an unexpected error or that the service
    #             is unavailable.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The aggregation is invalid.</p>
    class InvalidAggregationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::InvalidAggregationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The query is invalid.</p>
    class InvalidQueryException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::InvalidQueryException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request is not valid.</p>
    class InvalidRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::InvalidRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The response is invalid.</p>
    class InvalidResponseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::InvalidResponseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>An attempt was made to change to an invalid state, for example by deleting a job or a
    #          job execution which is "IN_PROGRESS" without setting the <code>force</code>
    #          parameter.</p>
    class InvalidStateTransitionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::InvalidStateTransitionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A limit has been exceeded.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The policy documentation is not valid.</p>
    class MalformedPolicyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::MalformedPolicyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The resource is not configured.</p>
    class NotConfiguredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::NotConfiguredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The registration code is invalid.</p>
    class RegistrationCodeValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::RegistrationCodeValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Additional information about the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The resource already exists.</p>
    class ResourceAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::ResourceAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end

      # <p>The ID of the resource that caused the exception.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The ARN of the resource that caused the exception.</p>
      def resource_arn
        @data[:resource_arn]
      end
    end

    # <p>The specified resource does not exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The resource registration failed.</p>
    class ResourceRegistrationFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::ResourceRegistrationFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>Service quota has been exceeded.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The service is temporarily unavailable.</p>
    class ServiceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::ServiceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The Rule-SQL expression can't be parsed correctly.</p>
    class SqlParseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::SqlParseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #             This exception occurs if you attempt to start a task with the same task-id as an existing task but with a different clientRequestToken.
    #         </p>
    class TaskAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::TaskAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The rate exceeds the limit.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>You can't revert the certificate transfer because the transfer is already
    #          complete.</p>
    class TransferAlreadyCompletedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::TransferAlreadyCompletedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>You can't transfer the certificate because authorization policies are still
    #          attached.</p>
    class TransferConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::TransferConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>You are not authorized to perform this operation.</p>
    class UnauthorizedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::UnauthorizedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request is not valid.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An exception thrown when the version of an entity specified with the
    #             <code>expectedVersion</code> parameter does not match the latest version in the
    #          system.</p>
    class VersionConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::VersionConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The number of policy versions exceeds the limit.</p>
    class VersionsLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoT::Types::VersionsLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message for the exception.</p>
      def message
        @data[:message]
      end
    end
  end
end
