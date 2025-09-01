# frozen_string_literal: true

# This is generated code!

module Aws::CognitoIdentity
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::CognitoIdentity::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CognitoIdentity::Errors::ServiceError
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
  # * {ConcurrentModificationException}
  # * {DeveloperUserAlreadyRegisteredException}
  # * {ExternalServiceException}
  # * {InternalErrorException}
  # * {InvalidIdentityPoolConfigurationException}
  # * {InvalidParameterException}
  # * {LimitExceededException}
  # * {NotAuthorizedException}
  # * {ResourceConflictException}
  # * {ResourceNotFoundException}
  # * {TooManyRequestsException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Thrown if there are parallel requests to modify a resource.</p>
    class ConcurrentModificationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentity::Types::ConcurrentModificationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message returned by a ConcurrentModificationException.</p>
      def message
        @data[:message]
      end
    end

    # <p>The provided developer user identifier is already registered with Cognito under a
    #          different identity ID.</p>
    class DeveloperUserAlreadyRegisteredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentity::Types::DeveloperUserAlreadyRegisteredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>This developer user identifier is already registered with Cognito.</p>
      def message
        @data[:message]
      end
    end

    # <p>An exception thrown when a dependent service such as Facebook or Twitter is not
    #          responding</p>
    class ExternalServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentity::Types::ExternalServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message returned by an ExternalServiceException</p>
      def message
        @data[:message]
      end
    end

    # <p>Thrown when the service encounters an error during processing the request.</p>
    class InternalErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentity::Types::InternalErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message returned by an InternalErrorException.</p>
      def message
        @data[:message]
      end
    end

    # <p>If you provided authentication information in the request, the identity pool has no
    #          authenticated role configured, or STS returned an error response to the
    #          request to assume the authenticated role from the identity pool. If you provided no
    #          authentication information in the request, the identity pool has no unauthenticated role
    #          configured, or STS returned an error response to the request to assume the
    #          unauthenticated role from the identity pool.</p>
    #          <p>Your role trust policy must grant <code>AssumeRoleWithWebIdentity</code> permissions to <code>cognito-identity.amazonaws.com</code>.</p>
    class InvalidIdentityPoolConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentity::Types::InvalidIdentityPoolConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message returned for an <code>InvalidIdentityPoolConfigurationException</code>
      #          </p>
      def message
        @data[:message]
      end
    end

    # <p>Thrown for missing or bad input parameter(s).</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentity::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message returned by an InvalidParameterException.</p>
      def message
        @data[:message]
      end
    end

    # <p>Thrown when the total number of user pools has exceeded a preset limit.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentity::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message returned by a LimitExceededException.</p>
      def message
        @data[:message]
      end
    end

    # <p>Thrown when a user is not authorized to access the requested resource.</p>
    class NotAuthorizedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentity::Types::NotAuthorizedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message returned by a NotAuthorizedException</p>
      def message
        @data[:message]
      end
    end

    # <p>Thrown when a user tries to use a login which is already linked to another
    #          account.</p>
    class ResourceConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentity::Types::ResourceConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message returned by a ResourceConflictException.</p>
      def message
        @data[:message]
      end
    end

    # <p>Thrown when the requested resource (for example, a dataset or record) does not
    #          exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentity::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message returned by a ResourceNotFoundException.</p>
      def message
        @data[:message]
      end
    end

    # <p>Thrown when a request is throttled.</p>
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentity::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Message returned by a TooManyRequestsException</p>
      def message
        @data[:message]
      end
    end
  end
end
