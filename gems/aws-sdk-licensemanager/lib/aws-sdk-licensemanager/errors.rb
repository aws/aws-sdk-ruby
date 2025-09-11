# frozen_string_literal: true

# This is generated code!

module Aws::LicenseManager
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::LicenseManager::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::LicenseManager::Errors::ServiceError
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
  # * {AuthorizationException}
  # * {ConflictException}
  # * {EntitlementNotAllowedException}
  # * {FailedDependencyException}
  # * {FilterLimitExceededException}
  # * {InvalidParameterValueException}
  # * {InvalidResourceStateException}
  # * {LicenseUsageException}
  # * {NoEntitlementsAllowedException}
  # * {RateLimitExceededException}
  # * {RedirectException}
  # * {ResourceLimitExceededException}
  # * {ResourceNotFoundException}
  # * {ServerInternalException}
  # * {UnsupportedDigitalSignatureMethodException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Access to resource denied.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LicenseManager::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The Amazon Web Services user account does not have permission to perform the action. Check the IAM
    #          policy associated with this account.</p>
    class AuthorizationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LicenseManager::Types::AuthorizationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>There was a conflict processing the request. Try your request again.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LicenseManager::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The entitlement is not allowed.</p>
    class EntitlementNotAllowedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LicenseManager::Types::EntitlementNotAllowedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A dependency required to run the API is missing.</p>
    class FailedDependencyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LicenseManager::Types::FailedDependencyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def error_code
        @data[:error_code]
      end
    end

    # <p>The request uses too many filters or too many filter values.</p>
    class FilterLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LicenseManager::Types::FilterLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more parameter values are not valid.</p>
    class InvalidParameterValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LicenseManager::Types::InvalidParameterValueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>License Manager cannot allocate a license to a resource because of its state. </p>
    #          <p>For example, you cannot allocate a license to an instance in the process of shutting
    #          down.</p>
    class InvalidResourceStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LicenseManager::Types::InvalidResourceStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You do not have enough licenses available to support a new resource launch.</p>
    class LicenseUsageException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LicenseManager::Types::LicenseUsageException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>There are no entitlements found for this license, or the entitlement maximum count is reached.</p>
    class NoEntitlementsAllowedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LicenseManager::Types::NoEntitlementsAllowedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Too many requests have been submitted. Try again after a brief wait.</p>
    class RateLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LicenseManager::Types::RateLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This is not the correct Region for the resource. Try again.</p>
    class RedirectException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LicenseManager::Types::RedirectException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def location
        @data[:location]
      end

      def message
        @data[:message]
      end
    end

    # <p>Your resource limits have been exceeded.</p>
    class ResourceLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LicenseManager::Types::ResourceLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource cannot be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LicenseManager::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The server experienced an internal error. Try again.</p>
    class ServerInternalException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LicenseManager::Types::ServerInternalException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The digital signature method is unsupported. Try your request again.</p>
    class UnsupportedDigitalSignatureMethodException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LicenseManager::Types::UnsupportedDigitalSignatureMethodException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The provided input is not valid. Try your request again.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LicenseManager::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
