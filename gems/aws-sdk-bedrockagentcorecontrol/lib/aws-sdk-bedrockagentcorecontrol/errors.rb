# frozen_string_literal: true

# This is generated code!

module Aws::BedrockAgentCoreControl
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::BedrockAgentCoreControl::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::BedrockAgentCoreControl::Errors::ServiceError
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
  # * {ConcurrentModificationException}
  # * {ConflictException}
  # * {DecryptionFailure}
  # * {EncryptionFailure}
  # * {InternalServerException}
  # * {ResourceLimitExceededException}
  # * {ResourceNotFoundException}
  # * {RetryableConflictException}
  # * {ServiceException}
  # * {ServiceQuotaExceededException}
  # * {SubscriptionRequiredException}
  # * {ThrottledException}
  # * {ThrottlingException}
  # * {UnauthorizedException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>This exception is thrown when a request is denied per access permissions</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BedrockAgentCoreControl::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Exception thrown when a resource is modified concurrently by multiple requests.</p>
    class ConcurrentModificationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BedrockAgentCoreControl::Types::ConcurrentModificationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when there is a conflict performing an operation</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BedrockAgentCoreControl::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Exception thrown when decryption of a secret fails.</p>
    class DecryptionFailure < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BedrockAgentCoreControl::Types::DecryptionFailure] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Exception thrown when encryption of a secret fails.</p>
    class EncryptionFailure < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BedrockAgentCoreControl::Types::EncryptionFailure] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown if there was an unexpected error during processing of request</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BedrockAgentCoreControl::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Exception thrown when a resource limit is exceeded.</p>
    class ResourceLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BedrockAgentCoreControl::Types::ResourceLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when a resource referenced by the operation does not exist</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BedrockAgentCoreControl::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because of a conflicting request. Retry the request.</p>
    class RetryableConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BedrockAgentCoreControl::Types::RetryableConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def retryable?
        true
      end
    end

    # <p>An internal error occurred.</p>
    class ServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BedrockAgentCoreControl::Types::ServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def retryable?
        true
      end
    end

    # <p>This exception is thrown when a request is made beyond the service quota</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BedrockAgentCoreControl::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request failed because it requires an active Amazon Web Services Marketplace subscription that is not present. Subscribe to the required product in Amazon Web Services Marketplace and try again.</p>
    class SubscriptionRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BedrockAgentCoreControl::Types::SubscriptionRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # URL to the Marketplace listing for subscription
      def subscription_url
        @data[:subscription_url]
      end

      # The product requiring subscription
      def product_name
        @data[:product_name]
      end
    end

    # <p>API rate limit has been exceeded.</p>
    class ThrottledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BedrockAgentCoreControl::Types::ThrottledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def retryable?
        true
      end
    end

    # <p>This exception is thrown when the number of requests exceeds the limit</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BedrockAgentCoreControl::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the JWT bearer token is invalid or not found for OAuth bearer token based access</p>
    class UnauthorizedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BedrockAgentCoreControl::Types::UnauthorizedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The input fails to satisfy the constraints specified by the service.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BedrockAgentCoreControl::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def reason
        @data[:reason]
      end

      def field_list
        @data[:field_list]
      end
    end
  end
end
