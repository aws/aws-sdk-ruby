# frozen_string_literal: true

# This is generated code!

module Aws::SSOOIDC
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::SSOOIDC::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SSOOIDC::Errors::ServiceError
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
  # * {AuthorizationPendingException}
  # * {ExpiredTokenException}
  # * {InternalServerException}
  # * {InvalidClientException}
  # * {InvalidClientMetadataException}
  # * {InvalidGrantException}
  # * {InvalidRedirectUriException}
  # * {InvalidRequestException}
  # * {InvalidRequestRegionException}
  # * {InvalidScopeException}
  # * {SlowDownException}
  # * {UnauthorizedClientException}
  # * {UnsupportedGrantTypeException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You do not have sufficient access to perform this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSOOIDC::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Single error code. For this exception the value will be <code>access_denied</code>.</p>
      def error
        @data[:error]
      end

      # <p>Human-readable text providing additional information, used to assist the client developer
      #       in understanding the error that occurred.</p>
      def error_description
        @data[:error_description]
      end
    end

    # <p>Indicates that a request to authorize a client with an access user session token is
    #       pending.</p>
    class AuthorizationPendingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSOOIDC::Types::AuthorizationPendingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Single error code. For this exception the value will be
      #       <code>authorization_pending</code>.</p>
      def error
        @data[:error]
      end

      # <p>Human-readable text providing additional information, used to assist the client developer
      #       in understanding the error that occurred.</p>
      def error_description
        @data[:error_description]
      end
    end

    # <p>Indicates that the token issued by the service is expired and is no longer valid.</p>
    class ExpiredTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSOOIDC::Types::ExpiredTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Single error code. For this exception the value will be <code>expired_token</code>.</p>
      def error
        @data[:error]
      end

      # <p>Human-readable text providing additional information, used to assist the client developer
      #       in understanding the error that occurred.</p>
      def error_description
        @data[:error_description]
      end
    end

    # <p>Indicates that an error from the service occurred while trying to process a
    #       request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSOOIDC::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Single error code. For this exception the value will be <code>server_error</code>.</p>
      def error
        @data[:error]
      end

      # <p>Human-readable text providing additional information, used to assist the client developer
      #       in understanding the error that occurred.</p>
      def error_description
        @data[:error_description]
      end
    end

    # <p>Indicates that the <code>clientId</code> or <code>clientSecret</code> in the request is
    #       invalid. For example, this can occur when a client sends an incorrect <code>clientId</code> or
    #       an expired <code>clientSecret</code>.</p>
    class InvalidClientException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSOOIDC::Types::InvalidClientException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Single error code. For this exception the value will be
      #       <code>invalid_client</code>.</p>
      def error
        @data[:error]
      end

      # <p>Human-readable text providing additional information, used to assist the client developer
      #       in understanding the error that occurred.</p>
      def error_description
        @data[:error_description]
      end
    end

    # <p>Indicates that the client information sent in the request during registration is
    #       invalid.</p>
    class InvalidClientMetadataException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSOOIDC::Types::InvalidClientMetadataException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Single error code. For this exception the value will be
      #         <code>invalid_client_metadata</code>.</p>
      def error
        @data[:error]
      end

      # <p>Human-readable text providing additional information, used to assist the client developer
      #       in understanding the error that occurred.</p>
      def error_description
        @data[:error_description]
      end
    end

    # <p>Indicates that a request contains an invalid grant. This can occur if a client makes a
    #         <a>CreateToken</a> request with an invalid grant type.</p>
    class InvalidGrantException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSOOIDC::Types::InvalidGrantException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Single error code. For this exception the value will be <code>invalid_grant</code>.</p>
      def error
        @data[:error]
      end

      # <p>Human-readable text providing additional information, used to assist the client developer
      #       in understanding the error that occurred.</p>
      def error_description
        @data[:error_description]
      end
    end

    # <p>Indicates that one or more redirect URI in the request is not supported for this
    #       operation.</p>
    class InvalidRedirectUriException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSOOIDC::Types::InvalidRedirectUriException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Single error code. For this exception the value will be
      #       <code>invalid_redirect_uri</code>.</p>
      def error
        @data[:error]
      end

      # <p>Human-readable text providing additional information, used to assist the client developer
      #       in understanding the error that occurred.</p>
      def error_description
        @data[:error_description]
      end
    end

    # <p>Indicates that something is wrong with the input to the request. For example, a required
    #       parameter might be missing or out of range.</p>
    class InvalidRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSOOIDC::Types::InvalidRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Single error code. For this exception the value will be
      #       <code>invalid_request</code>.</p>
      def error
        @data[:error]
      end

      # <p>Human-readable text providing additional information, used to assist the client developer
      #       in understanding the error that occurred.</p>
      def error_description
        @data[:error_description]
      end
    end

    # <p>Indicates that a token provided as input to the request was issued by and is only usable
    #       by calling IAM Identity Center endpoints in another region.</p>
    class InvalidRequestRegionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSOOIDC::Types::InvalidRequestRegionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Single error code. For this exception the value will be
      #       <code>invalid_request</code>.</p>
      def error
        @data[:error]
      end

      # <p>Human-readable text providing additional information, used to assist the client developer
      #       in understanding the error that occurred.</p>
      def error_description
        @data[:error_description]
      end

      # <p>Indicates the IAM Identity Center endpoint which the requester may call with this token.</p>
      def endpoint
        @data[:endpoint]
      end

      # <p>Indicates the region which the requester may call with this token.</p>
      def region
        @data[:region]
      end
    end

    # <p>Indicates that the scope provided in the request is invalid.</p>
    class InvalidScopeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSOOIDC::Types::InvalidScopeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Single error code. For this exception the value will be <code>invalid_scope</code>.</p>
      def error
        @data[:error]
      end

      # <p>Human-readable text providing additional information, used to assist the client developer
      #       in understanding the error that occurred.</p>
      def error_description
        @data[:error_description]
      end
    end

    # <p>Indicates that the client is making the request too frequently and is more than the
    #       service can handle. </p>
    class SlowDownException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSOOIDC::Types::SlowDownException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Single error code. For this exception the value will be <code>slow_down</code>.</p>
      def error
        @data[:error]
      end

      # <p>Human-readable text providing additional information, used to assist the client developer
      #       in understanding the error that occurred.</p>
      def error_description
        @data[:error_description]
      end
    end

    # <p>Indicates that the client is not currently authorized to make the request. This can happen
    #       when a <code>clientId</code> is not issued for a public client.</p>
    class UnauthorizedClientException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSOOIDC::Types::UnauthorizedClientException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Single error code. For this exception the value will be
      #       <code>unauthorized_client</code>.</p>
      def error
        @data[:error]
      end

      # <p>Human-readable text providing additional information, used to assist the client developer
      #       in understanding the error that occurred.</p>
      def error_description
        @data[:error_description]
      end
    end

    # <p>Indicates that the grant type in the request is not supported by the service.</p>
    class UnsupportedGrantTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSOOIDC::Types::UnsupportedGrantTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Single error code. For this exception the value will be
      #         <code>unsupported_grant_type</code>.</p>
      def error
        @data[:error]
      end

      # <p>Human-readable text providing additional information, used to assist the client developer
      #       in understanding the error that occurred.</p>
      def error_description
        @data[:error_description]
      end
    end
  end
end
