# frozen_string_literal: true

# This is generated code!

module Aws::CloudTrail
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::CloudTrail::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudTrail::Errors::ServiceError
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
  # * {AccountHasOngoingImportException}
  # * {AccountNotFoundException}
  # * {AccountNotRegisteredException}
  # * {AccountRegisteredException}
  # * {CannotDelegateManagementAccountException}
  # * {ChannelARNInvalidException}
  # * {ChannelAlreadyExistsException}
  # * {ChannelExistsForEDSException}
  # * {ChannelMaxLimitExceededException}
  # * {ChannelNotFoundException}
  # * {CloudTrailARNInvalidException}
  # * {CloudTrailAccessNotEnabledException}
  # * {CloudTrailInvalidClientTokenIdException}
  # * {CloudWatchLogsDeliveryUnavailableException}
  # * {ConcurrentModificationException}
  # * {ConflictException}
  # * {DelegatedAdminAccountLimitExceededException}
  # * {EventDataStoreARNInvalidException}
  # * {EventDataStoreAlreadyExistsException}
  # * {EventDataStoreFederationEnabledException}
  # * {EventDataStoreHasOngoingImportException}
  # * {EventDataStoreMaxLimitExceededException}
  # * {EventDataStoreNotFoundException}
  # * {EventDataStoreTerminationProtectedException}
  # * {GenerateResponseException}
  # * {ImportNotFoundException}
  # * {InactiveEventDataStoreException}
  # * {InactiveQueryException}
  # * {InsightNotEnabledException}
  # * {InsufficientDependencyServiceAccessPermissionException}
  # * {InsufficientEncryptionPolicyException}
  # * {InsufficientIAMAccessPermissionException}
  # * {InsufficientS3BucketPolicyException}
  # * {InsufficientSnsTopicPolicyException}
  # * {InvalidCloudWatchLogsLogGroupArnException}
  # * {InvalidCloudWatchLogsRoleArnException}
  # * {InvalidDateRangeException}
  # * {InvalidEventCategoryException}
  # * {InvalidEventDataStoreCategoryException}
  # * {InvalidEventDataStoreStatusException}
  # * {InvalidEventSelectorsException}
  # * {InvalidHomeRegionException}
  # * {InvalidImportSourceException}
  # * {InvalidInsightSelectorsException}
  # * {InvalidKmsKeyIdException}
  # * {InvalidLookupAttributesException}
  # * {InvalidMaxResultsException}
  # * {InvalidNextTokenException}
  # * {InvalidParameterCombinationException}
  # * {InvalidParameterException}
  # * {InvalidQueryStatementException}
  # * {InvalidQueryStatusException}
  # * {InvalidS3BucketNameException}
  # * {InvalidS3PrefixException}
  # * {InvalidSnsTopicNameException}
  # * {InvalidSourceException}
  # * {InvalidTagParameterException}
  # * {InvalidTimeRangeException}
  # * {InvalidTokenException}
  # * {InvalidTrailNameException}
  # * {KmsException}
  # * {KmsKeyDisabledException}
  # * {KmsKeyNotFoundException}
  # * {MaxConcurrentQueriesException}
  # * {MaximumNumberOfTrailsExceededException}
  # * {NoManagementAccountSLRExistsException}
  # * {NotOrganizationManagementAccountException}
  # * {NotOrganizationMasterAccountException}
  # * {OperationNotPermittedException}
  # * {OrganizationNotInAllFeaturesModeException}
  # * {OrganizationsNotInUseException}
  # * {QueryIdNotFoundException}
  # * {ResourceARNNotValidException}
  # * {ResourceNotFoundException}
  # * {ResourcePolicyNotFoundException}
  # * {ResourcePolicyNotValidException}
  # * {ResourceTypeNotSupportedException}
  # * {S3BucketDoesNotExistException}
  # * {ServiceQuotaExceededException}
  # * {TagsLimitExceededException}
  # * {ThrottlingException}
  # * {TrailAlreadyExistsException}
  # * {TrailNotFoundException}
  # * {TrailNotProvidedException}
  # * {UnsupportedOperationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>
    #          You do not have sufficient access to perform this action.
    #       </p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p> This exception is thrown when you start a new import and a previous import is still in
    #          progress. </p>
    class AccountHasOngoingImportException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::AccountHasOngoingImportException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the specified account is not found or not part of an
    #          organization.</p>
    class AccountNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::AccountNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the specified account is not registered as the CloudTrail delegated administrator.</p>
    class AccountNotRegisteredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::AccountNotRegisteredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the account is already registered as the CloudTrail
    #          delegated administrator.</p>
    class AccountRegisteredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::AccountRegisteredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the management account of an organization is registered as
    #          the CloudTrail delegated administrator.</p>
    class CannotDelegateManagementAccountException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::CannotDelegateManagementAccountException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the specified value of <code>ChannelARN</code> is not
    #          valid.</p>
    class ChannelARNInvalidException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::ChannelARNInvalidException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #          This exception is thrown when the provided channel already exists.
    #       </p>
    class ChannelAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::ChannelAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the specified event data store cannot yet be deleted because it 
    #          is in use by a channel.</p>
    class ChannelExistsForEDSException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::ChannelExistsForEDSException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #          This exception is thrown when the maximum number of channels limit is exceeded.
    #       </p>
    class ChannelMaxLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::ChannelMaxLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when CloudTrail cannot find the specified channel.</p>
    class ChannelNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::ChannelNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when an operation is called with an ARN that is not valid.</p>
    #          <p>The following is the format of a trail ARN: <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
    #          </p>
    #          <p>The following is the format of an event data store ARN:
    #          <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>
    #          </p>
    #          <p>The following is the format of a dashboard ARN: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>
    #          </p>
    #          <p>The following is the format of a channel ARN:
    #          <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>
    #          </p>
    class CloudTrailARNInvalidException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::CloudTrailARNInvalidException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when trusted access has not been enabled between CloudTrail and Organizations. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_how-to-enable-disable-trusted-access">How to enable or disable trusted access</a> in the <i>Organizations User Guide</i> and <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/creating-an-organizational-trail-prepare.html">Prepare For Creating a Trail For Your Organization</a> in the <i>CloudTrail User Guide</i>.</p>
    class CloudTrailAccessNotEnabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::CloudTrailAccessNotEnabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when a call results in the <code>InvalidClientTokenId</code>
    #          error code. This can occur when you are creating or updating a trail to send notifications
    #          to an Amazon SNS topic that is in a suspended Amazon Web Services account.</p>
    class CloudTrailInvalidClientTokenIdException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::CloudTrailInvalidClientTokenIdException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>Cannot set a CloudWatch Logs delivery for this Region.</p>
    class CloudWatchLogsDeliveryUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::CloudWatchLogsDeliveryUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #          You are trying to update a resource when another request is in progress. Allow sufficient wait time for the previous request to complete, then retry your request. 
    #       </p>
    class ConcurrentModificationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::ConcurrentModificationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the specified resource is not ready for an operation. This
    #          can occur when you try to run an operation on a resource before CloudTrail has time
    #          to fully load the resource, or because another operation is modifying the resource. If this exception occurs, wait a few minutes, and then try the
    #          operation again.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the maximum number of CloudTrail delegated
    #          administrators is reached.</p>
    class DelegatedAdminAccountLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::DelegatedAdminAccountLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified event data store ARN is not valid or does not map to an event data store
    #          in your account.</p>
    class EventDataStoreARNInvalidException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::EventDataStoreARNInvalidException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>An event data store with that name already exists.</p>
    class EventDataStoreAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::EventDataStoreAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #         You cannot delete the event data store because Lake query federation is enabled. To delete the event data store, run the <code>DisableFederation</code> operation to 
    #          disable Lake query federation on the event data store. 
    #       </p>
    class EventDataStoreFederationEnabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::EventDataStoreFederationEnabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p> This exception is thrown when you try to update or delete an event data store that
    #          currently has an import in progress. </p>
    class EventDataStoreHasOngoingImportException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::EventDataStoreHasOngoingImportException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>Your account has used the maximum number of event data stores.</p>
    class EventDataStoreMaxLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::EventDataStoreMaxLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified event data store was not found.</p>
    class EventDataStoreNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::EventDataStoreNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>The event data store cannot be deleted because termination protection is enabled for
    #          it.</p>
    class EventDataStoreTerminationProtectedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::EventDataStoreTerminationProtectedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #          This exception is thrown when a valid query could not be generated for the provided prompt. 
    #       </p>
    class GenerateResponseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::GenerateResponseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p> The specified import was not found. </p>
    class ImportNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::ImportNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>The event data store is inactive.</p>
    class InactiveEventDataStoreException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InactiveEventDataStoreException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified query cannot be canceled because it is in the <code>FINISHED</code>,
    #             <code>FAILED</code>, <code>TIMED_OUT</code>, or <code>CANCELLED</code> state.</p>
    class InactiveQueryException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InactiveQueryException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>If you run <code>GetInsightSelectors</code> on a trail or event data store that does not have Insights
    #          events enabled, the operation throws the exception
    #          <code>InsightNotEnabledException</code>.</p>
    class InsightNotEnabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InsightNotEnabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the IAM identity that is used to create
    #          the organization resource lacks one or more required permissions for creating an
    #          organization resource in a required service.</p>
    class InsufficientDependencyServiceAccessPermissionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InsufficientDependencyServiceAccessPermissionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>For the <code>CreateTrail</code>
    #             <code>PutInsightSelectors</code>, <code>UpdateTrail</code>, <code>StartQuery</code>, and <code>StartImport</code> operations, this exception is thrown 
    #          when the policy on the S3 bucket or KMS key does
    #          not have sufficient permissions for the operation.</p>
    #          <p>For all other operations, this exception is thrown when the policy for the KMS key does
    #          not have sufficient permissions for the operation.</p>
    class InsufficientEncryptionPolicyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InsufficientEncryptionPolicyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>The task can't be completed because you are signed in with an account that lacks permissions to view or create a service-linked role. Sign in with an account that has the required permissions and then try again.</p>
    class InsufficientIAMAccessPermissionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InsufficientIAMAccessPermissionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the policy on the S3 bucket is not sufficient.</p>
    class InsufficientS3BucketPolicyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InsufficientS3BucketPolicyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the policy on the Amazon SNS topic is not
    #          sufficient.</p>
    class InsufficientSnsTopicPolicyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InsufficientSnsTopicPolicyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the provided CloudWatch Logs log group is not
    #          valid.</p>
    class InvalidCloudWatchLogsLogGroupArnException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidCloudWatchLogsLogGroupArnException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the provided role is not valid.</p>
    class InvalidCloudWatchLogsRoleArnException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidCloudWatchLogsRoleArnException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>A date range for the query was specified that is not valid. Be sure that the start time
    #          is chronologically before the end time. For more information about writing a query, see
    #             <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-create-edit-query.html">Create or edit a query</a> in the <i>CloudTrail User Guide</i>.</p>
    class InvalidDateRangeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidDateRangeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>Occurs if an event category that is not valid is specified as a value of
    #             <code>EventCategory</code>.</p>
    class InvalidEventCategoryException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidEventCategoryException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when event categories of specified event data stores are not
    #          valid.</p>
    class InvalidEventDataStoreCategoryException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidEventDataStoreCategoryException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>The event data store is not in a status that supports the operation.</p>
    class InvalidEventDataStoreStatusException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidEventDataStoreStatusException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the <code>PutEventSelectors</code> operation is called
    #          with a number of event selectors, advanced event selectors, or data resources that is not
    #          valid. The combination of event selectors or advanced event selectors and data resources is
    #          not valid. A trail can have up to 5 event selectors. If a trail uses advanced event
    #          selectors, a maximum of 500 total values for all conditions in all advanced event selectors
    #          is allowed. A trail is limited to 250 data resources. These data resources can be
    #          distributed across event selectors, but the overall total cannot exceed 250.</p>
    #          <p>You can:</p>
    #          <ul>
    #             <li>
    #                <p>Specify a valid number of event selectors (1 to 5) for a trail.</p>
    #             </li>
    #             <li>
    #                <p>Specify a valid number of data resources (1 to 250) for an event selector. The
    #                limit of number of resources on an individual event selector is configurable up to
    #                250. However, this upper limit is allowed only if the total number of data resources
    #                does not exceed 250 across all event selectors for a trail.</p>
    #             </li>
    #             <li>
    #                <p>Specify up to 500 values for all conditions in all advanced event selectors for a
    #                trail.</p>
    #             </li>
    #             <li>
    #                <p>Specify a valid value for a parameter. For example, specifying the
    #                   <code>ReadWriteType</code> parameter with a value of <code>read-only</code> is not
    #                valid.</p>
    #             </li>
    #          </ul>
    class InvalidEventSelectorsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidEventSelectorsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when an operation is called on a trail from a Region other than
    #          the Region in which the trail was created.</p>
    class InvalidHomeRegionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidHomeRegionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p> This exception is thrown when the provided source S3 bucket is not valid for import.
    #       </p>
    class InvalidImportSourceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidImportSourceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>For <code>PutInsightSelectors</code>, this exception is thrown when the formatting or syntax of the <code>InsightSelectors</code> JSON statement is not
    #          valid, or the specified <code>InsightType</code> in the <code>InsightSelectors</code> statement is not
    #          valid. Valid values for <code>InsightType</code> are <code>ApiCallRateInsight</code> and <code>ApiErrorRateInsight</code>. To enable Insights on an event data store, the destination event data store specified by the 
    #          <code>InsightsDestination</code> parameter must log Insights events and the source event data 
    #          store specified by the <code>EventDataStore</code> parameter must log management events.</p>
    #          <p>For <code>UpdateEventDataStore</code>, this exception is thrown if Insights are enabled on the event data store and the updated 
    #          advanced event selectors are not compatible with the configured <code>InsightSelectors</code>. 
    #          If the <code>InsightSelectors</code> includes an <code>InsightType</code> of <code>ApiCallRateInsight</code>, the source event data store must log <code>write</code> management events. 
    #          If the <code>InsightSelectors</code> includes an <code>InsightType</code> of <code>ApiErrorRateInsight</code>, the source event data store must log management events.</p>
    class InvalidInsightSelectorsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidInsightSelectorsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the KMS key ARN is not valid.</p>
    class InvalidKmsKeyIdException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidKmsKeyIdException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>Occurs when a lookup attribute is specified that is not valid.</p>
    class InvalidLookupAttributesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidLookupAttributesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown if the limit specified is not valid.</p>
    class InvalidMaxResultsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidMaxResultsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>A token that is not valid, or a token that was previously used in a request with
    #          different parameters. This exception is thrown if the token is not valid.</p>
    class InvalidNextTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidNextTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the combination of parameters provided is not
    #          valid.</p>
    class InvalidParameterCombinationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidParameterCombinationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request includes a parameter that is not valid.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>The query that was submitted has validation errors, or uses incorrect syntax or
    #          unsupported keywords. For more information about writing a query, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-create-edit-query.html">Create or edit a query</a> in the <i>CloudTrail User
    #             Guide</i>.</p>
    class InvalidQueryStatementException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidQueryStatementException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>The query status is not valid for the operation.</p>
    class InvalidQueryStatusException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidQueryStatusException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the provided S3 bucket name is not valid.</p>
    class InvalidS3BucketNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidS3BucketNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the provided S3 prefix is not valid.</p>
    class InvalidS3PrefixException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidS3PrefixException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the provided SNS topic name is not valid.</p>
    class InvalidSnsTopicNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidSnsTopicNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the specified value of <code>Source</code> is not valid.</p>
    class InvalidSourceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidSourceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the specified tag key or values are not valid. It can also
    #          occur if there are duplicate tags or too many tags on the resource.</p>
    class InvalidTagParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidTagParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>Occurs if the timestamp values are not valid. Either the start time occurs after the end
    #          time, or the time range is outside the range of possible values.</p>
    class InvalidTimeRangeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidTimeRangeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>Reserved for future use.</p>
    class InvalidTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the provided trail name is not valid. Trail names must
    #          meet the following requirements:</p>
    #          <ul>
    #             <li>
    #                <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores
    #                (_), or dashes (-)</p>
    #             </li>
    #             <li>
    #                <p>Start with a letter or number, and end with a letter or number</p>
    #             </li>
    #             <li>
    #                <p>Be between 3 and 128 characters</p>
    #             </li>
    #             <li>
    #                <p>Have no adjacent periods, underscores or dashes. Names like
    #                   <code>my-_namespace</code> and <code>my--namespace</code> are not valid.</p>
    #             </li>
    #             <li>
    #                <p>Not be in IP address format (for example, 192.168.5.4)</p>
    #             </li>
    #          </ul>
    class InvalidTrailNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::InvalidTrailNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when there is an issue with the specified KMS
    #          key and the trail or event data store can't be updated.</p>
    class KmsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::KmsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is no longer in use.</p>
    class KmsKeyDisabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::KmsKeyDisabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the KMS key does not exist, when the S3
    #          bucket and the KMS key are not in the same Region, or when the KMS key associated with the Amazon SNS topic either does not exist or is
    #          not in the same Region.</p>
    class KmsKeyNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::KmsKeyNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>You are already running the maximum number of concurrent queries. The maximum number of concurrent queries is 10. Wait a minute for some
    #          queries to finish, and then run the query again.</p>
    class MaxConcurrentQueriesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::MaxConcurrentQueriesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the maximum number of trails is reached.</p>
    class MaximumNumberOfTrailsExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::MaximumNumberOfTrailsExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p> This exception is thrown when the management account does not have a service-linked
    #          role. </p>
    class NoManagementAccountSLRExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::NoManagementAccountSLRExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p> This exception is thrown when the account making the request is not the organization's
    #          management account. </p>
    class NotOrganizationManagementAccountException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::NotOrganizationManagementAccountException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the Amazon Web Services account making the request to
    #          create or update an organization trail or event data store is not the management account
    #          for an organization in Organizations. For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/creating-an-organizational-trail-prepare.html">Prepare For Creating a Trail For Your Organization</a> or <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-lake-organizations.html">Organization event data stores</a>.</p>
    class NotOrganizationMasterAccountException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::NotOrganizationMasterAccountException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the requested operation is not permitted.</p>
    class OperationNotPermittedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::OperationNotPermittedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when Organizations is not configured to support all
    #          features. All features must be enabled in Organizations to support creating an
    #          organization trail or event data store.</p>
    class OrganizationNotInAllFeaturesModeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::OrganizationNotInAllFeaturesModeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the request is made from an Amazon Web Services account
    #          that is not a member of an organization. To make this request, sign in using the
    #          credentials of an account that belongs to an organization.</p>
    class OrganizationsNotInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::OrganizationsNotInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>The query ID does not exist or does not map to a query.</p>
    class QueryIdNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::QueryIdNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #          This exception is thrown when the provided resource does not exist, or the ARN format of the resource is not valid.
    #       </p>
    #          <p>The following is the format of an event data store ARN:
    #          <code>arn:aws:cloudtrail:us-east-2:123456789012:eventdatastore/EXAMPLE-f852-4e8f-8bd1-bcf6cEXAMPLE</code>
    #          </p>
    #          <p>The following is the format of a dashboard ARN: <code>arn:aws:cloudtrail:us-east-1:123456789012:dashboard/exampleDash</code>
    #          </p>
    #          <p>The following is the format of a channel ARN:
    #          <code>arn:aws:cloudtrail:us-east-2:123456789012:channel/01234567890</code>
    #          </p>
    class ResourceARNNotValidException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::ResourceARNNotValidException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the specified resource is not found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #          This exception is thrown when the specified resource policy is not found.
    #       </p>
    class ResourcePolicyNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::ResourcePolicyNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #          This exception is thrown when the resouce-based policy has syntax errors, or contains a principal that is not valid.
    #       </p>
    class ResourcePolicyNotValidException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::ResourcePolicyNotValidException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the specified resource type is not supported by CloudTrail.</p>
    class ResourceTypeNotSupportedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::ResourceTypeNotSupportedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the specified S3 bucket does not exist.</p>
    class S3BucketDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::S3BucketDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #    This exception is thrown when the quota is exceeded. For information about CloudTrail quotas, see <a href="https://docs.aws.amazon.com/general/latest/gr/ct.html#limits_cloudtrail">Service quotas</a> 
    #    in the <i>Amazon Web Services General Reference</i>.
    # </p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>The number of tags per trail, event data store, dashboard, or channel has exceeded the permitted amount. Currently, the limit is
    #          50.</p>
    class TagsLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::TagsLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>
    #          This exception is thrown when the request rate exceeds the limit. 
    #       </p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the specified trail already exists.</p>
    class TrailAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::TrailAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the trail with the given name is not found.</p>
    class TrailNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::TrailNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is no longer in use.</p>
    class TrailNotProvidedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::TrailNotProvidedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>This exception is thrown when the requested operation is not supported.</p>
    class UnsupportedOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudTrail::Types::UnsupportedOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Brief description of the exception returned by the request.</p>
      def message
        @data[:message]
      end
    end
  end
end
