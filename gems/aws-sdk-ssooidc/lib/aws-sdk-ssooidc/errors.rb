# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SSOOIDC
  module Errors

    extend Aws::Errors::DynamicErrors

    class AccessDeniedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SSOOIDC::Types::AccessDeniedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error
        @data[:error]
      end

      # @return [String]
      def error_description
        @data[:error_description]
      end

    end

    class AuthorizationPendingException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SSOOIDC::Types::AuthorizationPendingException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error
        @data[:error]
      end

      # @return [String]
      def error_description
        @data[:error_description]
      end

    end

    class ExpiredTokenException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SSOOIDC::Types::ExpiredTokenException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error
        @data[:error]
      end

      # @return [String]
      def error_description
        @data[:error_description]
      end

    end

    class InternalServerException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SSOOIDC::Types::InternalServerException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error
        @data[:error]
      end

      # @return [String]
      def error_description
        @data[:error_description]
      end

    end

    class InvalidClientException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SSOOIDC::Types::InvalidClientException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error
        @data[:error]
      end

      # @return [String]
      def error_description
        @data[:error_description]
      end

    end

    class InvalidClientMetadataException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SSOOIDC::Types::InvalidClientMetadataException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error
        @data[:error]
      end

      # @return [String]
      def error_description
        @data[:error_description]
      end

    end

    class InvalidGrantException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SSOOIDC::Types::InvalidGrantException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error
        @data[:error]
      end

      # @return [String]
      def error_description
        @data[:error_description]
      end

    end

    class InvalidRequestException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SSOOIDC::Types::InvalidRequestException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error
        @data[:error]
      end

      # @return [String]
      def error_description
        @data[:error_description]
      end

    end

    class InvalidScopeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SSOOIDC::Types::InvalidScopeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error
        @data[:error]
      end

      # @return [String]
      def error_description
        @data[:error_description]
      end

    end

    class SlowDownException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SSOOIDC::Types::SlowDownException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error
        @data[:error]
      end

      # @return [String]
      def error_description
        @data[:error_description]
      end

    end

    class UnauthorizedClientException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SSOOIDC::Types::UnauthorizedClientException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error
        @data[:error]
      end

      # @return [String]
      def error_description
        @data[:error_description]
      end

    end

    class UnsupportedGrantTypeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SSOOIDC::Types::UnsupportedGrantTypeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error
        @data[:error]
      end

      # @return [String]
      def error_description
        @data[:error_description]
      end

    end

  end
end
