# frozen_string_literal: true

# This is generated code!

module Aws::MigrationHubRefactorSpaces
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::MigrationHubRefactorSpaces::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::MigrationHubRefactorSpaces::Errors::ServiceError
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
  # * {ConflictException}
  # * {InternalServerException}
  # * {InvalidResourcePolicyException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The user does not have sufficient access to perform this action. </p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MigrationHubRefactorSpaces::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Updating or deleting a resource can cause an inconsistent state.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MigrationHubRefactorSpaces::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource. </p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of resource. </p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>An unexpected error occurred while processing the request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MigrationHubRefactorSpaces::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource policy is not valid.</p>
    class InvalidResourcePolicyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MigrationHubRefactorSpaces::Types::InvalidResourcePolicyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request references a resource that does not exist. </p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MigrationHubRefactorSpaces::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource. </p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of resource. </p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request would cause a service quota to be exceeded. </p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MigrationHubRefactorSpaces::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource. </p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of resource. </p>
      def resource_type
        @data[:resource_type]
      end

      # <p>Service quota requirement to identify originating quota. Reached throttling quota
      #       exception. </p>
      def quota_code
        @data[:quota_code]
      end

      # <p>Service quota requirement to identify originating service. Reached throttling quota
      #       exception service code. </p>
      def service_code
        @data[:service_code]
      end
    end

    # <p>Request was denied because the request was throttled. </p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MigrationHubRefactorSpaces::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Service quota requirement to identify originating quota. Reached throttling quota
      #       exception. </p>
      def quota_code
        @data[:quota_code]
      end

      # <p>Service quota requirement to identify originating service. Reached throttling quota
      #       exception service code. </p>
      def service_code
        @data[:service_code]
      end

      # <p>The number of seconds to wait before retrying. </p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>The input does not satisfy the constraints specified by an Amazon Web Service.
    #     </p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MigrationHubRefactorSpaces::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
