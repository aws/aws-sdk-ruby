# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM

  # When IAM returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::IAM::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all IAM errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::IAM::Errors::ServiceError
  #       # rescues all IAM API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {AccountNotManagementOrDelegatedAdministratorException}
  # * {CallerIsNotManagementAccountException}
  # * {ConcurrentModificationException}
  #    * `ConcurrentModification` may generated to use instead of this class name.
  # * {CredentialReportExpiredException}
  #    * `ReportExpired` may generated to use instead of this class name.
  # * {CredentialReportNotPresentException}
  #    * `ReportNotPresent` may generated to use instead of this class name.
  # * {CredentialReportNotReadyException}
  #    * `ReportInProgress` may generated to use instead of this class name.
  # * {DeleteConflictException}
  #    * `DeleteConflict` may generated to use instead of this class name.
  # * {DuplicateCertificateException}
  #    * `DuplicateCertificate` may generated to use instead of this class name.
  # * {DuplicateSSHPublicKeyException}
  #    * `DuplicateSSHPublicKey` may generated to use instead of this class name.
  # * {EntityAlreadyExistsException}
  #    * `EntityAlreadyExists` may generated to use instead of this class name.
  # * {EntityTemporarilyUnmodifiableException}
  #    * `EntityTemporarilyUnmodifiable` may generated to use instead of this class name.
  # * {InvalidAuthenticationCodeException}
  #    * `InvalidAuthenticationCode` may generated to use instead of this class name.
  # * {InvalidCertificateException}
  #    * `InvalidCertificate` may generated to use instead of this class name.
  # * {InvalidInputException}
  #    * `InvalidInput` may generated to use instead of this class name.
  # * {InvalidPublicKeyException}
  #    * `InvalidPublicKey` may generated to use instead of this class name.
  # * {InvalidUserTypeException}
  #    * `InvalidUserType` may generated to use instead of this class name.
  # * {KeyPairMismatchException}
  #    * `KeyPairMismatch` may generated to use instead of this class name.
  # * {LimitExceededException}
  #    * `LimitExceeded` may generated to use instead of this class name.
  # * {MalformedCertificateException}
  #    * `MalformedCertificate` may generated to use instead of this class name.
  # * {MalformedPolicyDocumentException}
  #    * `MalformedPolicyDocument` may generated to use instead of this class name.
  # * {NoSuchEntityException}
  #    * `NoSuchEntity` may generated to use instead of this class name.
  # * {OpenIdIdpCommunicationErrorException}
  #    * `OpenIdIdpCommunicationError` may generated to use instead of this class name.
  # * {OrganizationNotFoundException}
  # * {OrganizationNotInAllFeaturesModeException}
  # * {PasswordPolicyViolationException}
  #    * `PasswordPolicyViolation` may generated to use instead of this class name.
  # * {PolicyEvaluationException}
  #    * `PolicyEvaluation` may generated to use instead of this class name.
  # * {PolicyNotAttachableException}
  #    * `PolicyNotAttachable` may generated to use instead of this class name.
  # * {ReportGenerationLimitExceededException}
  #    * `ReportGenerationLimitExceeded` may generated to use instead of this class name.
  # * {ServiceAccessNotEnabledException}
  # * {ServiceFailureException}
  #    * `ServiceFailure` may generated to use instead of this class name.
  # * {ServiceNotSupportedException}
  #    * `NotSupportedService` may generated to use instead of this class name.
  # * {UnmodifiableEntityException}
  #    * `UnmodifiableEntity` may generated to use instead of this class name.
  # * {UnrecognizedPublicKeyEncodingException}
  #    * `UnrecognizedPublicKeyEncoding` may generated to use instead of this class name.
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  # Some existing error classes may use a different class name than documented.
  module Errors

    extend Aws::Errors::DynamicErrors

    class AccountNotManagementOrDelegatedAdministratorException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::AccountNotManagementOrDelegatedAdministratorException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CallerIsNotManagementAccountException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::CallerIsNotManagementAccountException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # `ConcurrentModification` may be used instead of the class name documented below.
    class ConcurrentModificationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::ConcurrentModificationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `ReportExpired` may be used instead of the class name documented below.
    class CredentialReportExpiredException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::CredentialReportExpiredException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `ReportNotPresent` may be used instead of the class name documented below.
    class CredentialReportNotPresentException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::CredentialReportNotPresentException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `ReportInProgress` may be used instead of the class name documented below.
    class CredentialReportNotReadyException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::CredentialReportNotReadyException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `DeleteConflict` may be used instead of the class name documented below.
    class DeleteConflictException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::DeleteConflictException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `DuplicateCertificate` may be used instead of the class name documented below.
    class DuplicateCertificateException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::DuplicateCertificateException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `DuplicateSSHPublicKey` may be used instead of the class name documented below.
    class DuplicateSSHPublicKeyException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::DuplicateSSHPublicKeyException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `EntityAlreadyExists` may be used instead of the class name documented below.
    class EntityAlreadyExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::EntityAlreadyExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `EntityTemporarilyUnmodifiable` may be used instead of the class name documented below.
    class EntityTemporarilyUnmodifiableException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::EntityTemporarilyUnmodifiableException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `InvalidAuthenticationCode` may be used instead of the class name documented below.
    class InvalidAuthenticationCodeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::InvalidAuthenticationCodeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `InvalidCertificate` may be used instead of the class name documented below.
    class InvalidCertificateException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::InvalidCertificateException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `InvalidInput` may be used instead of the class name documented below.
    class InvalidInputException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::InvalidInputException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `InvalidPublicKey` may be used instead of the class name documented below.
    class InvalidPublicKeyException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::InvalidPublicKeyException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `InvalidUserType` may be used instead of the class name documented below.
    class InvalidUserTypeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::InvalidUserTypeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `KeyPairMismatch` may be used instead of the class name documented below.
    class KeyPairMismatchException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::KeyPairMismatchException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `LimitExceeded` may be used instead of the class name documented below.
    class LimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::LimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `MalformedCertificate` may be used instead of the class name documented below.
    class MalformedCertificateException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::MalformedCertificateException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `MalformedPolicyDocument` may be used instead of the class name documented below.
    class MalformedPolicyDocumentException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::MalformedPolicyDocumentException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `NoSuchEntity` may be used instead of the class name documented below.
    class NoSuchEntityException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::NoSuchEntityException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `OpenIdIdpCommunicationError` may be used instead of the class name documented below.
    class OpenIdIdpCommunicationErrorException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::OpenIdIdpCommunicationErrorException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class OrganizationNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::OrganizationNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class OrganizationNotInAllFeaturesModeException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::OrganizationNotInAllFeaturesModeException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # `PasswordPolicyViolation` may be used instead of the class name documented below.
    class PasswordPolicyViolationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::PasswordPolicyViolationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `PolicyEvaluation` may be used instead of the class name documented below.
    class PolicyEvaluationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::PolicyEvaluationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `PolicyNotAttachable` may be used instead of the class name documented below.
    class PolicyNotAttachableException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::PolicyNotAttachableException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `ReportGenerationLimitExceeded` may be used instead of the class name documented below.
    class ReportGenerationLimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::ReportGenerationLimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class ServiceAccessNotEnabledException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::ServiceAccessNotEnabledException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # `ServiceFailure` may be used instead of the class name documented below.
    class ServiceFailureException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::ServiceFailureException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `NotSupportedService` may be used instead of the class name documented below.
    class ServiceNotSupportedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::ServiceNotSupportedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `UnmodifiableEntity` may be used instead of the class name documented below.
    class UnmodifiableEntityException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::UnmodifiableEntityException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    # `UnrecognizedPublicKeyEncoding` may be used instead of the class name documented below.
    class UnrecognizedPublicKeyEncodingException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::IAM::Types::UnrecognizedPublicKeyEncodingException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

  end
end
