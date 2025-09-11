# frozen_string_literal: true

# This is generated code!

module Aws::CognitoIdentityProvider
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::CognitoIdentityProvider::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CognitoIdentityProvider::Errors::ServiceError
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
  # * {AliasExistsException}
  # * {CodeDeliveryFailureException}
  # * {CodeMismatchException}
  # * {ConcurrentModificationException}
  # * {DeviceKeyExistsException}
  # * {DuplicateProviderException}
  # * {EnableSoftwareTokenMFAException}
  # * {ExpiredCodeException}
  # * {FeatureUnavailableInTierException}
  # * {ForbiddenException}
  # * {GroupExistsException}
  # * {InternalErrorException}
  # * {InvalidEmailRoleAccessPolicyException}
  # * {InvalidLambdaResponseException}
  # * {InvalidOAuthFlowException}
  # * {InvalidParameterException}
  # * {InvalidPasswordException}
  # * {InvalidSmsRoleAccessPolicyException}
  # * {InvalidSmsRoleTrustRelationshipException}
  # * {InvalidUserPoolConfigurationException}
  # * {LimitExceededException}
  # * {MFAMethodNotFoundException}
  # * {ManagedLoginBrandingExistsException}
  # * {NotAuthorizedException}
  # * {PasswordHistoryPolicyViolationException}
  # * {PasswordResetRequiredException}
  # * {PreconditionNotMetException}
  # * {RefreshTokenReuseException}
  # * {ResourceNotFoundException}
  # * {ScopeDoesNotExistException}
  # * {SoftwareTokenMFANotFoundException}
  # * {TermsExistsException}
  # * {TierChangeNotAllowedException}
  # * {TooManyFailedAttemptsException}
  # * {TooManyRequestsException}
  # * {UnauthorizedException}
  # * {UnexpectedLambdaException}
  # * {UnsupportedIdentityProviderException}
  # * {UnsupportedOperationException}
  # * {UnsupportedTokenTypeException}
  # * {UnsupportedUserStateException}
  # * {UserImportInProgressException}
  # * {UserLambdaValidationException}
  # * {UserNotConfirmedException}
  # * {UserNotFoundException}
  # * {UserPoolAddOnNotEnabledException}
  # * {UserPoolTaggingException}
  # * {UsernameExistsException}
  # * {WebAuthnChallengeNotFoundException}
  # * {WebAuthnClientMismatchException}
  # * {WebAuthnConfigurationMissingException}
  # * {WebAuthnCredentialNotSupportedException}
  # * {WebAuthnNotEnabledException}
  # * {WebAuthnOriginNotAllowedException}
  # * {WebAuthnRelyingPartyMismatchException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>This exception is thrown when a user tries to confirm the account with an email
    #             address or phone number that has already been supplied as an alias for a different user
    #             profile. This exception indicates that an account with this email address or phone
    #             already exists in a user pool that you've configured to use email address or phone
    #             number as a sign-in alias.</p>
    class AliasExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::AliasExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message that Amazon Cognito sends to the user when the value of an alias attribute is
      #             already linked to another user profile.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when a verification code fails to deliver
    #             successfully.</p>
    class CodeDeliveryFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::CodeDeliveryFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message sent when a verification code fails to deliver successfully.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown if the provided code doesn't match what the server was
    #             expecting.</p>
    class CodeMismatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::CodeMismatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided when the code mismatch exception is thrown.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown if two or more modifications are happening
    #             concurrently.</p>
    class ConcurrentModificationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::ConcurrentModificationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message provided when the concurrent exception is thrown.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when a user attempts to confirm a device with a device key
    #             that already exists.</p>
    class DeviceKeyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::DeviceKeyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the provider is already supported by the user
    #             pool.</p>
    class DuplicateProviderException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::DuplicateProviderException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when there is a code mismatch and the service fails to
    #             configure the software token TOTP multi-factor authentication (MFA).</p>
    class EnableSoftwareTokenMFAException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::EnableSoftwareTokenMFAException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown if a code has expired.</p>
    class ExpiredCodeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::ExpiredCodeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when the expired code exception is thrown.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when a feature you attempted to configure isn't
    #             available in your current feature plan.</p>
    class FeatureUnavailableInTierException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::FeatureUnavailableInTierException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when WAF doesn't allow your request based on a web
    #             ACL that's associated with your user pool.</p>
    class ForbiddenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::ForbiddenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when WAF doesn't allow your request based on a web ACL
      #             that's associated with your user pool.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when Amazon Cognito encounters a group that already exists in the user
    #             pool.</p>
    class GroupExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::GroupExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when Amazon Cognito encounters an internal error.</p>
    class InternalErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::InternalErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when Amazon Cognito throws an internal error exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when Amazon Cognito isn't allowed to use your email identity. HTTP
    #             status code: 400.</p>
    class InvalidEmailRoleAccessPolicyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::InvalidEmailRoleAccessPolicyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when you have an unverified email address or the identity policy
      #             isn't set on an email address that Amazon Cognito can access.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when Amazon Cognito encounters an invalid Lambda response.</p>
    class InvalidLambdaResponseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::InvalidLambdaResponseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when Amazon Cognito throws an invalid Lambda response
      #             exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the specified OAuth flow is not valid.</p>
    class InvalidOAuthFlowException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::InvalidOAuthFlowException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the Amazon Cognito service encounters an invalid
    #             parameter.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when the Amazon Cognito service throws an invalid parameter
      #             exception.</p>
      def message
        @data[:message]
      end

      # <p>The reason code of the exception.</p>
      def reason_code
        @data[:reason_code]
      end
    end

    # <p>This exception is thrown when Amazon Cognito encounters an invalid password.</p>
    class InvalidPasswordException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::InvalidPasswordException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when Amazon Cognito throws an invalid user password exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is returned when the role provided for SMS configuration doesn't have
    #             permission to publish using Amazon SNS.</p>
    class InvalidSmsRoleAccessPolicyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::InvalidSmsRoleAccessPolicyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when the invalid SMS role access policy exception is
      #             thrown.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the trust relationship is not valid for the role
    #             provided for SMS configuration. This can happen if you don't trust
    #                 <code>cognito-idp.amazonaws.com</code> or the external ID provided in the role does
    #             not match what is provided in the SMS configuration for the user pool.</p>
    class InvalidSmsRoleTrustRelationshipException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::InvalidSmsRoleTrustRelationshipException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when the role trust relationship for the SMS message is not
      #             valid.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the user pool configuration is not valid.</p>
    class InvalidUserPoolConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::InvalidUserPoolConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when the user pool configuration is not valid.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when a user exceeds the limit for a requested Amazon Web Services
    #             resource.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when Amazon Cognito throws a limit exceeded exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when Amazon Cognito can't find a multi-factor authentication
    #             (MFA) method.</p>
    class MFAMethodNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::MFAMethodNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when Amazon Cognito throws an MFA method not found
      #             exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when you attempt to apply a managed login branding style to
    #             an app client that already has an assigned style.</p>
    class ManagedLoginBrandingExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::ManagedLoginBrandingExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when a user isn't authorized.</p>
    class NotAuthorizedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::NotAuthorizedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when the Amazon Cognito service returns a not authorized exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The message returned when a user's new password matches a previous password and
    #             doesn't comply with the password-history policy.</p>
    class PasswordHistoryPolicyViolationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::PasswordHistoryPolicyViolationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when a password reset is required.</p>
    class PasswordResetRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::PasswordResetRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when a password reset is required.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when a precondition is not met.</p>
    class PreconditionNotMetException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::PreconditionNotMetException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when a precondition is not met.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is throw when your application requests token refresh with a refresh
    #             token that has been invalidated by refresh-token rotation.</p>
    class RefreshTokenReuseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::RefreshTokenReuseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the Amazon Cognito service can't find the requested
    #             resource.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when the Amazon Cognito service returns a resource not found
      #             exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the specified scope doesn't exist.</p>
    class ScopeDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::ScopeDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the software token time-based one-time password (TOTP)
    #             multi-factor authentication (MFA) isn't activated for the user pool.</p>
    class SoftwareTokenMFANotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::SoftwareTokenMFANotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Terms document names must be unique to the app client. This exception is thrown when
    #             you attempt to create terms documents with a duplicate <code>TermsName</code>.</p>
    class TermsExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::TermsExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when you've attempted to change your feature plan but
    #             the operation isn't permitted.</p>
    class TierChangeNotAllowedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::TierChangeNotAllowedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the user has made too many failed attempts for a given
    #             action, such as sign-in.</p>
    class TooManyFailedAttemptsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::TooManyFailedAttemptsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when Amazon Cognito returns a <code>TooManyFailedAttempts</code>
      #             exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the user has made too many requests for a given
    #             operation.</p>
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when the Amazon Cognito service returns a too many requests
      #             exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>Exception that is thrown when the request isn't authorized. This can happen due to an
    #             invalid access token in the request.</p>
    class UnauthorizedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::UnauthorizedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when Amazon Cognito encounters an unexpected exception with
    #             Lambda.</p>
    class UnexpectedLambdaException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::UnexpectedLambdaException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when Amazon Cognito returns an unexpected Lambda exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the specified identifier isn't supported.</p>
    class UnsupportedIdentityProviderException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::UnsupportedIdentityProviderException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Exception that is thrown when you attempt to perform an operation that isn't enabled
    #             for the user pool client.</p>
    class UnsupportedOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::UnsupportedOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Exception that is thrown when an unsupported token is passed to an operation.</p>
    class UnsupportedTokenTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::UnsupportedTokenTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request failed because the user is in an unsupported state.</p>
    class UnsupportedUserStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::UnsupportedUserStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when the user is in an unsupported state.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when you're trying to modify a user pool while a user import
    #             job is in progress for that pool.</p>
    class UserImportInProgressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::UserImportInProgressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when the user pool has an import job running.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the Amazon Cognito service encounters a user validation exception
    #             with the Lambda service.</p>
    class UserLambdaValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::UserLambdaValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when the Amazon Cognito service returns a user validation exception with
      #             the Lambda service.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when a user isn't confirmed successfully.</p>
    class UserNotConfirmedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::UserNotConfirmedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when a user isn't confirmed successfully.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when a user isn't found.</p>
    class UserNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::UserNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when a user isn't found.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when user pool add-ons aren't enabled.</p>
    class UserPoolAddOnNotEnabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::UserPoolAddOnNotEnabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when a user pool tag can't be set or updated.</p>
    class UserPoolTaggingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::UserPoolTaggingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when Amazon Cognito encounters a user name that already
    #             exists in the user pool.</p>
    class UsernameExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::UsernameExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned when Amazon Cognito throws a user name exists exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the challenge from <code>StartWebAuthn</code>
    #             registration has expired.</p>
    class WebAuthnChallengeNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::WebAuthnChallengeNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the access token is for a different client than the one
    #             in the original <code>StartWebAuthnRegistration</code> request.</p>
    class WebAuthnClientMismatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::WebAuthnClientMismatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when a user pool doesn't have a configured relying party
    #             id or a user pool domain.</p>
    class WebAuthnConfigurationMissingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::WebAuthnConfigurationMissingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when a user presents passkey credentials from an unsupported
    #             device or provider.</p>
    class WebAuthnCredentialNotSupportedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::WebAuthnCredentialNotSupportedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the passkey feature isn't enabled for the user
    #             pool.</p>
    class WebAuthnNotEnabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::WebAuthnNotEnabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the passkey credential's registration origin does not
    #             align with the user pool relying party id.</p>
    class WebAuthnOriginNotAllowedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::WebAuthnOriginNotAllowedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the given passkey credential is associated with a
    #             different relying party ID than the user pool relying party ID.</p>
    class WebAuthnRelyingPartyMismatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoIdentityProvider::Types::WebAuthnRelyingPartyMismatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
