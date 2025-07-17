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
  #    * This error class is not used. `ConcurrentModification` is used during parsing instead.
  # * {CredentialReportExpiredException}
  #    * This error class is not used. `ReportExpired` is used during parsing instead.
  # * {CredentialReportNotPresentException}
  #    * This error class is not used. `ReportNotPresent` is used during parsing instead.
  # * {CredentialReportNotReadyException}
  #    * This error class is not used. `ReportInProgress` is used during parsing instead.
  # * {DeleteConflictException}
  #    * This error class is not used. `DeleteConflict` is used during parsing instead.
  # * {DuplicateCertificateException}
  #    * This error class is not used. `DuplicateCertificate` is used during parsing instead.
  # * {DuplicateSSHPublicKeyException}
  #    * This error class is not used. `DuplicateSSHPublicKey` is used during parsing instead.
  # * {EntityAlreadyExistsException}
  #    * This error class is not used. `EntityAlreadyExists` is used during parsing instead.
  # * {EntityTemporarilyUnmodifiableException}
  #    * This error class is not used. `EntityTemporarilyUnmodifiable` is used during parsing instead.
  # * {InvalidAuthenticationCodeException}
  #    * This error class is not used. `InvalidAuthenticationCode` is used during parsing instead.
  # * {InvalidCertificateException}
  #    * This error class is not used. `InvalidCertificate` is used during parsing instead.
  # * {InvalidInputException}
  #    * This error class is not used. `InvalidInput` is used during parsing instead.
  # * {InvalidPublicKeyException}
  #    * This error class is not used. `InvalidPublicKey` is used during parsing instead.
  # * {InvalidUserTypeException}
  #    * This error class is not used. `InvalidUserType` is used during parsing instead.
  # * {KeyPairMismatchException}
  #    * This error class is not used. `KeyPairMismatch` is used during parsing instead.
  # * {LimitExceededException}
  #    * This error class is not used. `LimitExceeded` is used during parsing instead.
  # * {MalformedCertificateException}
  #    * This error class is not used. `MalformedCertificate` is used during parsing instead.
  # * {MalformedPolicyDocumentException}
  #    * This error class is not used. `MalformedPolicyDocument` is used during parsing instead.
  # * {NoSuchEntityException}
  #    * This error class is not used. `NoSuchEntity` is used during parsing instead.
  # * {OpenIdIdpCommunicationErrorException}
  #    * This error class is not used. `OpenIdIdpCommunicationError` is used during parsing instead.
  # * {OrganizationNotFoundException}
  # * {OrganizationNotInAllFeaturesModeException}
  # * {PasswordPolicyViolationException}
  #    * This error class is not used. `PasswordPolicyViolation` is used during parsing instead.
  # * {PolicyEvaluationException}
  #    * This error class is not used. `PolicyEvaluation` is used during parsing instead.
  # * {PolicyNotAttachableException}
  #    * This error class is not used. `PolicyNotAttachable` is used during parsing instead.
  # * {ReportGenerationLimitExceededException}
  #    * This error class is not used. `ReportGenerationLimitExceeded` is used during parsing instead.
  # * {ServiceAccessNotEnabledException}
  # * {ServiceFailureException}
  #    * This error class is not used. `ServiceFailure` is used during parsing instead.
  # * {ServiceNotSupportedException}
  #    * This error class is not used. `NotSupportedService` is used during parsing instead.
  # * {UnmodifiableEntityException}
  #    * This error class is not used. `UnmodifiableEntity` is used during parsing instead.
  # * {UnrecognizedPublicKeyEncodingException}
  #    * This error class is not used. `UnrecognizedPublicKeyEncoding` is used during parsing instead.
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `ConcurrentModification` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `ReportExpired` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `ReportNotPresent` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `ReportInProgress` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `DeleteConflict` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `DuplicateCertificate` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `DuplicateSSHPublicKey` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `EntityAlreadyExists` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `EntityTemporarilyUnmodifiable` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidAuthenticationCode` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidCertificate` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidInput` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidPublicKey` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidUserType` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `KeyPairMismatch` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `LimitExceeded` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `MalformedCertificate` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `MalformedPolicyDocument` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `NoSuchEntity` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `OpenIdIdpCommunicationError` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `PasswordPolicyViolation` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `PolicyEvaluation` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `PolicyNotAttachable` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `ReportGenerationLimitExceeded` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `ServiceFailure` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `NotSupportedService` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `UnmodifiableEntity` instead.
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

    # @deprecated This error class is not used during parsing.
    #   Please use `UnrecognizedPublicKeyEncoding` instead.
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
