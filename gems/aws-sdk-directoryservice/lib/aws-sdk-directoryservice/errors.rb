# frozen_string_literal: true

# This is generated code!

module Aws::DirectoryService
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::DirectoryService::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DirectoryService::Errors::ServiceError
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
  # * {ADAssessmentLimitExceededException}
  # * {AccessDeniedException}
  # * {AuthenticationFailedException}
  # * {CertificateAlreadyExistsException}
  # * {CertificateDoesNotExistException}
  # * {CertificateInUseException}
  # * {CertificateLimitExceededException}
  # * {ClientException}
  # * {DirectoryAlreadyInRegionException}
  # * {DirectoryAlreadySharedException}
  # * {DirectoryDoesNotExistException}
  # * {DirectoryInDesiredStateException}
  # * {DirectoryLimitExceededException}
  # * {DirectoryNotSharedException}
  # * {DirectoryUnavailableException}
  # * {DisableAlreadyInProgressException}
  # * {DomainControllerLimitExceededException}
  # * {EnableAlreadyInProgressException}
  # * {EntityAlreadyExistsException}
  # * {EntityDoesNotExistException}
  # * {IncompatibleSettingsException}
  # * {InsufficientPermissionsException}
  # * {InvalidCertificateException}
  # * {InvalidClientAuthStatusException}
  # * {InvalidLDAPSStatusException}
  # * {InvalidNextTokenException}
  # * {InvalidParameterException}
  # * {InvalidPasswordException}
  # * {InvalidTargetException}
  # * {IpRouteLimitExceededException}
  # * {NoAvailableCertificateException}
  # * {OrganizationsException}
  # * {RegionLimitExceededException}
  # * {ServiceException}
  # * {ShareLimitExceededException}
  # * {SnapshotLimitExceededException}
  # * {TagLimitExceededException}
  # * {UnsupportedOperationException}
  # * {UnsupportedSettingsException}
  # * {UserDoesNotExistException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>A directory assessment is automatically created when you create a hybrid directory.
    #             There are two types of assessments: <code>CUSTOMER</code> and <code>SYSTEM</code>. Your
    #             Amazon Web Services account has a limit of 100 <code>CUSTOMER</code> directory assessments.</p>
    #          <p>If you attempt to create a hybrid directory; and you already have 100
    #                 <code>CUSTOMER</code> directory assessments;, you will encounter an error. Delete
    #             assessments to free up capacity before trying again.</p>
    #          <p>You can request an increase to your <code>CUSTOMER</code> directory assessment quota
    #             by contacting customer support or delete existing CUSTOMER directory assessments; to
    #             free up capacity.</p>
    class ADAssessmentLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::ADAssessmentLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>You do not have sufficient access to perform this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>An authentication error occurred.</p>
    class AuthenticationFailedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::AuthenticationFailedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The textual message for the exception.</p>
      def message
        @data[:message]
      end

      # <p>The identifier of the request that caused the exception.</p>
      def request_id
        @data[:request_id]
      end
    end

    # <p>The certificate has already been registered into the system.</p>
    class CertificateAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::CertificateAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The certificate is not present in the system for describe or deregister activities.</p>
    class CertificateDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::CertificateDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The certificate is being used for the LDAP security connection and cannot be removed
    #       without disabling LDAP security.</p>
    class CertificateInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::CertificateInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The certificate could not be added because the certificate limit has been reached.</p>
    class CertificateLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::CertificateLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>A client exception has occurred.</p>
    class ClientException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::ClientException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The Region you specified is the same Region where the Managed Microsoft AD directory was created.
    #       Specify a different Region and try again.</p>
    class DirectoryAlreadyInRegionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::DirectoryAlreadyInRegionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The specified directory has already been shared with this Amazon Web Services account.</p>
    class DirectoryAlreadySharedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::DirectoryAlreadySharedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The specified directory does not exist in the system.</p>
    class DirectoryDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::DirectoryDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p> The directory is already updated to desired update type settings. </p>
    class DirectoryInDesiredStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::DirectoryInDesiredStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The maximum number of directories in the region has been reached. You can use the
    #                 <a>GetDirectoryLimits</a> operation to determine your directory limits in
    #             the region.</p>
    class DirectoryLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::DirectoryLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The specified directory has not been shared with this Amazon Web Services account.</p>
    class DirectoryNotSharedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::DirectoryNotSharedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The specified directory is unavailable.</p>
    class DirectoryUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::DirectoryUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>A disable operation for CA enrollment policy is already in progress for this directory.</p>
    class DisableAlreadyInProgressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::DisableAlreadyInProgressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The maximum allowed number of domain controllers per directory was exceeded. The
    #       default limit per directory is 20 domain controllers.</p>
    class DomainControllerLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::DomainControllerLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>An enable operation for CA enrollment policy is already in progress for this directory.</p>
    class EnableAlreadyInProgressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::EnableAlreadyInProgressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The specified entity already exists.</p>
    class EntityAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::EntityAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The specified entity could not be found.</p>
    class EntityDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::EntityDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The specified directory setting is not compatible with other settings.</p>
    class IncompatibleSettingsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::IncompatibleSettingsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The account does not have sufficient permission to perform the operation.</p>
    class InsufficientPermissionsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::InsufficientPermissionsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The certificate PEM that was provided has incorrect encoding.</p>
    class InvalidCertificateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::InvalidCertificateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>Client authentication is already enabled.</p>
    class InvalidClientAuthStatusException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::InvalidClientAuthStatusException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The LDAP activities could not be performed because they are limited by the LDAPS
    #       status.</p>
    class InvalidLDAPSStatusException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::InvalidLDAPSStatusException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The <code>NextToken</code> value is not valid.</p>
    class InvalidNextTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::InvalidNextTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>One or more parameters are not valid.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The new password provided by the user does not meet the password complexity
    #             requirements defined in your directory.</p>
    class InvalidPasswordException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::InvalidPasswordException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The specified shared target is not valid.</p>
    class InvalidTargetException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::InvalidTargetException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The maximum allowed number of IP addresses was exceeded. The default limit is 100 IP
    #          address blocks.</p>
    class IpRouteLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::IpRouteLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>Client authentication setup could not be completed because at least one valid certificate
    #       must be registered in the system.</p>
    class NoAvailableCertificateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::NoAvailableCertificateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>Exception encountered while trying to access your Amazon Web Services organization.</p>
    class OrganizationsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::OrganizationsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>You have reached the limit for maximum number of simultaneous Region replications per
    #       directory.</p>
    class RegionLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::RegionLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>An exception has occurred in Directory Service.</p>
    class ServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::ServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The maximum number of Amazon Web Services accounts that you can share with this directory has been
    #             reached.</p>
    class ShareLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::ShareLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The maximum number of manual snapshots for the directory has been reached. You can
    #             use the <a>GetSnapshotLimits</a> operation to determine the snapshot limits
    #             for a directory.</p>
    class SnapshotLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::SnapshotLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The maximum allowed number of tags was exceeded.</p>
    class TagLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::TagLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The operation is not supported.</p>
    class UnsupportedOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::UnsupportedOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The specified directory setting is not supported.</p>
    class UnsupportedSettingsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::UnsupportedSettingsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end

    # <p>The user provided a username that does not exist in your directory.</p>
    class UserDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DirectoryService::Types::UserDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def request_id
        @data[:request_id]
      end
    end
  end
end
