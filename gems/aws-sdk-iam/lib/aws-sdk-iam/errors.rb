# frozen_string_literal: true

# This is generated code!

module Aws::IAM
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::IAM::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::IAM::Errors::ServiceError
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
  # * {AccountNotManagementOrDelegatedAdministratorException}
  # * {CallerIsNotManagementAccountException}
  # * {ConcurrentModificationException}
  # * {CredentialReportExpiredException}
  # * {CredentialReportNotPresentException}
  # * {CredentialReportNotReadyException}
  # * {DeleteConflictException}
  # * {DuplicateCertificateException}
  # * {DuplicateSSHPublicKeyException}
  # * {EntityAlreadyExistsException}
  # * {EntityTemporarilyUnmodifiableException}
  # * {FeatureDisabledException}
  # * {FeatureEnabledException}
  # * {InvalidAuthenticationCodeException}
  # * {InvalidCertificateException}
  # * {InvalidInputException}
  # * {InvalidPublicKeyException}
  # * {InvalidUserTypeException}
  # * {KeyPairMismatchException}
  # * {LimitExceededException}
  # * {MalformedCertificateException}
  # * {MalformedPolicyDocumentException}
  # * {NameConflictException}
  # * {NoSuchEntityException}
  # * {OpenIdIdpCommunicationErrorException}
  # * {OrganizationNotFoundException}
  # * {OrganizationNotInAllFeaturesModeException}
  # * {PasswordPolicyViolationException}
  # * {PolicyEvaluationException}
  # * {PolicyNotAttachableException}
  # * {ReportGenerationLimitExceededException}
  # * {RoleModifiedException}
  # * {RoleTemplateDisabledException}
  # * {ServiceAccessNotEnabledException}
  # * {ServiceFailureException}
  # * {ServiceNotSupportedException}
  # * {UnmodifiableEntityException}
  # * {UnrecognizedPublicKeyEncodingException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The request was rejected because the account making the request is not the management
    #       account or delegated administrator account for <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_root-user.html#id_root-user-access-management">centralized root
    #         access</a>.</p>
    class AccountNotManagementOrDelegatedAdministratorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::AccountNotManagementOrDelegatedAdministratorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the account making the request is not the management
    #       account for the organization.</p>
    class CallerIsNotManagementAccountException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::CallerIsNotManagementAccountException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because multiple requests to change this object were submitted
    #       simultaneously. Wait a few minutes and submit your request again.</p>
    class ConcurrentModificationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::ConcurrentModificationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the most recent credential report has expired. To
    #       generate a new credential report, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GenerateCredentialReport.html">GenerateCredentialReport</a>. For more information about credential report expiration,
    #       see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Getting
    #         credential reports</a> in the <i>IAM User Guide</i>.</p>
    class CredentialReportExpiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::CredentialReportExpiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the credential report does not exist. To generate a
    #       credential report, use <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GenerateCredentialReport.html">GenerateCredentialReport</a>.</p>
    class CredentialReportNotPresentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::CredentialReportNotPresentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the credential report is still being generated.</p>
    class CredentialReportNotReadyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::CredentialReportNotReadyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because it attempted to delete a resource that has attached
    #       subordinate entities. The error message describes these entities.</p>
    class DeleteConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::DeleteConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the same certificate is associated with an IAM user in
    #       the account.</p>
    class DuplicateCertificateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::DuplicateCertificateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the SSH public key is already associated with the
    #       specified IAM user.</p>
    class DuplicateSSHPublicKeyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::DuplicateSSHPublicKeyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because it attempted to create a resource that already
    #       exists.</p>
    class EntityAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::EntityAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because it referenced an entity that is temporarily unmodifiable,
    #       such as a user name that was deleted and then recreated. The error indicates that the request
    #       is likely to succeed if you try again after waiting several minutes. The error message
    #       describes the entity.</p>
    class EntityTemporarilyUnmodifiableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::EntityTemporarilyUnmodifiableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request failed because outbound identity federation is already disabled for your Amazon Web Services account. You cannot disable the feature multiple times</p>
    class FeatureDisabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::FeatureDisabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request failed because outbound identity federation is already enabled for your Amazon Web Services account. You
    #       cannot enable the feature multiple times. To fetch the current configuration (including the unique issuer URL), use the <code>GetOutboundWebIdentityFederationInfo</code> operation.</p>
    class FeatureEnabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::FeatureEnabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the authentication code was not recognized. The error
    #       message describes the specific error.</p>
    class InvalidAuthenticationCodeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::InvalidAuthenticationCodeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the certificate is invalid.</p>
    class InvalidCertificateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::InvalidCertificateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because an invalid or out-of-range value was supplied for an
    #       input parameter.</p>
    class InvalidInputException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::InvalidInputException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the public key is malformed or otherwise invalid.</p>
    class InvalidPublicKeyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::InvalidPublicKeyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the type of user for the transaction was
    #       incorrect.</p>
    class InvalidUserTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::InvalidUserTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the public key certificate and the private key do not
    #       match.</p>
    class KeyPairMismatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::KeyPairMismatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because it attempted to create resources beyond the current
    #       Amazon Web Services account limits. The error message describes the limit exceeded.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the certificate was malformed or expired. The error
    #       message describes the specific error.</p>
    class MalformedCertificateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::MalformedCertificateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the policy document was malformed. The error message
    #       describes the specific error.</p>
    class MalformedPolicyDocumentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::MalformedPolicyDocumentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the resulting role name conflicts with an existing role
    #       in the account.</p>
    class NameConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::NameConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because it referenced a resource entity that does not exist. The
    #       error message describes the resource.</p>
    class NoSuchEntityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::NoSuchEntityException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request failed because IAM cannot connect to the OpenID Connect identity provider
    #       URL.</p>
    class OpenIdIdpCommunicationErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::OpenIdIdpCommunicationErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because no organization is associated with your account.</p>
    class OrganizationNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::OrganizationNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because your organization does not have All features enabled. For
    #       more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set">Available feature sets</a> in the <i>Organizations User
    #       Guide</i>.</p>
    class OrganizationNotInAllFeaturesModeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::OrganizationNotInAllFeaturesModeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the provided password did not meet the requirements
    #       imposed by the account password policy.</p>
    class PasswordPolicyViolationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::PasswordPolicyViolationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request failed because a provided policy could not be successfully evaluated. An
    #       additional detailed message indicates the source of the failure.</p>
    class PolicyEvaluationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::PolicyEvaluationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request failed because Amazon Web Services service role policies can only be attached to the
    #       service-linked role for that service.</p>
    class PolicyNotAttachableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::PolicyNotAttachableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request failed because the maximum number of concurrent requests for this account are
    #       already running.</p>
    class ReportGenerationLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::ReportGenerationLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because someone modified the role template while the service was
    #       creating the role. Wait a few minutes and try the request again.</p>
    class RoleModifiedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::RoleModifiedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the specified role template is disabled. A disabled
    #       role template cannot be used to create new roles. Contact your administrator to enable the
    #       role template, or use a different role template.</p>
    class RoleTemplateDisabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::RoleTemplateDisabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because trusted access is not enabled for IAM in Organizations. For details, see IAM and Organizations in the <i>Organizations User Guide</i>.</p>
    class ServiceAccessNotEnabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::ServiceAccessNotEnabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request processing has failed because of an unknown error, exception or
    #       failure.</p>
    class ServiceFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::ServiceFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified service does not support service-specific credentials.</p>
    class ServiceNotSupportedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::ServiceNotSupportedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because service-linked roles are protected Amazon Web Services resources. Only
    #       the service that depends on the service-linked role can modify or delete the role on your
    #       behalf. The error message includes the name of the service that depends on this service-linked
    #       role. You must request the change through that service.</p>
    class UnmodifiableEntityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::UnmodifiableEntityException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was rejected because the public key encoding format is unsupported or
    #       unrecognized.</p>
    class UnrecognizedPublicKeyEncodingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IAM::Types::UnrecognizedPublicKeyEncodingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
